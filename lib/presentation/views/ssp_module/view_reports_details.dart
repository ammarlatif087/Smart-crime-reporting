import 'package:crime_reporting_app/presentation/common/app_bar.dart';

import '../../../app/index.dart';

class ViewAllReportsDetails extends StatelessWidget {
  const ViewAllReportsDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: 'Report Details'),
      body: Container(
        color: ColorManager.white,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Utils.popinBoldText(
                'Case no: 473473829',
                fontSize: 18.sp,
              ),
              10.spaceY,
              Utils.popinBoldText(
                'Provision: 4f60-34',
                fontSize: 18.sp,
              ),
              10.spaceY,
              Utils.popinBoldText(
                'Case title:dummy title ',
                fontSize: 18.sp,
              ),
              10.spaceY,
              Utils.popinBoldText(
                'Name:dummy Name ',
                fontSize: 18.sp,
              ),
              10.spaceY,
              Utils.popinBoldText(
                'Cnic:dummy cnic ',
                fontSize: 18.sp,
              ),
              10.spaceY,
              Utils.popinBoldText(
                'Description: dummy dummy dummy dummy  dummy  dummy  dummy dummy dummy dummy dummy dummy dummy dummy dummy dummy ',
                fontSize: 18.sp,
              ),
              10.spaceY,
              Utils.popinBoldText(
                'Status: In progress',
                fontSize: 18.sp,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
