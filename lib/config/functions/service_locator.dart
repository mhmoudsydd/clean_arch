import 'package:clean_architecture/config/api_service/api_service.dart';
import 'package:clean_architecture/modules/home/data/data_source/home_local_data_source.dart';
import 'package:clean_architecture/modules/home/data/data_source/home_remote_data_source.dart';
import 'package:clean_architecture/modules/home/data/repos/home_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
final getIt = GetIt.instance;

void dioServiceLocator(){
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
}

void setupServiceLocator() {
      dioServiceLocator();

   getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(
      homeLocalDataSource: HomeLocalDataSourceImpl(),
      homeRemoteDataSource: HomeRemoteDataSourceImpl(
        apiService:getIt.get<ApiService>(),
      ),
    ),
  );
}

