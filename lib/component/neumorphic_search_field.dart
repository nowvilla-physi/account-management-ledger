import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:account_management_ledger/importer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NeumorphicSearchField extends StatefulWidget {
  final TextEditingController controller;
  final Function onChange;

  const NeumorphicSearchField({
    Key? key,
    required this.controller,
    required this.onChange,
  }) : super(key: key);

  @override
  State<NeumorphicSearchField> createState() => _NeumorphicSearchFieldState();
}

class _NeumorphicSearchFieldState extends State<NeumorphicSearchField> {
  /// 検索文字列のコントローラー
  late final _controller = widget.controller;

  /// TextFormFieldのボーター
  final _border = const UnderlineInputBorder(
    borderSide: BorderSide(color: AppColors.baseColor),
  );

  /// ルーター
  late final _router = AppRouter(context);

  void _toMenu() {
    _router.toMenu();
  }

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      style: const NeumorphicStyle(
        depth: Dimens.embossDepth,
        boxShape: NeumorphicBoxShape.stadium(),
      ),
      child: TextFormField(
        cursorColor: AppColors.mainColor,
        controller: _controller,
        decoration: InputDecoration(
          enabledBorder: _border,
          focusedBorder: _border,
          hintText: Strings.searchLabel,
          prefixIcon: NeumorphicIconButton(
            icon: Icons.menu,
            action: _toMenu,
            marginLeft: Dimens.menuButtonMarginLeft,
            marginRight: Dimens.menuButtonMarginRight,
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
