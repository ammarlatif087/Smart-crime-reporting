import 'package:crime_reporting_app/app/index.dart';
import 'package:crime_reporting_app/presentation/common/textfield_widget.dart';

import '../../common/app_button.dart';

class ShoDashBoard extends StatelessWidget {
  const ShoDashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        backgroundColor: ColorManager.primary,
        title: Utils.popinSemBoldText(
          'SHO Dashboard',
          fontSize: 24.sp,
          color: ColorManager.white,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(18.w),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Utils.popinSemBoldText('Update FIR Status'),
                          content: SizedBox(
                            height: 200.h,
                            child: Column(
                              children: [
                                const TextfieldWidget(
                                    hintText: 'Enter FIR no.'),
                                10.spaceY,
                                const TextfieldWidget(hintText: 'Remarks.'),
                                10.spaceY,
                                AppButton(
                                  text: 'Update',
                                  onPress: () {},
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: Container(
                    height: 50.h,
                    width: 115.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.r),
                      color: ColorManager.primary,
                    ),
                    child: Center(
                      child: Utils.popinSemBoldText(
                        'Update FIR status',
                        fontSize: 16.sp,
                        color: ColorManager.white,
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Get.toNamed(Routes.generateReportRoute);
                  },
                  child: Container(
                    height: 50.h,
                    width: 115.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.r),
                      color: ColorManager.primary,
                    ),
                    child: Center(
                      child: Utils.popinSemBoldText('Generate Report',
                          fontSize: 16.sp, color: ColorManager.white),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () => Get.toNamed(Routes.viewCrimeSceneRoute),
                  child: Container(
                    height: 50.h,
                    width: 110.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.r),
                      color: ColorManager.primary,
                    ),
                    child: Center(
                      child: Utils.popinSemBoldText('View Report',
                          fontSize: 16.sp, color: ColorManager.white),
                    ),
                  ),
                ),
              ],
            ),
            20.spaceY,
            Row(
              children: [
                Icon(
                  Icons.notifications_active_outlined,
                  color: ColorManager.secondary,
                ),
                20.spaceX,
                Utils.popinSemBoldText(
                  'Emergency Alerts',
                  color: ColorManager.primary,
                  fontSize: 24.sp,
                )
              ],
            ),
            20.spaceY,
            Expanded(
              child: ListView.separated(
                itemCount: 16,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    elevation: 8,
                    child: ListTile(
                      onTap: () {
                        Get.toNamed(Routes.alertsDetialsRoute);
                      },
                      leading: Icon(
                        Icons.notification_important_sharp,
                        color: ColorManager.buttonRed,
                      ),
                      title: Utils.popinSemBoldText(
                        'Name',
                        fontSize: 18.sp,
                      ),
                      subtitle: Utils.popinSemBoldText(
                        'Crime Type',
                        fontSize: 16.sp,
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
      ),
    );
  }
}
