import 'package:dartz/dartz.dart';
import 'package:plant_h/features/authentication/data/datasource/auth_remote_data_source.dart';
import 'package:plant_h/features/authentication/domain/repositories/auth_repository.dart';
import 'package:plant_h/shared/domain/models/user/user_model.dart';
import 'package:plant_h/shared/exceptions/http_exception.dart';

class AuthRepositoryImpl extends AuthRepository {
  final AuthDataSource authDataSource;

  AuthRepositoryImpl(this.authDataSource);

  @override
  Future<Either<AppException, User>> loginUser(
      {required String email, required String password}) {
    return authDataSource.loginUser(email: email, password: password);
  }

  @override
  Future<Either<AppException, String>> googleLoginUser() {
    return authDataSource.googleLoginUser();
  }

  @override
  Future<Either<AppException, String>> signupUser(
      {required String firstName,
      required String lastName,
      required String email,
      required String password}) {
    return authDataSource.signupUser(
        firstName: firstName,
        lastName: lastName,
        email: email,
        password: password);
  }
}
