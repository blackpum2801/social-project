import 'package:social/data/models/request/forgot/forgot_request.dart';
import 'package:social/data/models/response/forgot/forgot_response.dart';

abstract class ForgotRepository {
  Future<ForgotResponse> forgot({required ForgotRequest request});
}
