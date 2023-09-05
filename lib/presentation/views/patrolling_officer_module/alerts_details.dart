import 'package:crime_reporting_app/app/index.dart';
import 'package:crime_reporting_app/presentation/common/app_button.dart';

class AlertsDetailView extends StatelessWidget {
  const AlertsDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorManager.primary,
        title: Utils.popinSemBoldText(
          'Crime Report ',
          color: ColorManager.white,
          fontSize: 20.sp,
        ),
        actions: [
          IconButton(
              onPressed: () {
                Get.toNamed(Routes.sendReportToSspRoute);
              },
              icon: Icon(
                Icons.send,
                color: ColorManager.white,
              ))
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(18.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            20.spaceY,
            Utils.popinBoldText(
              'User Name',
              fontSize: 20.sp,
            ),
            20.spaceY,
            Utils.popinBoldText(
              'Crime Title',
              fontSize: 20.sp,
            ),
            20.spaceY,
            Container(
              decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(10.r)),
              child: Padding(
                padding: EdgeInsets.all(8.w),
                child: Utils.popinBoldText(
                  'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may',
                  fontSize: 20.sp,
                ),
              ),
            ),
            20.spaceY,
            Placeholder(
              fallbackHeight: 200.h,
              fallbackWidth: 200.w,
            ),
            20.spaceY,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 170.w,
                  child: AppButton(
                    text: 'Get Direction',
                    onPress: () {},
                  ),
                ),
                SizedBox(
                  width: 170.w,
                  child: AppButton(
                    text: 'Live Chat',
                    onPress: () {
                      Get.toNamed(Routes.liveChatRoute);
                    },
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
