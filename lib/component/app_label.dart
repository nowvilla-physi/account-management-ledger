import 'package:flutter/services.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:account_management_ledger/importer.dart';

class AppLabel extends StatefulWidget {
  final String label;

  const AppLabel({
    Key? key,
    required this.label,
  }) : super(key: key);

  @override
  State<AppLabel> createState() => _AppLabelState();
}

class _AppLabelState extends State<AppLabel> {
  /// ラベル
  late final _label = widget.label;

  late final _snackbar = AppSnackbar(context);

  /// クリップボードにコピーする
  Future<void> _copyText() async {
    final copiedText = ClipboardData(text: _label);
    await Clipboard.setData(copiedText);
    _snackbar.showCopiedSnackbar();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        NeumorphicButton(
          style: const NeumorphicStyle(
            boxShape: NeumorphicBoxShape.circle(),
          ),
          margin: EdgeInsets.only(right: 8.0.w),
          padding: const EdgeInsets.all(6.0),
          child: Icon(
            Icons.content_copy,
            color: AppColors.mainColor,
            size: 16.r,
          ),
          onPressed: () {
            _copyText();
          },
        ),
        Expanded(
          child: Text(
            _label,
            style: TextStyle(
              color: AppColors.black,
              fontSize: 13.sp,
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
