part of 'loading_cubit.dart';

abstract class LoadingState {}
class InitialLoading extends LoadingState {}
class StartLoading extends LoadingState {}
class SuccessLoading extends LoadingState {}
class FailureLoading extends LoadingState {}


