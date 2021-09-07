import 'package:flutter/material.dart';
import 'account_home.dart';
import 'package:get_storage/get_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'account_home.dart';
import 'home_page.dart';

void main()  async {
  WidgetsFlutterBinding.ensureInitialized();
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  var email = prefs.getString('email');

  runApp(MaterialApp(home: email == null ? AccountPage() : Home()));

}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context)  {
    
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      home: AccountPage(),
    
    );
  }
}