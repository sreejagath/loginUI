import 'package:flutter/material.dart';
import 'account_home.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

String? finalEmail;

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState(){
    getValidationData().whenComplete(() async{
      if(finalEmail == null){
        Navigator.push(context, MaterialPageRoute(builder: (context) => AccountPage()));
      }
      if(finalEmail == "jagalsree@gmail.com"){
        Get.to(Home());
      }
    });
    super.initState();
  }
  Future getValidationData() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    var obtainedEmail = prefs.getString('email');
    setState((){
      finalEmail = obtainedEmail;
    });
    print(finalEmail);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Homepage'),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: RaisedButton(
          child: Text('Logout'),
          onPressed: () async {
            final SharedPreferences prefs = await SharedPreferences.getInstance();
            prefs.remove('email');
            Navigator.push(context, MaterialPageRoute(builder: (context) => AccountPage()));
          }
        ),
      ),
    );
  }
}


// class HomePage extends StatefulWidget {

//   @override
//   HomeState createState() => HomeState();
// }

// class _Home extends State<Home> {
//   @override

//   void initState() {
//     Timer(Duration(seconds: 2),()=> Get.to(AccountPage()));
//     super.initState();
//   }
//   Widget build(BuildContext context) {
//     return Container(
//        child: null,
//     );
//   }
// }


// class HomePage extends StatelessWidget {

//   @override

//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Homepage'),
//         centerTitle: true,
//         automaticallyImplyLeading: false,
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(20.0),
//         child: RaisedButton(
//           child: Text('Logout'),
//           onPressed: () {
//             print('logout');
//             Navigator.push(context, MaterialPageRoute(builder: (context) => AccountPage()));
//           }
//         ),
//       ),
//     );
//   }
// }