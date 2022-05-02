import 'package:account_management_ledger/model/label_type.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:account_management_ledger/importer.dart';

class AppLabel extends StatefulWidget {
  final String label;
  final LabelType labelType;

  const AppLabel({
    Key? key,
    required this.label,
    required this.labelType,
  }) : super(key: key);

  @override
  State<AppLabel> createState() => _AppLabelState();
}

class _AppLabelState extends State<AppLabel> {
  /// ラベル
  late final _label = widget.label;

  /// ラベルタイプ
  late final _labelType = widget.labelType;

  /// クリップボードにコピーする
  void _copy() {}

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
            _copy();
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
