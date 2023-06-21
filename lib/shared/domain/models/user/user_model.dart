import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable()
class User extends Equatable{
  final String id;
  final String first_name;
  final String last_name;
  final String email;
  final String password;
  final int v;
  final String token;

  const User({
    required this.id,
    required this.first_name,
    required this.last_name,
    required this.email,
    required this.password,
    required this.v,
    required this.token,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
  @override
  List<Object?> get props => [];
}