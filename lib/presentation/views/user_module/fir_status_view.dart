import 'package:crime_reporting_app/presentation/common/app_button.dart';

import '../../../app/index.dart';
import '../../common/app_bar.dart';
import '../../common/textfield_widget.dart';

class FirStatusView extends StatelessWidget {
  const FirStatusView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: buildAppBar(title: 'Check Fir Status'),
        body: Padding(
          padding: EdgeInsets.all(18.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Utils.popinSemBoldText(
                'Enter FIR Number\nTo check status',
                textAlign: TextAlign.center,
                fontSize: 20.sp,
              ),
              50.spaceY,
              TextfieldWidget(
                keyboardType: TextInputType.number,
                hintText: 'Fir Number',
                prefixIcon: Icon(
                  Icons.numbers,
                  color: ColorManager.darkGrey,
                ),
              ),
              50.spaceY,
              AppButton(
                text: 'Check',
                onPress: () {
                  _showFIRStatusDialog(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showFIRStatusDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: SizedBox(
            height: 200.h,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Utils.popinBoldText(
                  'FIR Status',
                  fontSize: 20.sp,
                ),
                30.spaceY,
                Icon(
                  Icons.check_circle,
                  color: ColorManager.green,
                  size: 80.sp,
                ),
                30.spaceY,
                Utils.popinSemBoldText(
                  'Status: In Progress',
                  fontSize: 20.sp,
                ),
              ],
            ),
          ), // Replace with actual FIR status
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }
}
