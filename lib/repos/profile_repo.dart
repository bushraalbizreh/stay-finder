// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:stayfinder/datasources/remote_data_source/profile_remote_data_source.dart';
import 'package:stayfinder/models/profile_model.dart';

class ProfileRepo {
  ProfileRemoteDataSource profileRemoteDataSource;
  ProfileRepo({required this.profileRemoteDataSource});

  Future<ProfileModel?> getProfile() async {
    return await profileRemoteDataSource.getProfile();
  }
}
