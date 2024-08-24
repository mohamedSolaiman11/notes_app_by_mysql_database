import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app_by_mysql_database/ui/widgets/custom_app_bar.dart';
import 'package:notes_app_by_mysql_database/utils/constants/all_text_in_app.dart';
import 'package:notes_app_by_mysql_database/utils/constants/color.dart';
import '../../../../data/services/auth_services.dart';
import '../../../../utils/constants/clear_text_editing_controller.dart';
import '../../../../utils/constants/custom_navigation.dart';
import '../../forgot_password/screen/forgot_password.dart';
import '../../signUp/widgets/custom_header_text.dart';
import '../../signUp/widgets/custom_text_fields.dart';
import '../bloc/login_cubit.dart';
import '../widgets/create_account_here_text.dart';
import '../widgets/custom_password_text_field.dart';
import '../widgets/data_in_input_decoration.dart';
import '../widgets/dont_have_account_text.dart';
import '../widgets/forgot_pass.dart';
import '../widgets/login_button.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  FocusNode emailFocusNode = FocusNode();
  FocusNode passFocusNode = FocusNode();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailController.dispose();
    passController.dispose();
    emailFocusNode.dispose();
    passFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: const CustomAppBar(text: AppText.login),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10),
                    /////////////////////////////// Header text /////////////////////////////
                    CustomTextView(
                        subtitle1: AppText.welcomeBack,
                        subtitle2: AppText.loginWithCredentials),
                    SizedBox(
                      height: size.height * .08,
                    ),
                    //////////////////////////// Email Address ///////////////////////////////
                    CustomTextFields(
                      prefixIcon: Icons.email_outlined,
                      textEditingController: emailController,
                      hint: AppText.emailAddress,
                      focusNode: emailFocusNode,
                      errorValidatorText: AppText.enterEmail,
                      isValidInput: AppText.isValidEmail,
                    ),
                    //////////////////////////// Password ///////////////////////////////
                    CustomPasswordTextFieldLogin(
                      focusNode: passFocusNode,
                      controller: passController,
                      hint: AppText.password,
                      errorValidationText: AppText.enterPass,
                      customSuffixIcon:
                          DataInInputDecoration.suffixIcon(context, () {
                        BlocProvider.of<LoginCubit>(context, listen: false)
                            .togglePasswordVisibility();
                      }),
                      obscure: context.watch<LoginCubit>().isPasswordVisible,
                    ),
                    //////////////////////////// Forgot Password ///////////////////////////////
                    CustomForgotPass(
                      onTap: () {
                        CustomNavigation.push(context, const ForgotPassword());
                      },
                    ),
                    SizedBox(height: size.height * .05),
                    const DontHaveAccountText(),
                    const CreateAccountHereText(),
                  ],
                ),
              ),
              SizedBox(height: size.height * .17),
              LoginButton(
                emailController: emailController,
                passwordController: passController,
                ontap: () {
                  if (formKey.currentState!.validate()) {
                    AuthService.login(
                        context, emailController.text, passController.text);
                    AuthService.clear
                        ? ClearTextEditingController.clear(
                            null, null, emailController, passController)
                        : const SizedBox();
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
