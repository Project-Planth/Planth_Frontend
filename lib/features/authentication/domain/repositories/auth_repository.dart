import 'package:dartz/dartz.dart';

import '../../../../shared/domain/models/user/user_model.dart';
import '../../../../shared/exceptions/http_exception.dart';

abstract class AuthRepository{
  Future<Either<AppException, User>> loginUser({required String email,required String password});
  Future<Either<AppException,String>> googleLoginUser();
  Future<Either<AppException,User>> anonymousUser();
  Future<Either<AppException,String>> signupUser({required String firstName,
    required String lastName,
    required String email,
    required String password});
}