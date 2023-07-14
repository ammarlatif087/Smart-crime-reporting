import 'package:crime_reporting_app/app/index.dart';
import 'package:crime_reporting_app/presentation/common/app_bar.dart';
import 'package:crime_reporting_app/presentation/common/app_button.dart';

class VerifyOfficerView extends StatelessWidget {
  const VerifyOfficerView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: buildAppBar(title: 'Verify Police Officers'),
          body: Padding(
            padding: EdgeInsets.all(16.r),
            child: Column(
              children: [
                Expanded(
                  child: ListView.separated(
                    shrinkWrap: true,
                    itemCount: 8,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        elevation: 8,
                        color: ColorManager.white,
                        child: Padding(
                          padding: EdgeInsets.all(16.r),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CircleAvatar(
                                    radius: 30.r,
                                    backgroundImage:
                                        const AssetImage(AppImages.logo),
                                  ),
                                  20.spaceX,
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Utils.popinBoldText(
                                        'User Name',
                                        fontSize: 20.sp,
                                      ),
                                      Utils.popinBoldText(
                                        'Role Name',
                                        fontSize: 16.sp,
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  TextButton(
                                    onPressed: () {
                                      showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return AlertDialog(
                                            title: Utils.popinSemBoldText(
                                              'More Details',
                                              fontSize: 20.sp,
                                            ),
                                            content: SizedBox(
                                              height: 400.h,
                                              child: Column(
                                                children: [
                                                  CircleAvatar(
                                                    radius: 30.r,
                                                    backgroundImage:
                                                        const AssetImage(
                                                            AppImages.logo),
                                                  ),
                                                  Utils.popinBoldText(
                                                    'User Name',
                                                    fontSize: 20.sp,
                                                  ),
                                                  Utils.popinBoldText(
                                                    'Role Name',
                                                    fontSize: 16.sp,
                                                  ),
                                                  Utils.popinBoldText(
                                                    'email@gmail.com',
                                                    fontSize: 16.sp,
                                                  ),
                                                  SizedBox(
                                                    width: 200.w,
                                                    height: 200.h,
                                                    child: Image.asset(
                                                      AppImages.idCard,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            actions: [
                                              TextButton(
                                                onPressed: () {
                                                  Navigator.of(context).pop();
                                                },
                                                child: Utils.popinSemBoldText(
                                                  'Close',
                                                ),
                                              ),
                                            ],
                                          );
                                        },
                                      );
                                    },
                                    child: Utils.popinMedText('More Details'),
                                  ),
                                ],
                              ),
                              20.spaceY,
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: 140.w,
                                    child: AppButton(
                                      text: 'Accept ',
                                      onPress: () {},
                                    ),
                                  ),
                                  SizedBox(
                                    width: 140.w,
                                    child: AppButton(
                                      text: 'Reject ',
                                      onPress: () {},
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return 10.spaceY;
                    },
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
