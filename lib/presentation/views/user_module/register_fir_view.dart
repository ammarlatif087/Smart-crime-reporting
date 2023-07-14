import '../../../app/index.dart';
import '../../common/app_bar.dart';
import '../../common/app_button.dart';
import '../../common/textfield_widget.dart';
import '../../view_models/register_fir_view_model.dart';

class RegisterFirView extends StatelessWidget {
  const RegisterFirView({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<RegisterFirViewModel>(context);
    return SafeArea(
      child: Scaffold(
        appBar: buildAppBar(
          title: 'Register FIR  ',
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 20.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                20.spaceY,
                TextfieldWidget(
                  keyboardType: TextInputType.emailAddress,
                  hintText: 'Your Name',
                  prefixIcon: Icon(
                    Icons.person,
                    color: ColorManager.darkGrey,
                  ),
                ),
                20.spaceY,
                TextfieldWidget(
                  keyboardType: TextInputType.phone,
                  hintText: 'Contact no',
                  prefixIcon: Icon(
                    Icons.phone,
                    color: ColorManager.darkGrey,
                  ),
                ),
                20.spaceY,
                TextfieldWidget(
                  keyboardType: TextInputType.text,
                  hintText: 'Address',
                  prefixIcon: Icon(
                    Icons.location_on,
                    color: ColorManager.darkGrey,
                  ),
                ),
                20.spaceY,
                Utils.popinSemBoldText(
                  'Incident Details:',
                  fontSize: 20.sp,
                ),
                20.spaceY,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 160.w,
                      child: AppButton(
                        text: viewModel.selectedTime != null
                            ? '${viewModel.selectedTime!.hour}:${viewModel.selectedTime!.minute}'
                            : 'Pick Time',
                        onPress: () {
                          viewModel.pickTime(context);
                        },
                      ),
                    ),
                    SizedBox(
                      width: 160.w,
                      child: AppButton(
                        text: viewModel.selectedDate != null
                            ? '${viewModel.selectedDate!.day.toString().padLeft(2, '0')}-${viewModel.selectedDate!.month.toString().padLeft(2, '0')}-${viewModel.selectedDate!.year.toString()}'
                            : 'Pick Date',
                        onPress: () {
                          viewModel.pickDate(context);
                        },
                      ),
                    ),
                  ],
                ),
                20.spaceY,
                TextfieldWidget(
                  keyboardType: TextInputType.text,
                  hintText: 'Location',
                  prefixIcon: Icon(
                    Icons.location_on,
                    color: ColorManager.darkGrey,
                  ),
                ),
                20.spaceY,
                TextfieldWidget(
                  keyboardType: TextInputType.text,
                  hintText: 'Type of crime',
                  prefixIcon: Icon(
                    Icons.warning,
                    color: ColorManager.darkGrey,
                  ),
                ),
                20.spaceY,
                TextfieldWidget(
                  keyboardType: TextInputType.text,
                  hintText: 'Witnesses (if any)',
                  prefixIcon: Icon(
                    Icons.person,
                    color: ColorManager.darkGrey,
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
                  text: 'Submit',
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
