import 'package:bloc/bloc.dart';

part 'loading_state.dart';

class LoadingCubit extends Cubit<LoadingState> {
  LoadingCubit() : super(InitialLoading());

  void startLoading() {
    emit(StartLoading());
  }

  void successLoading() {
    emit(SuccessLoading());
  }

  void failureLoading() {
    emit(FailureLoading());
  }
}

