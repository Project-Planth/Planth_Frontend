import 'package:dartz/dartz.dart';
import 'package:plant_h/features/authentication/data/datasource/auth_remote_data_source.dart';
import 'package:plant_h/features/authentication/domain/repositories/auth_repository.dart';
import 'package:plant_h/shared/domain/models/user/user_model.dart';
import 'package:plant_h/shared/exceptions/http_exception.dart';

class AuthRepositoryImpl extends AuthRepository {
  final AuthDataSource authDataSource;

  AuthRepositoryImpl(this.authDataSource);
  @override
  Future<Either<AppException, User>> loginUser({required User user}) {
    return authDataSource.loginUser(user: user);
  }
}
