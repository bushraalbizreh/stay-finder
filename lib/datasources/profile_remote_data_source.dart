import 'package:dio/dio.dart';
import '../models/profile_model.dart';
import '../core/config/get_it.dart';
import '../core/models/user_session.dart';
import '../core/storage/secure_session_storage.dart';

class ProfileRemoteDataSource {
  String baseUrl = "http://192.168.1.103:8000/api";
  String staysEntity = "profile";
  late Response response;
  Dio dio = getIt.get<Dio>();
  SecureSessionStorage secureSessionStorage;
  ProfileRemoteDataSource({required this.secureSessionStorage});

  Future<ProfileModel?> getProfile() async {
    try {
      UserSession? userSession = await secureSessionStorage.getSession();

      if (userSession != null) {
        response = await dio.get(
          "$baseUrl/$staysEntity",
          options: Options(
            headers: {"Authorization": "Bearer ${userSession.accessToken}"},
          ),
        );
        if (response.statusCode == 200) {
          ProfileModel profile = ProfileModel.fromMap(response.data['data']);

          print("profile Statuscode :${response.statusCode}");

          return profile;
        }
      }
    } catch (e) {
      print(e);
      return null;
    }
  }
}
