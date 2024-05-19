import 'package:bookapp/core/utils/api_service.dart';
import 'package:bookapp/features/home/data/repos/home_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(
      APIService(
        Dio(),
      ),
    ),
  );
}
