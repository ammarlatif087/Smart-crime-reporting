import '../../app/index.dart';

class RadioButtonWidget<T> extends StatelessWidget {
  final T value;
  final T? groupValue;
  final String? label;
  final String text;
  final ValueChanged<T?> onChanged;

  const RadioButtonWidget({
    super.key,
    required this.value,
    required this.groupValue,
    this.label,
    required this.text,
    required this.onChanged,
  });

  Widget _buildRadio() {
    final bool isSelected = value == groupValue;

    return CircleAvatar(
      radius: 5.r,
      backgroundColor: isSelected ? ColorManager.primary : ColorManager.grey,
    );
  }

  Widget _buildText() {
    //  final bool isSelected = value == groupValue;

    return Text(
      text,
      style: TextStyleManager.popinsReg(
        fontSize: 12.sp,
        //   color: isSelected ? ColorManager.white : ColorManager.grey,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onChanged(value),
      splashColor: ColorManager.transparent,
      borderRadius: BorderRadius.circular(10.r),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildRadio(),
          SizedBox(width: 10.w),
          _buildText(),
        ],
      ),
    );
  }
}
