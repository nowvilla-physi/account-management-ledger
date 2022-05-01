import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:account_management_ledger/importer.dart';

class AccountTile extends StatefulWidget {
  final Account account;

  const AccountTile({Key? key, required this.account}) : super(key: key);

  @override
  State<AccountTile> createState() => _AccountTileState();
}

class _AccountTileState extends State<AccountTile> {
  late final _account = widget.account;

  @override
  Widget build(BuildContext context) {
    return Slidable(
      key: UniqueKey(),
      endActionPane: const ActionPane(
        motion: StretchMotion(),
        children: [],
      ),
      child: ListTile(
        title: Text(
          _account.service,
          style: TextStyle(fontSize: 16.sp, color: AppColors.accentColor),
          overflow: TextOverflow.ellipsis,
        ),
        subtitle: Column(
          children: <Widget>[
            Text(
              _account.id,
              style: TextStyle(fontSize: 14.sp, color: AppColors.black),
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: 4.h),
            Text(
              _account.password,
              style: TextStyle(fontSize: 14.sp, color: AppColors.black),
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
