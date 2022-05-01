import 'package:flutter/material.dart';
import 'package:account_management_ledger/importer.dart';

class HomePage extends StatefulWidget {
  final List<Account> accounts;

  const HomePage({Key? key, required this.accounts}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final _accounts = widget.accounts;

  void printa() {
    print("#");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _accounts.isEmpty
          ? const EmptyContainer(message: Strings.noDataMessage)
          : Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    _accounts[0].service,
                  ),
                ],
              ),
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: printa,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
