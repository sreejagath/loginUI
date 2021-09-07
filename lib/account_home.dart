import 'package:flutter/material.dart';
import 'account_form.dart';

class AccountPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account Validation'),
        centerTitle: true,

      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: AccountForm(),
      ),
    );
  }
}