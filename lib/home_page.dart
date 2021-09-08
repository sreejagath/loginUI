import 'package:flutter/cupertino.dart';
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
    Future getValidationData() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    var obtainedEmail = prefs.getString('email');
    setState((){
      finalEmail = obtainedEmail;
    });
    print(finalEmail);
  }
    getValidationData().whenComplete(() async{
      if(finalEmail==null){
        Navigator.push(context, MaterialPageRoute(builder: (context) => AccountPage()));
      }
      else if(finalEmail == "jagalsree@gmail.com"){
        Get.to(Home());
      }
    });
    super.initState();
  }
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  final tabs=[
    MainHome(),
    Profile(),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Homepage'),
      //   centerTitle: true,
      //   automaticallyImplyLeading: false,
      // ),
      
      body:
        tabs[_selectedIndex],
        
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: 'Account',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.blue,
          onTap: _onItemTapped,
        ),
    );
  }
}

class MainHome extends StatelessWidget {

  final items = List<String>.generate(100, (i) => 'Item ${i+1}');
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
        Column(
          children: [
            SizedBox(height: 30,),
            Text('Keep Notes', 
            style: TextStyle(
              fontSize: 30, 
              fontWeight: FontWeight.bold,
              color: Colors.blue
              ),
            ),
            SizedBox(height: 50,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Search...',
                  prefixIcon: Icon(Icons.search),
                )
              ),
            ),
            SizedBox(height: 50,),
            Expanded(

              child: ListView(
                
                children: const <Widget>[
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Card(
                      child: ListTile(
                        
                        leading: Icon(Icons.post_add),
                        title: Text('Note 1'),
                        trailing: Icon(Icons.more_vert),
                        subtitle: Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Text('Lorem Ipsum is simply dummy text. Lorem Ipsum is simply a dummy text. Lorem Ipsum is simply a dummy text.',
                            style: TextStyle(),
                          ),
                        ),
                      ),
                      elevation: 5,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Card(
                      child: ListTile(
                        leading: Icon(Icons.post_add_rounded),
                        title: Text('Album'),
                        trailing: Icon(Icons.more_vert),
                        subtitle: Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Text('Lorem Ipsum is simply dummy text. Lorem Ipsum is simply a dummy text. Lorem Ipsum is simply a dummy text.',
                              style: TextStyle(),
                            ),
                          ),
                      ),
                      elevation: 5,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Card(
                      child: ListTile(
                        leading: Icon(Icons.post_add_rounded),
                        title: Text('Album'),
                        trailing: Icon(Icons.more_vert),
                        subtitle: Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Text('Lorem Ipsum is simply dummy text. Lorem Ipsum is simply a dummy text. Lorem Ipsum is simply a dummy text.',
                              style: TextStyle(),
                            ),
                          ),
                      ),
                      elevation: 5,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Card(
                      child: ListTile(
                        leading: Icon(Icons.post_add_rounded),
                        title: Text('Album'),
                        trailing: Icon(Icons.more_vert),
                        subtitle: Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Text('Lorem Ipsum is simply dummy text. Lorem Ipsum is simply a dummy text. Lorem Ipsum is simply a dummy text.',
                              style: TextStyle(),
                            ),
                          ),
                      ),
                      elevation: 5,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Card(
                      child: ListTile(
                        leading: Icon(Icons.post_add_rounded),
                        title: Text('Album'),
                        trailing: Icon(Icons.more_vert),
                        subtitle: Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Text('Lorem Ipsum is simply dummy text. Lorem Ipsum is simply a dummy text. Lorem Ipsum is simply a dummy text.Lorem Ipsum is simply dummy text. Lorem Ipsum is simply a dummy text. Lorem Ipsum is simply a dummy text.Lorem Ipsum is simply dummy text. Lorem Ipsum is simply a dummy text. Lorem Ipsum is simply a dummy text.Lorem Ipsum is simply dummy text. Lorem Ipsum is simply a dummy text. Lorem Ipsum is simply a dummy text.',
                              style: TextStyle(),
                            ),
                          ),
                      ),
                      elevation: 5,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Card(
                      child: ListTile(
                        leading: Icon(Icons.post_add_rounded),
                        title: Text('Album'),
                        trailing: Icon(Icons.more_vert),
                        subtitle: Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Text('Lorem Ipsum is simply dummy text. Lorem Ipsum is simply a dummy text. Lorem Ipsum is simply a dummy text.',
                              style: TextStyle(),
                            ),
                          ),
                      ),
                      elevation: 5,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Card(
                      child: ListTile(
                        leading: Icon(Icons.post_add_rounded),
                        title: Text('Album'),
                        trailing: Icon(Icons.more_vert),
                        subtitle: Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Text('Lorem Ipsum is simply dummy text. Lorem Ipsum is simply a dummy text. Lorem Ipsum is simply a dummy text.',
                              style: TextStyle(),
                            ),
                          ),
                      ),
                      elevation: 5,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Card(
                      child: ListTile(
                        leading: Icon(Icons.post_add_rounded),
                        title: Text('Album'),
                        trailing: Icon(Icons.more_vert),
                        subtitle: Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Text('Lorem Ipsum is simply dummy text. Lorem Ipsum is simply a dummy text. Lorem Ipsum is simply a dummy text.',
                              style: TextStyle(),
                            ),
                          ),
                      ),
                      elevation: 5,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Card(
                      child: ListTile(
                        leading: Icon(Icons.post_add_rounded),
                        title: Text('Album'),
                        trailing: Icon(Icons.more_vert),
                        subtitle: Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Text('Lorem Ipsum is simply dummy text. Lorem Ipsum is simply a dummy text. Lorem Ipsum is simply a dummy text.',
                              style: TextStyle(),
                            ),
                          ),
                      ),
                      elevation: 5,
                    ),
                  ),
                ]
              ),
            ),
            //Add an icon
            

          ],
        //Add a floating icon

        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
        
      //  Column(
      //    children: <Widget>[
      //      Padding(
      //        padding: const EdgeInsets.all(15.0),
      //        child: TextField(
      //        decoration: InputDecoration(
      //         border: OutlineInputBorder(),
      //         labelText: 'Search...',
      //         prefixIcon: Icon(Icons.search),
      //       ),
      //   ),
      //     ),

      //   Column(
      //     children: <Widget>[
      //       ElevatedButton(onPressed: (){
      //         print(items);
      //       }, child:Text('Click')),
            
      //      Column(
      //        mainAxisSize: MainAxisSize.max,
      //        children: [
      //          Expanded(
                 
      //            child: 
      //              ListView.builder(
      //                itemCount: items.length,
      //                itemBuilder: (context, index) {
      //                 return ListTile(
      //                title: Text(items[index]),
      //              );
      //                },
      //               ),
      //          ),
      //        ],
      //      )
      // ],
      // ),
      // ],
      // ),// ),
    );
  }
}

