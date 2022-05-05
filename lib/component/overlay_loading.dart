import 'package:account_management_ledger/importer.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OverlayLoading extends StatelessWidget {
  final String? message;

  const OverlayLoading({Key? key, this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            message != null ? message! : Strings.loadingMessage,
            style: TextStyle(
              fontSize: 16.sp,
              color: AppColors.black,
            ),
          ),
          SizedBox(height: 4.h),
          const NeumorphicProgressIndeterminate(),
        ],
      ),
    );
  }
}
