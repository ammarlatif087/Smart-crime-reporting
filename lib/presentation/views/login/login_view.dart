import 'package:crime_reporting_app/presentation/common/app_button.dart';
import 'package:crime_reporting_app/presentation/view_models/auth_view_model.dart';

import '../../../app/index.dart';
import '../../common/textfield_widget.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<AuthViewModel>(context);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: ColorManager.primary,
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 1.sw,
              decoration: BoxDecoration(
                color: ColorManager.white,
                borderRadius: BorderRadius.circular(20.r),
              ),
              child: Padding(
                padding: EdgeInsets.all(18.r),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Utils.popinBoldText(
                        'LOGIN',
                        fontSize: 30.sp,
                      ),
                    ),
                    20.spaceY,
                    DropdownButtonFormField<String>(
                      value: viewModel.selectedUser.isEmpty
                          ? null
                          : viewModel.selectedUser,
                      items: viewModel.users.map((country) {
                        return DropdownMenuItem(
                          value: country,
                          child: Text(country),
                        );
                      }).toList(),
                      onChanged: (value) {
                        viewModel.selectedUser = value!;
                      },
                      borderRadius: BorderRadius.circular(20.r),
                      decoration: InputDecoration(
                        isDense: true,

                        hintText: 'Select a User Type',
                        labelStyle: TextStyleManager.popinsReg(
                          color: ColorManager.darkGrey,
                          fontSize: 16.sp,
                        ),

                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: BorderSide(
                            color: ColorManager.darkGrey,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: BorderSide(
                            color: ColorManager.darkGrey,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: BorderSide(
                            color: ColorManager.darkGrey,
                          ),
                        ),

                        // border: OutlineInputBorderRectangleStyle.getEnabledBorder(),
                        // enabledBorder:
                        // OutlineInputBorderCircularStyle.getEnabledBorder(),
                      ),
                    ),
                    20.spaceY,
                    TextfieldWidget(
                      controller: viewModel.emailController,
                      keyboardType: TextInputType.emailAddress,
                      hintText: 'email@example.com',
                      prefixIcon: Icon(
                        Icons.email,
                        color: ColorManager.darkGrey,
                      ),
                      validator: (value) =>
                          value!.isValidEmail() ? null : 'Invalid Email',
                      onChange: (newValue) => viewModel.onEmailChange(newValue),
                    ),
                    20.spaceY,
                    TextfieldWidget(
                      controller: viewModel.passController,
                      obscureText: viewModel.isPassObs,
                      keyboardType: TextInputType.name,
                      hintText: 'Enter your password',
                      prefixIcon: Icon(
                        Icons.lock,
                        color: ColorManager.darkGrey,
                      ),
                      suffixIcon: GestureDetector(
                        onTap: () => viewModel.showPassword(),
                        child: Icon(
                          viewModel.isPassObs
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: ColorManager.darkGrey,
                          size: 20.sp,
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Enter Your passwords';
                        }
                        return null;
                      },
                    ),
                    20.spaceY,
                    Center(
                        child: AppButton(
                      text: 'Login',
                      onPress: () {
                        switch (viewModel.selectedUser) {
                          case 'admin':
                            Get.toNamed(Routes.adminDashboardRoute);
                            break;
                          case 'user':
                            Get.toNamed(Routes.userDashboardRoute);
                            break;
                          case 'ssp':
                            Get.toNamed(Routes.sspDashboardRoute);
                            break;
                          case 'sho':
                            Get.toNamed(Routes.shoDashboardRoute);
                            break;
                          case 'Patrolling officer':
                            Get.toNamed(Routes.patrollingOfficerDashboardRoute);
                            break;
                          default:
                            Utils.snackBar(context, 'invalid route');
                            // Handle other cases or show an error message
                            break;
                        }
                        // final String email =
                        //     viewModel.emailController.text.trim();
                        // final String password =
                        //     viewModel.passController.text.trim();
                        // viewModel2.login(email, password);
                      },
                    )),
                    20.spaceY,
                    GestureDetector(
                      onTap: () {},
                      child: Utils.popinMedText(
                        'Forget Passwords?',
                        fontSize: 16.sp,
                      ),
                    ),
                    20.spaceY,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Utils.popinMedText(
                          'Dont Have An Account?',
                          fontSize: 14.sp,
                        ),
                        InkWell(
                          onTap: () {
                            Get.toNamed(Routes.signUpRoute);
                          },
                          child: Utils.popinMedText(
                            'Create Account',
                            fontSize: 14.sp,
                            color: ColorManager.primary,
                          ),
                        ),
                      ],
                    ),
                    20.spaceY,
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
