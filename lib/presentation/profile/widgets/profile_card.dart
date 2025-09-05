import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social/core/routes/app_router.dart';
import 'package:social/presentation/profile/bloc/profile_presenter.dart';
import 'package:social/presentation/profile/bloc/profile_state.dart';
import 'package:social/presentation/profile/widgets/profile_bottom_sheet.dart';

class ProfileCard extends StatelessWidget {
  final ProfilePresenter presenter;
  const ProfileCard({super.key, required this.presenter});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfilePresenter, ProfileState>(
      bloc: presenter,
      builder: (context, state) {
        final user = state.response?.content;
        return SizedBox(
          height: 260,
          child: Stack(
            children: [
              Container(
                height: 160,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      user?.banner ??
                          'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: 16,
                right: 16,
                child: Container(
                  width: 36,
                  height: 36,
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: 0.9),
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {
                      showAppBottomSheet(
                        context: context,
                        actions: [
                          ProfileBottomSheetAction(
                            icon: Icons.photo,
                            title: "Chọn ảnh từ thư viện",
                            onTap: () {
                              presenter.updateBanner();
                            },
                          ),
                        ],
                      );
                    },
                    icon: Icon(
                      Icons.camera_alt,
                      size: 18,
                      color: Colors.grey[700],
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: 120,
                  decoration: BoxDecoration(color: Colors.white),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: EdgeInsets.only(left: 180, top: 6, right: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8),
                              child: SizedBox(
                                height: 40,
                                child: ElevatedButton(
                                  onPressed: () {
                                    if (state.response != null) {
                                      context.router.push(
                                        ProfileEditRoute(
                                          profileResponse: state.response!,
                                        ),
                                      );
                                    }
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.grey[100],
                                    foregroundColor: Colors.black87,
                                    elevation: 0,
                                    shadowColor: Colors.transparent,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 12,
                                    ),
                                  ),
                                  child: Text(
                                    'Chỉnh sửa hồ sơ',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black87,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 8),
                          SizedBox(
                            width: 40,
                            height: 40,
                            child: IconButton(
                              padding: EdgeInsets.zero,
                              onPressed: () {},
                              icon: Icon(
                                Icons.settings,
                                color: Colors.grey[600],
                                size: 20,
                              ),
                              style: IconButton.styleFrom(
                                backgroundColor: Colors.grey[100],
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 80,
                left: 10,
                child: Stack(
                  children: [
                    CircleAvatar(
                      radius: 70,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 66,
                        backgroundImage: NetworkImage(
                          user?.avatar ??
                              'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg',
                        ),
                        backgroundColor: Colors.grey[300],
                      ),
                    ),
                    Positioned(
                      bottom: 2,
                      right: 0,
                      child: Container(
                        width: 42,
                        height: 42,
                        decoration: BoxDecoration(
                          color: Colors.grey[100],
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white, width: 2),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withValues(alpha: 0.15),
                              blurRadius: 6,
                              offset: Offset(0, 2),
                            ),
                            BoxShadow(
                              color: Colors.black.withValues(alpha: 0.08),
                              blurRadius: 12,
                              offset: Offset(0, 4),
                            ),
                          ],
                        ),
                        child: IconButton(
                          padding: EdgeInsets.zero,
                          onPressed: () {
                            showAppBottomSheet(
                              context: context,
                              actions: [
                                ProfileBottomSheetAction(
                                  icon: Icons.photo,
                                  title: "Chọn ảnh từ thư viện",
                                  onTap: () {
                                    presenter.updateAvatar();
                                  },
                                ),
                              ],
                            );
                          },
                          icon: Icon(
                            Icons.camera_alt,
                            size: 22,
                            color: Colors.grey[700],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
