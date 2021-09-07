import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'home_page.dart';

class AccountForm extends StatefulWidget {

  @override
  _AccountFormState createState() => new _AccountFormState();
}

class _AccountFormState extends State<AccountForm> {
  
  final _formKey = GlobalKey<FormState>();
  final email= TextEditingController();
  final password= TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      //controller: Controller

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          //Add an icon
          Icon(Icons.account_circle, size: 120.0, color: Colors.blue),
          TextFormField(
            controller: email,
            validator: (String? value) {
              if (value?.isEmpty??true) {

                return 'Please enter a valid email';
              }
              if(value!.length < 6) {
                return 'Atleast 6 characters required';
              }
              if(value.length > 30){
                return 'Maximum 30 characters allowed';
              }
              if(!value.contains('@')){
                return 'Please enter a valid email';
              }
              if(!value.contains('.')){
                return 'Please enter a valid email';
              }
              if(!value.contains('jagalsree@gmail.com')){
                return 'Incorrect Mail Id';
              }
              return null;
            },
            decoration: InputDecoration(
              labelText: 'Email',
              icon: Icon(Icons.email),
              helperText: 'Please enter your email',
            ),
          ),
          SizedBox(height: 20.0),
          TextFormField(
            controller: password,
            validator: (value) {
              if (value?.isEmpty??true) {
                return 'Please enter a valid password';
              }
              if(value!.length < 6) {
                return 'Atleast 6 characters required';
              }
              if(value.length > 30){
                return 'Maximum 30 characters allowed';
              }
              if(value!='sree007'){
                return 'Incorrect Password';
              }
              return null;
            },
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Password',
              icon: Icon(Icons.lock),
              helperText: 'Please enter your password',
            ),
          ),
          SizedBox(height: 20.0),
          RaisedButton(
            color: Colors.blue,
            child: Text('Submit',
              style: TextStyle(color: Colors.white)),
            onPressed: ()async{
            final SharedPreferences shared_preferences = await SharedPreferences.getInstance();
            shared_preferences.setString('email', email.text);
            shared_preferences.setString('password', password.text);
            // Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
            _formKey.currentState!.validate();
            String emailad = email.text;
            String pass = password.text;
            //routing to account home page
            if(emailad =='jagalsree@gmail.com'&&pass =='sree007'){
              print('Login success Navigating to homepage');
            Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
    
          }
            // ?Scaffold.of(context).showSnackBar(SnackBar(content: Text('Valid emai'))):Scaffold.of(context).showSnackBar(SnackBar(content: Text('Invalid email')));
          })
        ],
      ),
    );
  }
}