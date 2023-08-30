


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Fragment/alarmFragment.dart';
import 'Fragment/balanceFragment.dart';
import 'Fragment/emailFragment.dart';
import 'Fragment/homeFragment.dart';
import 'Fragment/phoneFragment.dart';
import 'Fragment/profileFragment.dart';
import 'Fragment/searchFragment.dart';
import 'Fragment/settingFragment.dart';

main() {
  runApp( myapp());
}
class myapp extends StatelessWidget{
  myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      darkTheme: ThemeData(primarySwatch: Colors.deepPurple),
      color: Colors.deepOrangeAccent,
      home: HomeActivity(),);
  }

}
class HomeActivity extends StatelessWidget{
  // HomeActivity({super.key});
  var MyItems=[
    {"img":"https://technobrains.io/wp-content/uploads/2021/07/flutter-Featured-Blog-Image2.jpg",
      "title":"flutter"},
    {"img":"https://technobrains.io/wp-content/uploads/2021/07/flutter-Featured-Blog-Image2.jpg",
      "title":"flutter1"},
    {"img":"https://technobrains.io/wp-content/uploads/2021/07/flutter-Featured-Blog-Image2.jpg",
      "title":"flutter2"},
    {"img":"https://technobrains.io/wp-content/uploads/2021/07/flutter-Featured-Blog-Image2.jpg",
      "title":"flutter3"},
    {"img":"https://technobrains.io/wp-content/uploads/2021/07/flutter-Featured-Blog-Image2.jpg",
      "title":"flutter4"},
    {"img":"https://technobrains.io/wp-content/uploads/2021/07/flutter-Featured-Blog-Image2.jpg",
      "title":"flutter5"},
    {"img":"https://technobrains.io/wp-content/uploads/2021/07/flutter-Featured-Blog-Image2.jpg",
      "title":"flutter"},
    {"img":"https://technobrains.io/wp-content/uploads/2021/07/flutter-Featured-Blog-Image2.jpg",
      "title":"flutter1"},
    {"img":"https://technobrains.io/wp-content/uploads/2021/07/flutter-Featured-Blog-Image2.jpg",
      "title":"flutter2"},
    {"img":"https://technobrains.io/wp-content/uploads/2021/07/flutter-Featured-Blog-Image2.jpg",
      "title":"flutter3"},
    {"img":"https://technobrains.io/wp-content/uploads/2021/07/flutter-Featured-Blog-Image2.jpg",
      "title":"flutter4"},
    {"img":"https://technobrains.io/wp-content/uploads/2021/07/flutter-Featured-Blog-Image2.jpg",
      "title":"flutter5"},
  ];

  mysnackbar(message,context){
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message))
    );
  }
  //Alert Dialouge
  myalertdialog(context){
    return showDialog(
        context: context,
        builder: (BuildContext context){
          return Expanded(
              child: AlertDialog(
                title: Text('Alert!!'),
                content: Text('Do you want to Delete'),
                actions: [
                  TextButton(onPressed: (){
                    mysnackbar("Successfully Deleted", context);
                    Navigator.of(context).pop();
                  }, child: Text('yes')),
                  TextButton(onPressed: (){Navigator.of(context).pop();}, child: Text('No'))
                ],
              )
          );
        }
    );
  }//alert dailog

  @override
  Widget build(BuildContext context) {
    //buttonStyle
    ButtonStyle buttonStyle=ElevatedButton.styleFrom(
        minimumSize: Size(double.infinity,60),
        padding: EdgeInsets.all(9),
        backgroundColor: Colors.blue,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(23))
        )

    );
    return DefaultTabController(
      length: 8,
      child:  Scaffold(
        appBar: AppBar(
          title: Text("MyApp"),
          /*  titleSpacing: 10,
          toolbarHeight: 60,
          toolbarOpacity: 1,
         // backgroundColor: Colors.deepPurple,
         elevation: 1,

         title: Text("MyApp"),
          actions: [
            IconButton(onPressed: (){mysnackbar("Searching", context);}, icon: Icon(Icons.search)),
            IconButton(onPressed: (){mysnackbar("go to email", context);}, icon: Icon(Icons.email))
          ]*/
          bottom:  TabBar(
            isScrollable: true,
            tabs: [
              Tab(icon: Icon(Icons.home),text: "Home"),
              Tab(icon: Icon(Icons.search),text: "Search",),
              Tab(icon: Icon(Icons.person),text: "profile",),
              Tab(icon: Icon(Icons.email),text: "Email",),
              Tab(icon: Icon(Icons.phone),text: "phone",),
              Tab(icon: Icon(Icons.settings),text: "Setting",),
              Tab(icon: Icon(Icons.access_alarm),text: "Alarm",),
              Tab(icon: Icon(Icons.account_balance),text: "Balance",),


            ],
            onTap: (int index){
              if (index==0)
                mysnackbar("home", context);

            },
          ),
        ),
        body: TabBarView(
          children: [



            homeFragment(),
            searchFragment(),
            profileFragment(),
            emailFragment(),
            phoneFragment(),
            settingFragment(),
            alarmFragment(),
            balanceFragment(),
          ],
        ),


        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add_circle),
          backgroundColor: Colors.blue,
          elevation: 20,
          onPressed: (){mysnackbar("floating action button", context);},
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 1,
          backgroundColor: Colors.blueGrey,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.message),label: "message"),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: "profile"),

          ],
          onTap: (int index){
            if(index==0){
              mysnackbar('go home', context);
            }
            if(index==1){
              mysnackbar('see message', context);
            }
            if(index==2){
              mysnackbar('see profile', context);
            }
          },
        ),
        /*  drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(0),
             child: UserAccountsDrawerHeader(
               decoration: BoxDecoration(color: Colors.deepPurple),
               accountName: Text('Md Sabbir Ahmed'),
               accountEmail: Text("sabbir12@gmail.com"),
               currentAccountPicture: Image.network("https://cdn.dribbble.com/users/1622791/screenshots/11174104/flutter_intro.png"),
             ),
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text('Email'),
              onTap: (){
                mysnackbar("emaol", context);
              },
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Phone'),
            onTap: (){
                mysnackbar("phone", context);
            },
            ),
            ListTile(
              leading: Icon(Icons.contact_emergency),
              title: Text('Contact Emergency'),
              onTap: (){
                mysnackbar('emrency contact', context);
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('LogOut'),
              onTap: (){
                mysnackbar("Logout ", context);
              },
            )

          ],
        ),
      ),
      endDrawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.deepPurple),
                accountName: Text('Md Sabbir Ahmed'),
                accountEmail: Text("sabbir12@gmail.com"),
                currentAccountPicture: Image.network("https://cdn.dribbble.com/users/1622791/screenshots/11174104/flutter_intro.png"),
              ),
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text('Email'),
              onTap: (){
                mysnackbar("emaol", context);
              },
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Phone'),
              onTap: (){
                mysnackbar("phone", context);
              },
            ),
            ListTile(
              leading: Icon(Icons.contact_emergency),
              title: Text('Contact Emergency'),
              onTap: (){
                mysnackbar('emrency contact', context);
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('LogOut'),
              onTap: (){
                mysnackbar("Logout ", context);
              },
            )

          ],
        ),
      ),*/
