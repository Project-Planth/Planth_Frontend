import 'package:plant_h/features/authentication/data/datasource/auth_remote_data_source.dart';
import 'package:plant_h/features/authentication/data/repositories/auth_repository_impl.dart';
import 'package:plant_h/features/authentication/domain/repositories/auth_repository.dart';
import 'package:plant_h/shared/domain/providers/dio_network_service_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_provider.g.dart';

@riverpod
AuthDataSource authDataSource(AuthDataSourceRef ref) => AuthRemoteDataSource(ref.watch(networkServiceProvider));

@riverpod
AuthRepository authRepository(AuthRepositoryRef ref)=>AuthRepositoryImpl(ref.watch(authDataSourceProvider));