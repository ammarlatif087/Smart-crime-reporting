import '../../app/index.dart';

class AppButton extends StatelessWidget {
  final String text;

  final VoidCallback? onPress;
  const AppButton({
    required this.text,
    required this.onPress,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(1.sw, 50.h),
        elevation: 8.r,
        backgroundColor: ColorManager.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.r),
        ),
      ),
      onPressed: onPress,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 18.w),
        child: Utils.popinMedText(text,
            color: ColorManager.white, fontSize: 20.sp),
      ),
    );
  }
}
