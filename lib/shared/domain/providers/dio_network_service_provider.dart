import 'package:dio/dio.dart';
import 'package:plant_h/shared/data/remote/dio_network_service.dart';
import 'package:plant_h/shared/data/remote/network_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dio_network_service_provider.g.dart';

@riverpod
NetworkService networkService(NetworkServiceRef ref) {
  final dio=Dio();
  return DioNetworkService(dio);
}
