// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';
import '../core/storage/app_preferences.dart';
import '../core/storage/secure_session_storage.dart';
import '../models/login_model.dart';
import '../core/config/get_it.dart';
import '../core/models/user_session.dart';

class AuthRemoteDataSource {
  SecureSessionStorage secureSessionStorage;
  AppPreferences appPreferences;

  String baseUrl = "http://192.168.1.103:8000/api";
  String loginEntity = "login";
  String logoutEntity = "logout";
  late Response response;
  AuthRemoteDataSource({
    required this.secureSessionStorage,
    required this.appPreferences,
  });
  Dio dio = getIt.get<Dio>();

  Future<bool> login({required LoginModel loginModel}) async {
    try {
      response = await dio.post(
        "$baseUrl/$loginEntity",
        data: loginModel.toMap(),
        options:

Options (
  
   headers:{
    "Content-Type": "application/json"
  } ,
 validateStatus: (_) => true,
 contentType: Headers.jsonContentType,
 responseType:ResponseType.json,
)



        //  Options(headers: {
        //   "Content-Type": "application/json"
          
        //   }),
      );
      print(
        "response Statuscode=============================================>> ${response.statusCode}",
      );
      print(loginModel.toMap());

      if (response.statusCode == 200) {
        secureSessionStorage.saveSession(
          userSession: UserSession(accessToken: response.data['token']),
        );
        return true;
      } else {
        return false;
      }
    } catch (e) {
      print(e);
      return false;
    }
  }

  Future<bool> logout() async {
    try {
      UserSession? userSession = await secureSessionStorage.getSession();
      if (userSession != null) {
        response = await dio.post(
          "$baseUrl/$logoutEntity",
          options: Options(
            headers: {"Authorization": "Bearer ${userSession.accessToken}"},
          ),
        );
        print(
          "response.statuscode=============================================>> ${response.statusCode}",
        );

        if (response.statusCode == 200) {
          secureSessionStorage.clearSession();
          print(
            "Clear Success with statuscode====================================>> ${response.statusCode}",
          );
          return true;
        }
      }
      return false;
    } catch (e) {
      print(e.toString());
      return false;
    }
  }
}
