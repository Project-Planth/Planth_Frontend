import 'package:dartz/dartz.dart';
import 'package:plant_h/configs/endpoints.dart';
import 'package:plant_h/configs/googleSignInServices.dart';
import 'package:plant_h/shared/data/remote/remote.dart';
import 'package:plant_h/shared/domain/models/user/user_model.dart';
import 'package:plant_h/shared/exceptions/http_exception.dart';

abstract class AuthDataSource {
  Future<Either<AppException, User>> loginUser(
      {required String email, required String password});

  Future<Either<AppException, String>> googleLoginUser();

  Future<Either<AppException, String>> signupUser(
      {required String firstName,
      required String lastName,
      required String email,
      required String password});
}

class AuthRemoteDataSource implements AuthDataSource {
  final NetworkService networkService;

  AuthRemoteDataSource(this.networkService);

  @override
  Future<Either<AppException, User>> loginUser(
      {required String email, required String password}) async {
    try {
      final eitherType = await networkService.post(
        EndPoint.login,
        data: {
          "email": email,
          "password": password,
        },
      );
      return eitherType.fold(
        (exception) {
          return Left(exception);
        },
        (response) {
          final user = User.fromJson(response.data);
          networkService.updateHeader(
            {'Authorization': user.token},
          );
          print(response.data);

          return Right(user);
        },
      );
    } catch (e) {
      return Left(
        AppException(
          message: 'Unknown error occured',
          statusCode: 1,
          identifier: '${e.toString()}\nLoginUserRemoteDataSource.loginUser',
        ),
      );
    }
  }

  @override
  Future<Either<AppException, String>> googleLoginUser() async {
    final user = await GoogleSignInService.login();
    final googleKey = await user?.authentication;
    var param = {
      "token": googleKey?.idToken,
    };
    final eitherType =
        await networkService.post(EndPoint.verifyGoogle, data: param);
    return eitherType.fold((exception) {
      return Left(exception);
    }, (r) {
      print("ojash$r");
      return Right(r.toString());
    });
  }

  @override
  Future<Either<AppException, String>> signupUser(
      {required String firstName,
      required String lastName,
      required String email,
      required String password}) async {
    var data = {
      'first_name': firstName,
      'last_name': lastName,
      'email': email,
      'password': password,
    };
    final eitherType = await networkService.post(EndPoint.signup, data: data);
    return eitherType.fold(
      (exception) => Left(exception),
      (r) => Right(
        r.toString(),
      ),
    );
  }
}
