// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';
import '../core/config/get_it.dart';
import '../core/models/user_session.dart';
import '../core/storage/secure_session_storage.dart';
import '../models/stay_model.dart';

class StaysRemoteDataSource {
  String baseUrl = "http://192.168.1.103:8000/api";
  String staysEntity = "stays";
  late Response response;
  Dio dio = getIt.get<Dio>();
  SecureSessionStorage secureSessionStorage;
  StaysRemoteDataSource({required this.secureSessionStorage});

  Future<List<StayModel>?> getAllStays() async {
    try {
      UserSession? userSession = await secureSessionStorage.getSession();

      if(userSession!=null){

        response = await dio.get(
        "$baseUrl/$staysEntity",
        options: Options(
          headers: {
            "Authorization": "Bearer ${userSession.accessToken}",
          },
        ),
      );
      if (response.statusCode == 200) {

       
        print("stays Statuscode : ${response.statusCode}");
        List<StayModel> stays = List.generate(response.data["data"].length, (
          index,
        ) {
          return StayModel.fromMap(response.data['data'][index]);
        });
        print(stays);
        return stays;
      }

      }
          } catch (e) {
      print(e);
      return null;
    }
  }
}
