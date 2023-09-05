import 'package:crime_reporting_app/app/index.dart';
import 'package:crime_reporting_app/presentation/common/app_button.dart';
import 'package:crime_reporting_app/presentation/common/textfield_widget.dart';

class GenerateCaseReport extends StatelessWidget {
  const GenerateCaseReport({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Utils.popinBoldText(
          'Generate Report',
          color: ColorManager.white,
          fontSize: 24.sp,
        ),
        backgroundColor: ColorManager.primary,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(18.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Utils.popinSemBoldText(
                'Case Information',
                fontSize: 18.sp,
              ),
              10.spaceY,
              TextfieldWidget(
                keyboardType: TextInputType.name,
                hintText: 'Case no',
                prefixIcon: Icon(
                  Icons.numbers,
                  color: ColorManager.darkGrey,
                ),
              ),
              10.spaceY,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 170.w,
                    child: TextfieldWidget(
                      keyboardType: TextInputType.name,
                      hintText: 'Incident Date',
                      prefixIcon: Icon(
                        Icons.date_range,
                        color: ColorManager.darkGrey,
                      ),
                    ),
                  ),
                  10.spaceY,
                  SizedBox(
                    width: 170.w,
                    child: TextfieldWidget(
                      keyboardType: TextInputType.name,
                      hintText: 'Incident Time',
                      prefixIcon: Icon(
                        Icons.timer_outlined,
                        color: ColorManager.darkGrey,
                      ),
                    ),
                  ),
                ],
              ),
              10.spaceY,
              TextfieldWidget(
                keyboardType: TextInputType.name,
                hintText: 'Crime Type',
                prefixIcon: Icon(
                  Icons.warning,
                  color: ColorManager.darkGrey,
                ),
              ),
              10.spaceY,
              const TextField(
                maxLines: 3,
                decoration: InputDecoration(
                  hintText: 'Enter Details',
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                ),
              ),
              10.spaceY,
              Utils.popinSemBoldText(
                'Victim Information',
                fontSize: 18.sp,
              ),
              10.spaceY,
              TextfieldWidget(
                keyboardType: TextInputType.name,
                hintText: 'Full Name',
                prefixIcon: Icon(
                  Icons.person,
                  color: ColorManager.darkGrey,
                ),
              ),
              10.spaceY,
              TextfieldWidget(
                keyboardType: TextInputType.name,
                hintText: 'Contact No',
                prefixIcon: Icon(
                  Icons.numbers,
                  color: ColorManager.darkGrey,
                ),
              ),
              10.spaceY,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 170.w,
                    child: TextfieldWidget(
                      readOnly: true,
                      keyboardType: TextInputType.name,
                      hintText: 'Date of Birth',
                      prefixIcon: Icon(
                        Icons.date_range,
                        color: ColorManager.darkGrey,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 170.w,
                    child: TextfieldWidget(
                      readOnly: true,
                      keyboardType: TextInputType.name,
                      hintText: 'Gender',
                      prefixIcon: Icon(
                        Icons.male,
                        color: ColorManager.darkGrey,
                      ),
                      suffixIcon: const Icon(Icons.arrow_drop_down),
                    ),
                  ),
                ],
              ),
              10.spaceY,
              Utils.popinSemBoldText(
                'Evidence',
                fontSize: 18.sp,
              ),
              10.spaceY,
              TextfieldWidget(
                keyboardType: TextInputType.text,
                hintText: 'Any relevant Evidence or information',
                prefixIcon: Icon(
                  Icons.info_outline,
                  color: ColorManager.darkGrey,
                ),
              ),
              10.spaceY,
              Utils.popinSemBoldText(
                'Reporting Officer Details',
                fontSize: 18.sp,
              ),
              10.spaceY,
              TextfieldWidget(
                keyboardType: TextInputType.name,
                hintText: 'Full Name',
                prefixIcon: Icon(
                  Icons.person,
                  color: ColorManager.darkGrey,
                ),
              ),
              10.spaceY,
              TextfieldWidget(
                keyboardType: TextInputType.name,
                hintText: 'Designation',
                prefixIcon: Icon(
                  Icons.supervised_user_circle,
                  color: ColorManager.darkGrey,
                ),
              ),
              10.spaceY,
              TextfieldWidget(
                keyboardType: TextInputType.name,
                hintText: 'Number',
                prefixIcon: Icon(
                  Icons.numbers,
                  color: ColorManager.darkGrey,
                ),
              ),
              10.spaceY,
              Utils.popinSemBoldText(
                'Case status',
                fontSize: 18.sp,
              ),
              10.spaceY,
              TextfieldWidget(
                keyboardType: TextInputType.name,
                hintText: 'Any progress made in the investigation',
                prefixIcon: Icon(
                  Icons.info,
                  color: ColorManager.darkGrey,
                ),
              ),
              10.spaceY,
              TextfieldWidget(
                keyboardType: TextInputType.name,
                hintText: 'Status of suspects identification and arrest',
                prefixIcon: Icon(
                  Icons.info,
                  color: ColorManager.darkGrey,
                ),
              ),
              10.spaceY,
              AppButton(text: 'Send', onPress: () {})
            ],
          ),
        ),
      ),
    );
  }
}
