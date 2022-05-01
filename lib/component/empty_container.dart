import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:account_management_ledger/importer.dart';

class EmptyContainer extends StatelessWidget {
  final String message;

  const EmptyContainer({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          NeumorphicText(
            message,
            style: NeumorphicStyle(
              depth: Dimens.depth,
              color: NeumorphicTheme.defaultTextColor(context),
            ),
            textStyle: NeumorphicTextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
