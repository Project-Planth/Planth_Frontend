import 'package:dartz/dartz.dart';

import '../../../../shared/domain/models/user/user_model.dart';
import '../../../../shared/exceptions/http_exception.dart';

abstract class AuthRepository{
  Future<Either<AppException, User>> loginUser({required User user});
}