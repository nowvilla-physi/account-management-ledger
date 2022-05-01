import 'package:flutter/material.dart';
import 'package:account_management_ledger/importer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EmptyContainer extends StatelessWidget {
  final String message;

  const EmptyContainer({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            message,
            style: TextStyle(
              color: AppColors.black,
              fontSize: 14.sp,
            ),
          )
        ],
      ),
    );
  }
}
