import 'package:crime_reporting_app/presentation/common/app_button.dart';

import '../../../app/index.dart';
import '../../common/app_bar.dart';
import '../../common/textfield_widget.dart';

class SendCrimeReportView extends StatelessWidget {
  const SendCrimeReportView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: buildAppBar(
          title: 'Report Crime',
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 20.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Utils.popinSemBoldText(
                  'Crime Type',
                  fontSize: 20.sp,
                ),
                20.spaceY,
                TextfieldWidget(
                  keyboardType: TextInputType.emailAddress,
                  hintText: 'Crime Type',
                  prefixIcon: Icon(
                    Icons.warning,
                    color: ColorManager.buttonRed,
                  ),
                ),
                20.spaceY,
                TextfieldWidget(
                  keyboardType: TextInputType.emailAddress,
                  hintText: 'Location',
                  prefixIcon: Icon(
                    Icons.location_on,
                    color: ColorManager.buttonRed,
                  ),
                ),
                20.spaceY,
                Utils.popinSemBoldText(
                  'Crime Details',
                  fontSize: 20.sp,
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
                          Utils.popinBoldText('Upload Image'),
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
                const TextField(
                  maxLines: 5,
                  decoration: InputDecoration(
                    hintText: 'Enter Details',
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(),
                  ),
                ),
                50.spaceY,
                AppButton(
                  text: 'Submit Reoprt',
                  onPress: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
