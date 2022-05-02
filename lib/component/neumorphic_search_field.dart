import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:account_management_ledger/importer.dart';

class NeumorphicSearchField extends StatefulWidget {
  final Function onChange;

  const NeumorphicSearchField({
    Key? key,
    required this.onChange,
  }) : super(key: key);

  @override
  State<NeumorphicSearchField> createState() => _NeumorphicSearchFieldState();
}

class _NeumorphicSearchFieldState extends State<NeumorphicSearchField> {
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
        cursorColor: AppColors.mainColor,
        decoration: InputDecoration(
          enabledBorder: border,
          focusedBorder: border,
          hintText: Strings.searchLabel,
          prefixIcon: IconButton(
            icon: const Icon(Icons.menu),
            color: AppColors.mainColor,
            splashRadius: 1.r,
            onPressed: () {},
          ),
          suffixIcon: const Icon(Icons.search, color: AppColors.mainColor),
        ),
        onChanged: (String value) {
          widget.onChange(value);
        },
      ),
    );
  }
}
