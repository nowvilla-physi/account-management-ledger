import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:account_management_ledger/importer.dart';

class NeumorphicTextField extends StatefulWidget {
  final String label;
  final IconData icon;
  final Function onChange;
  final String? initialValue;

  const NeumorphicTextField({
    Key? key,
    required this.label,
    required this.icon,
    required this.onChange,
    this.initialValue,
  }) : super(key: key);

  @override
  State<NeumorphicTextField> createState() => _NeumorphicTextFieldState();
}

class _NeumorphicTextFieldState extends State<NeumorphicTextField> {
  /// ラベル
  late final _label = widget.label;

  /// アイコン
  late final _icon = widget.icon;

  /// 初期値
  late final _initialValue = widget.initialValue;

  /// TextFormFieldのボーター
  final border = const UnderlineInputBorder(
    borderSide: BorderSide(color: AppColors.baseColor),
  );

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      style: const NeumorphicStyle(
        depth: Dimens.embossDepth,
        boxShape: NeumorphicBoxShape.stadium(),
      ),
      child: TextFormField(
        initialValue: _initialValue,
        cursorColor: AppColors.mainColor,
        decoration: InputDecoration(
          label: Text(
            _label,
            style: const TextStyle(color: AppColors.mainColor),
          ),
          enabledBorder: border,
          focusedBorder: border,
          prefixIcon: Icon(_icon, color: AppColors.mainColor),
        ),
        onChanged: (value) {
          widget.onChange(value);
        },
      ),
    );
  }
}
