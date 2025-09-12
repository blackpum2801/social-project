import 'package:social/core/services/api_services.dart';
import 'package:social/data/models/request/forgot/forgot_request.dart';
import 'package:social/data/models/response/forgot/forgot_response.dart';
import 'package:social/domain/repo/forgot_repository.dart';

class ForgotRepositoryImpl extends ForgotRepository {
  final ApiServices _apiServices;
  ForgotRepositoryImpl(this._apiServices);
  @override
  Future<ForgotResponse> forgot({required ForgotRequest request}) async {
    final res = await _apiServices.callAPIForgot(request: request);
    return res;
  }
}
