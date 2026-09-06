// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:stayfinder/datasources/stays_remote_data_source.dart';

import '../models/stay_model.dart';

class StaysRepo {
  StaysRemoteDataSource staysRemoteDataSource;
  StaysRepo({required this.staysRemoteDataSource});

  Future<List<StayModel>?> getAllStays()async {
    return  await staysRemoteDataSource.getAllStays();
  }
}
