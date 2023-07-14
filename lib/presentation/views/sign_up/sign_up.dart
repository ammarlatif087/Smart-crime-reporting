import 'package:crime_reporting_app/app/index.dart';
import 'package:crime_reporting_app/presentation/view_models/auth_view_model.dart';

import '../../common/app_button.dart';
import '../../common/textfield_widget.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<AuthViewModel>(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorManager.primary,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                  color: ColorManager.white,
                  borderRadius: BorderRadius.circular(20.r),
                ),
                // height: 700.h,
                width: 1.sw,

                child: Padding(
                  padding: EdgeInsets.all(18.r),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Utils.popinBoldText(
                        'Sign Up',
                        fontSize: 30.sp,
                      ),
                      20.spaceY,
                      CircleAvatar(
                        radius: 30.r,
                        child: const Icon(Icons.person),
                      ),
                      20.spaceY,
                      DropdownButtonFormField<String>(
                        value: viewModel.selectedUser.isEmpty
                            ? null
                            : viewModel.selectedUser,
                        items: viewModel.users
                            .asMap()
                            .entries
                            .skip(1) // Exclude the first item
                            .map((entry) {
                          // final int index = entry.key + 1;
                          final String type = entry.value;
                          return DropdownMenuItem(
                            value: type,
                            child: Text(type),
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
                        ),
                      ),
                      20.spaceY,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 150.w,
                            child: TextfieldWidget(
                              controller: viewModel.emailController,
                              keyboardType: TextInputType.emailAddress,
                              hintText: 'First Name',
                              prefixIcon: Icon(
                                Icons.person,
                                color: ColorManager.darkGrey,
                              ),
                              validator: (value) => value!.isValidEmail()
                                  ? null
                                  : 'Invalid Email',
                              onChange: (newValue) =>
                                  viewModel.onEmailChange(newValue),
                            ),
                          ),
                          SizedBox(
                            width: 150.w,
                            child: TextfieldWidget(
                              controller: viewModel.emailController,
                              keyboardType: TextInputType.emailAddress,
                              hintText: 'Last Name',
                              prefixIcon: Icon(
                                Icons.person,
                                color: ColorManager.darkGrey,
                              ),
                              validator: (value) => value!.isValidEmail()
                                  ? null
                                  : 'Invalid Email',
                              onChange: (newValue) =>
                                  viewModel.onEmailChange(newValue),
                            ),
                          ),
                        ],
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
                        onChange: (newValue) =>
                            viewModel.onEmailChange(newValue),
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
                      TextfieldWidget(
                        controller: viewModel.passController,
                        obscureText: viewModel.isPassObs,
                        keyboardType: TextInputType.name,
                        hintText: 'confirm your password',
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
                            return 'confirm Your passwords';
                          }
                          return null;
                        },
                      ),
                      20.spaceY,
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: 60.h,
                          decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(15.r),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.w),
                            child: Row(
                              children: [
                                Utils.popinBoldText('Upload a valid ID Card'),
                                const Spacer(),
                                Icon(
                                  Icons.image,
                                  color: ColorManager.darkGrey,
                                  size: 25.sp,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      20.spaceY,
                      Center(
                        child: AppButton(
                          text: 'Sign Up',
                          onPress: () {
                            // switch (viewModel.selectedUser) {
                            //   case 'admin':
                            //     Get.toNamed(Routes.adminDashboardRoute);
                            //     break;
                            //   case 'user':
                            //     //   Get.toNamed(Routes.adminDashboardRoute);

                            //     break;
                            //   default:
                            //     Utils.snackBar(context, 'invalid route');
                            //     // Handle other cases or show an error message
                            //     break;
                            // }
                          },
                        ),
                      ),
                      20.spaceY,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Utils.popinMedText(
                            'Already Have An Account?',
                            fontSize: 16.sp,
                          ),
                          InkWell(
                            onTap: () {
                              Get.toNamed(Routes.loginRoute);
                            },
                            child: Utils.popinMedText(
                              'Login',
                              fontSize: 18.sp,
                              color: ColorManager.primary,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
