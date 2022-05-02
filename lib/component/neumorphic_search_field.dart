import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:account_management_ledger/importer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
          prefixIcon: NeumorphicButton(
            style: const NeumorphicStyle(
              depth: Dimens.depth,
              boxShape: NeumorphicBoxShape.circle(),
            ),
            padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 4.h),
            margin: EdgeInsets.only(left: 8.0.w, right: 16.w),
            child: const Icon(
              Icons.menu,
              color: AppColors.mainColor,
            ),
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
