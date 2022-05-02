import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:account_management_ledger/importer.dart';

class AccountTile extends StatefulWidget {
  final Account account;
  final Function showModal;

  const AccountTile({
    Key? key,
    required this.account,
    required this.showModal,
  }) : super(key: key);

  @override
  State<AccountTile> createState() => _AccountTileState();
}

class _AccountTileState extends State<AccountTile> {
  /// アカウント情報
  late final _account = widget.account;

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      padding: EdgeInsets.symmetric(vertical: 4.h),
      style: const NeumorphicStyle(
        depth: Dimens.embossDepth,
        color: AppColors.baseColor,
      ),
      child: ListTile(
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Align(
              alignment: Alignment.centerRight,
              child: NeumorphicButton(
                style: const NeumorphicStyle(),
                margin: EdgeInsets.symmetric(vertical: 4.h),
                padding: EdgeInsets.symmetric(
                  horizontal: 8.w,
                  vertical: 4.h,
                ),
                child: Text(
                  _account.service,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: AppColors.mainColor,
                    fontWeight: FontWeight.bold,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                onPressed: () {
                  widget.showModal(OpenType.edit, _account);
                },
              ),
            ),
            AppLabel(label: _account.id),
            SizedBox(height: 4.h),
            AppLabel(label: _account.password),
            SizedBox(height: 2.h),
          ],
        ),
      ),
    );
  }
}
