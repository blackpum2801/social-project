import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:social/core/injector/injector.dart';
import 'package:social/data/models/response/profile/profile_response.dart';
import 'package:social/presentation/common_widget/gradient_button.dart';
import 'package:social/presentation/profile/bloc/profile_presenter.dart';
import 'package:social/presentation/profile_change/bloc/profile_change_presenter.dart';
import 'package:social/presentation/profile_change/bloc/profile_change_state.dart';
import 'package:social/presentation/profile/widgets/profile_input_field.dart';

@RoutePage()
class ProfileEditPage extends StatefulWidget {
  final ProfileResponse? profileResponse;

  const ProfileEditPage({super.key, this.profileResponse});

  @override
  State<ProfileEditPage> createState() => _ProfileEditPageState();
}

class _ProfileEditPageState extends State<ProfileEditPage> {
  final _formKey = GlobalKey<FormState>();

  final _profileChangePresenter = injector.get<ProfileChangePresenter>();
  final _profilePresenter = injector.get<ProfilePresenter>();

  late final TextEditingController _userNameController;
  late final TextEditingController _phoneController;
  late final TextEditingController _nickNameController;
  late final TextEditingController _introController;

  DateTime? _selectedDate;
  String _selectedGender = 'nam';

  @override
  void initState() {
    super.initState();
    _profileChangePresenter.syncFromProfileResponse(widget.profileResponse);
    if (widget.profileResponse != null) {
      final user = widget.profileResponse!.content;
      _userNameController = TextEditingController(text: user.name);
      _phoneController = TextEditingController(text: user.phoneNumber ?? '');
      _nickNameController = TextEditingController(text: user.nickName ?? '');
      _introController = TextEditingController(text: user.intro ?? '');

      if (user.dateOfBirth != null && user.dateOfBirth!.isNotEmpty) {
        try {
          _selectedDate = DateFormat("dd/MM/yyyy").parse(user.dateOfBirth!);
        } catch (_) {}
      }
      _selectedGender = user.gender ?? 'nam';
    } else {
      _userNameController = TextEditingController();
      _phoneController = TextEditingController();
      _nickNameController = TextEditingController();
      _introController = TextEditingController();
    }
  }

  @override
  void dispose() {
    _userNameController.dispose();
    _phoneController.dispose();
    _nickNameController.dispose();
    _introController.dispose();
    super.dispose();
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate ?? DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (picked != null) {
      setState(() => _selectedDate = picked);
    }
  }

  void _saveProfile() {
    if (_formKey.currentState!.validate()) {
      final data = {
        "name": _userNameController.text,
        "phone": _phoneController.text,
        "nick_name": _nickNameController.text,
        "date_of_birth": _selectedDate != null
            ? DateFormat("dd/MM/yyyy").format(_selectedDate!)
            : null,
        "gender": _selectedGender,
        "intro": _introController.text,
      };
      debugPrint(">>> Update Profile Payload: $data");
      _profileChangePresenter.updateMe(data);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Chỉnh sửa hồ sơ")),
      body: BlocConsumer<ProfileChangePresenter, ProfileChangeState>(
        bloc: _profileChangePresenter,
        listenWhen: (prev, curr) =>
            prev.response != curr.response || prev.status != curr.status,
        listener: (context, state) {
          if (state.status == ProfileChangeStatus.submissionSuccess) {
            // refresh lại profile sau khi edit
            _profilePresenter.getProfile();

            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text("Cập nhật thông tin thành công!"),
                backgroundColor: Colors.green,
              ),
            );
            context.router.pop();
          }
          if (state.status == ProfileChangeStatus.submissionFailure) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.errorMessage ?? "Có lỗi xảy ra")),
            );
          }
        },
        builder: (context, state) {
          return Form(
            key: _formKey,
            child: ListView(
              padding: EdgeInsets.all(20),
              children: [
                ProfileInputField(
                  label: 'Tên người dùng',
                  icon: Icons.person,
                  controller: _userNameController,
                  validator: (val) {
                    if (val == null || val.isEmpty) {
                      return "Tên người dùng là bắt buộc";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                ProfileInputField(
                  label: 'Số điện thoại',
                  icon: Icons.phone,
                  controller: _phoneController,
                ),
                const SizedBox(height: 20),
                ProfileInputField(
                  label: 'Biệt danh',
                  icon: Icons.badge,
                  controller: _nickNameController,
                ),
                const SizedBox(height: 20),
                DateSelectorField(
                  label: 'Ngày sinh',
                  selectedDate: _selectedDate,
                  onTap: () => _selectDate(context),
                ),
                const SizedBox(height: 20),
                GenderSelectorField(
                  selectedGender: _selectedGender,
                  onChanged: (val) => setState(() => _selectedGender = val!),
                ),
                const SizedBox(height: 20),
                ProfileInputField(
                  label: 'Giới thiệu',
                  icon: Icons.info_outline,
                  controller: _introController,
                  maxLines: 3,
                ),
                const SizedBox(height: 32),
                GradientButton(
                  text: 'Lưu thay đổi',
                  icon: Icons.save,
                  colors: const [Color(0xFF6C63FF), Color(0xFF9C88FF)],
                  onPressed: _saveProfile,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
