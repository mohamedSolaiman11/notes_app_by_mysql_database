import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app_by_mysql_database/ui/screen/login/widgets/custom_circular_indicator.dart';
import 'package:notes_app_by_mysql_database/ui/screen/login/widgets/data_in_input_decoration.dart';
import 'package:notes_app_by_mysql_database/ui/screen/welcome/widgets/create_account_button.dart';
import 'package:notes_app_by_mysql_database/utils/constants/all_text_in_app.dart';
import 'package:notes_app_by_mysql_database/utils/constants/color.dart';
import '../../../../data/services/auth_services.dart';
import '../../../../utils/constants/clear_text_editing_controller.dart';
import '../../../../utils/constants/custom_navigation.dart';
import '../../../widgets/custom_app_bar.dart';
import '../../login/bloc/login_cubit.dart';
import '../../login/screen/login.dart';
import '../../login/widgets/custom_password_text_field.dart';
import '../widgets/custom_header_text.dart';
import '../widgets/custom_text_fields.dart';
import '../widgets/rich_text.dart';

class Signup extends StatelessWidget {
  Signup({super.key});
  final _authService = AuthService();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController confirmPassController = TextEditingController();
  FocusNode emailFocusNode = FocusNode();
  FocusNode passFocusNode = FocusNode();
  FocusNode nameFocusNode = FocusNode();
  FocusNode confirmPassFocusNode = FocusNode();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: const CustomAppBar(text: AppText.createAccount),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  CustomTextView(
                      subtitle1: AppText.letsGetToKnowYou,
                      subtitle2: AppText.enterYourDetails),
                  CustomTextFields(
                    isValidInput: true,
                    prefixIcon: Icons.person_outline_outlined,
                    textEditingController: nameController,
                    hint: AppText.displayName,
                    focusNode: nameFocusNode,
                    errorValidatorText: AppText.enterDisplayName,
                  ),
                  CustomTextFields(
                    isValidInput: true,
                    errorValidatorText: AppText.enterEmail,
                    prefixIcon: Icons.email_outlined,
                    textEditingController: emailController,
                    hint: AppText.emailAddress,
                    focusNode: emailFocusNode,
                  ),
                  CustomPasswordTextFieldLogin(
                      customSuffixIcon:
                          DataInInputDecoration.suffixIcon(context, () {
                        // context.watch<LoginCubit>().isPasswordVisible;
                        BlocProvider.of<LoginCubit>(context, listen: false)
                            .togglePasswordVisibility();
                      }),
                      focusNode: passFocusNode,
                      controller: passController,
                      hint: AppText.password,
                      errorValidationText: AppText.enterPass,
                      obscure: context.watch<LoginCubit>().isPasswordVisible),
                  CustomPasswordTextFieldLogin(
                      customSuffixIcon:
                          DataInInputDecoration.confirmSuffixIcon(context, () {
                        BlocProvider.of<LoginCubit>(context, listen: false)
                            .toggleConfirmPasswordVisibility();
                      }),
                      focusNode: confirmPassFocusNode,
                      controller: confirmPassController,
                      hint: AppText.confirmPassword,
                      errorValidationText: AppText.enterPass,
                      obscure:
                          context.watch<LoginCubit>().isConfirmPasswordVisible),
                  CustomTextView(
                      subtitle1: AppText.alreadyHaveAnAccount,
                      subtitle2: AppText.loginHere),
                  // CustomText.regularText(AppText.agreeToTerms,size: CustomTextSize.regularSize16)
                  const CustomRichText(),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          CreateAccountButton(
            ontap: () async {
              if (formKey.currentState!.validate()) {
                try {
                  await _authService.signup(
                    context,
                    nameController.text,
                    emailController.text,
                    passController.text,
                    confirmPassController.text,
                  );

                  if (AuthService.isAccountCreated) {
                    print("ok");
                    Future.delayed(const Duration(seconds: 2), () {
                      CustomNavigation.push(context, const Login());
                    });
                  } else {
                    print("no");
                    Future.delayed(const Duration(seconds: 1), () {
                      const CustomCircularIndicator();
                    });
                  }
                } catch (e) {
                  print("Signup failed: $e");
                  // تأكد من أن المستخدم يرى رسالة الخطأ بشكل صحيح هنا.
                }
              }

              ClearTextEditingController.clear(
                nameController,
                emailController,
                passController,
                confirmPassController,
              );
            },

          )

        ],
      ),
    );
  }
}