class Profile extends StatelessWidget {
  
  //shared_preferences
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // CircleAvatar(
              //   backgroundImage: AssetImage('images/elon.jpg'),
              //   radius: 100.0,
              // ),
              //Image(image: AssetImage('images/elon.jpg'),
              // height: 200.0,
              // width: 200.0,
              // ),
              ClipRRect(
                borderRadius: BorderRadius.circular(100.0),
                child: Image.asset('images/elon.jpg',
                height: 200.0,
                width: 200.0,),
                
              ),
              SizedBox(height: 20.0),
              Text('Hi ${finalEmail!}'),
              SizedBox(height: 20.0),
              ElevatedButton(
                child: Text('Logout'),
                onPressed: () async {
                  final SharedPreferences prefs = await SharedPreferences.getInstance();
                  prefs.remove('email');
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => AccountPage()));
                }
              ),
            ],

          ),
        ],
        
      ),
    );
  }
}
      //  Padding(

      //   padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
      //   child: ElevatedButton(
      //     child: Text('Logout'),
      //     onPressed: () async {
      //       final SharedPreferences prefs = await SharedPreferences.getInstance();
      //       prefs.remove('email');
      //       Navigator.push(context, MaterialPageRoute(builder: (context) => AccountPage()));
      //     }
      //   ),
      // ),
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