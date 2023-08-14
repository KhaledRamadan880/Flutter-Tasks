part of 'api_cubit.dart';

sealed class ApiState {}

final class ApiInitial extends ApiState {}

final class GetAlbumsLoadingState extends ApiState {}

final class GetAlbumsSuccessedState extends ApiState {}

final class GetAlbumsErrorState extends ApiState {}
