import 'package:flutter_neumorphic/flutter_neumorphic.dart';
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

  late final _modal = AppModal(context);

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      padding: EdgeInsets.symmetric(vertical: 4.h),
      style: const NeumorphicStyle(
        depth: Dimens.embossDepth,
        color: AppColors.baseColor,
      ),
      child: Slidable(
        key: UniqueKey(),
        endActionPane: const ActionPane(
          motion: StretchMotion(),
          children: [
            SlidableAction(
              backgroundColor: AppColors.red,
              foregroundColor: Colors.white,
              icon: Icons.delete,
              label: Strings.deleteLabel,
              onPressed: null,
            ),
          ],
        ),
        child: ListTile(
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              NeumorphicButton(
                style: const NeumorphicStyle(
                  boxShape: NeumorphicBoxShape.stadium(),
                ),
                margin: EdgeInsets.symmetric(vertical: 4.h),
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 3.h),
                child: Text(
                  _account.service,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: AppColors.mainColor,
                    overflow: TextOverflow.ellipsis,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {
                  _modal.showModal(OpenType.edit, _account);
                },
              ),
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
      ),
    );
  }
}