//row container
        /*  body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
        height: 100,
        width: 100,
        alignment: Alignment.center,
        margin: EdgeInsets.fromLTRB(5, 30, 9, 30),
        padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
        child: Image.network("https://cdn.dribbble.com/users/1622791/screenshots/11174104/flutter_intro.png"),
        decoration: BoxDecoration(
          color: Colors.orange,
          border: Border.all(color: Colors.blue,width: 4),

        ),
          ),
          Container(
            height: 100,
            width: 100,
            alignment: Alignment.center,
            margin: EdgeInsets.fromLTRB(5, 30, 9, 30),
            padding: EdgeInsets.all(20),
            child: Image.network("https://cdn.dribbble.com/users/1622791/screenshots/11174104/flutter_intro.png"),
            decoration: BoxDecoration(
              color: Colors.orange,
              border: Border.all(color: Colors.blue,width: 4),

            ),
          ),
          Container(
            height: 100,
            width: 100,
            alignment: Alignment.center,
            margin: EdgeInsets.fromLTRB(5, 30, 9, 30),
            padding: EdgeInsets.all(20),
            child: Image.network("https://cdn.dribbble.com/users/1622791/screenshots/11174104/flutter_intro.png"),
            decoration: BoxDecoration(
              color: Colors.orange,
              border: Border.all(color: Colors.blue,width: 4),

            ),
          )
        ],
      )*/
        //button
        /*  body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton(onPressed: (){}, child: Text('Text Button'),style: buttonStyle,),
          ElevatedButton(onPressed: (){}, child: Text('EleButton')),
          OutlinedButton(onPressed: (){}, child: Text('outLine'))
        ],
      ),*/
        //Buitton for Action Dialog
        /*body: Center(
        child:   OutlinedButton(onPressed: (){myalertdialog(context);}, child: Text('outLine'))
      ),*/

        //Simple Form****
        /*  body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(padding: EdgeInsets.all(10),child: TextField(
            decoration: InputDecoration(labelText: 'First Name',border: OutlineInputBorder()),
          ),
    ),
          Padding(padding: EdgeInsets.all(10),child: TextField(
            decoration: InputDecoration(labelText: 'Last Name',border: OutlineInputBorder()),
          ),
          ),
          Padding(padding: EdgeInsets.all(10),child: TextField(
            decoration: InputDecoration(labelText: 'Email',border: OutlineInputBorder()),
          ),
          ),
          Padding(padding: EdgeInsets.all(10),
              child: ElevatedButton(onPressed: (){mysnackbar("Submitted", context);},
                child: Text('Submit'),style: buttonStyle,)
          )
        ],
      ),*/
        //list view Build
        /*   body: ListView.builder(
        itemCount: MyItems.length,
          itemBuilder:(context,index){
          return GestureDetector(
            onTap: (){mysnackbar(MyItems[index]['title'], context);},
            child: Container(
              margin: EdgeInsets.all(2),
              width: double.infinity,
              height: 200,
              child: Image.network(MyItems[index]['img']!,fit: BoxFit.fill,)
            ),

          );
          },
      ),*/
        /*   body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 0,
            childAspectRatio: 1.7
          ),
          itemCount: MyItems.length,
          itemBuilder:(context,index){
            return GestureDetector(
              onTap: (){mysnackbar(MyItems[index]['title'], context);},
              child: Container(
                  margin: EdgeInsets.all(2),
                  width: double.infinity,
                  height: 200,
                  child: Image.network(MyItems[index]['img']!,fit: BoxFit.fill,)
              ),

            );
          },
        ),*/
      ),
    );
  }

}
