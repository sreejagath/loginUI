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
                        title: Text('What is flutter?'),
                        trailing: Icon(Icons.more_vert),
                        subtitle: Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Text('Flutter is a free and open-source mobile UI framework created by Google and released in May 2017. In a few words, it allows you to create a native mobile application with only one codebase. This means that you can use one programming language and one codebase to create two different apps (for iOS and Android).',
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
                        title: Text('What is dart?'),
                        trailing: Icon(Icons.more_vert),
                        subtitle: Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Text('Dart is a client-optimized language for developing fast apps on any platform. Its goal is to offer the most productive programming language for multi-platform development, paired with a flexible execution runtime platform for app frameworks. Languages are defined by their technical envelope — the choices made during development that shape the capabilities and strengths of a language. Dart is designed for a technical envelope that is particularly suited to client development, prioritizing both development (sub-second stateful hot reload) and high-quality production experiences across a wide variety of compilation targets (web, mobile, and desktop). Dart also forms the foundation of Flutter. Dart provides the language and runtimes that power Flutter apps, but Dart also supports many core developer tasks like formatting, analyzing, and testing code.',

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
                        title: Text('Google'),
                        trailing: Icon(Icons.more_vert),
                        subtitle: Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Text('Google LLC is an American multinational technology company that specializes in Internet-related services and products, which include online advertising technologies, a search engine, cloud computing, software, and hardware. It is considered one of the Big Five companies in the American information technology industry, along with Amazon, Facebook, Apple, and Microsoft.',
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
                        title: Text('Elon Musk'),
                        trailing: Icon(Icons.more_vert),
                        subtitle: Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Text('Elon Reeve Musk FRS (born June 28, 1971) is an entrepreneur and business magnate. He is the founder, CEO, and Chief Engineer at SpaceX; early stage investor,[note 2] CEO, and Product Architect of Tesla, Inc.; founder of The Boring Company; and co-founder of Neuralink and OpenAI. A centibillionaire, Musk is one of the richest people in the world.',
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
                        title: Text('Jeff Bezos'),
                        trailing: Icon(Icons.more_vert),
                        subtitle: Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Text('Jeffrey Preston Bezos (born January 12, 1964) is an American entrepreneur, media proprietor, investor, and computer engineer. He is the founder and executive chairman of Amazon, where he previously served as the chairman, president, and CEO. With a net worth of almost 200.1 billion as of September 2021, he is either the wealthiest or second-wealthiest person in the world according to both Forbes and Bloombergs Billionaires Index. ',
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
                        title: Text('Mark Zuckerberg'),
                        trailing: Icon(Icons.more_vert),
                        subtitle: Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Text('Mark Elliot Zuckerberg (born May 14, 1984) is an American media magnate, internet entrepreneur, and philanthropist. He is known for co-founding Facebook, Inc. and serves as its chairman, chief executive officer, and controlling shareholder. He is also a co-founder of the solar sail spacecraft development project Breakthrough Starshot and serves as one of its board members.',
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
                        title: Text('Bill Gates'),
                        trailing: Icon(Icons.more_vert),
                        subtitle: Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Text('William Henry Gates III (born October 28, 1955) is an American business magnate, software developer, investor, author, and philanthropist. He is a co-founder of Microsoft Corporation, along with his late childhood friend Paul Allen. During his career at Microsoft, Gates held the positions of chairman, chief executive officer (CEO), president and chief software architect, while also being the largest individual shareholder until May 2014. He is considered one of the best known entrepreneurs of the microcomputer revolution of the 1970s and 1980s.',
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
                        title: Text('Larry Page'),
                        trailing: Icon(Icons.more_vert),
                        subtitle: Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Text('Larry Page, the co-founder of Google has a net worth of 115.7 billion dollar and ranks in the ninth position among the world’s richest persons. He has also invested in Planetary Resources, the famed space exploration company, and is also funding “Flying Car”, startup companies Kitty Hawk and Opener.',
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
                        title: Text('Nikhil Kilivayil'),
                        trailing: Icon(Icons.more_vert),
                        subtitle: Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Text('Nikhil is a Software Engineer turned Entrepreneur who has 9+ years of work experience in the software industry and is now successfully running a Software Consultancy business in Calicut. His passion for teaching had led him to start an educational institution where he teaches how to learn for yourself and build a good career in the tech industry. Nikhil is also the sitting President and board member of a technical NGO named Ping Foundation which focuses on building Open Source projects that have social commitments and imparting technical education to the rural youths.',
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
    String? user = finalEmail;
   TextEditingController myController = TextEditingController()..text = user!;
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
                child: new Image.asset('assets/images/heisen.jpg',
                height: 200.0,
                width: 200.0,),
                
              ),
              SizedBox(height: 20.0),
              Container(
                width: 400.0,
                child: TextField(
                  controller: myController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),

                    ),
                    labelText: 'Username',
                    prefixIcon: Icon(Icons.person),
                    suffixIcon: Icon(Icons.edit),
                    

                  ),
                ),
              ),
              SizedBox(height: 20.0),
              SizedBox(
                width:400.0,
                height: 50.0,
                child: ElevatedButton(
                  child: Text('Change Password'),
                  onPressed: (){
                  },
                
                ),
              ),
              SizedBox(height: 20.0),
              SizedBox(
                width:400.0,
                height: 50.0,
                child: ElevatedButton(
                  child: Text('Logout'),
                  onPressed: () async {
                    final SharedPreferences prefs = await SharedPreferences.getInstance();
                    prefs.remove('email');
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => AccountPage()));
                  },
                
                ),
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