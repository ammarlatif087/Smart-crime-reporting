import 'package:crime_reporting_app/app/index.dart';
import 'package:crime_reporting_app/presentation/common/app_button.dart';
import 'package:crime_reporting_app/presentation/view_models/send_feedback_view_model.dart';

import '../../common/app_bar.dart';

class SendFeedbackView extends StatelessWidget {
  const SendFeedbackView({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<SendFeedbackViewModel>(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: buildAppBar(title: 'Send Feedback'),
      body: Padding(
        padding: EdgeInsets.all(18.h),
        child: Column(
          children: [
            20.spaceY,
            Utils.popinSemBoldText(
              'Write a Feedback for us',
              fontSize: 20.sp,
            ),
            20.spaceY,
            DropdownButtonFormField<String>(
              value: viewModel.selectedReports.isEmpty
                  ? null
                  : viewModel.selectedReports,
              items: viewModel.reports.map((country) {
                return DropdownMenuItem(
                  value: country,
                  child: Text(country),
                );
              }).toList(),
              onChanged: (value) {
                viewModel.selectedReports = value!;
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
            const TextField(
              maxLines: 5,
              decoration: InputDecoration(
                hintText: 'Write a feedback here..',
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(),
              ),
            ),
            50.spaceY,
            AppButton(text: 'Send', onPress: () {}),
          ],
        ),
      ),
    );
  }
}
