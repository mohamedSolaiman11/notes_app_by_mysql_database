import 'package:bloc/bloc.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  bool _isPasswordVisible = false;
  bool _isConfirmPasswordVisible = false;
  LoginCubit() : super(Blind());

  void togglePasswordVisibility() {
    if (_isPasswordVisible) {
      emit(Blind());
    } else {
      emit(Eye());
    }
    _isPasswordVisible = !_isPasswordVisible;
  }
  void toggleConfirmPasswordVisibility() {
    if (_isConfirmPasswordVisible) {
      emit(Blind());
    } else {
      emit(Eye());
    }
    _isConfirmPasswordVisible = !_isConfirmPasswordVisible;
  }

  bool get isPasswordVisible => _isPasswordVisible;
  bool get isConfirmPasswordVisible => _isConfirmPasswordVisible;

}
