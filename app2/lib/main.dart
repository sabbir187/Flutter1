import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main(){
  runApp(const myapp());//myapp
}
class myapp extends StatelessWidget{
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.brown),
    darkTheme: ThemeData(primarySwatch: Colors.red),
    color: Colors.deepOrange,
    home: HomeActivity(),);
  }

}
class HomeActivity extends StatelessWidget{
  const HomeActivity({super.key});

  mycnackbar(message,context){
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message))
    );
  }

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    floatingActionButton: FloatingActionButton(
      elevation: 30,
      child: Icon(Icons.add_circle),
      backgroundColor: Colors.indigo,
onPressed: (){mycnackbar("floting action", context);},
    ),
    appBar: AppBar(
      titleSpacing: 10,
      toolbarHeight: 60,
      toolbarOpacity: 1,
      backgroundColor: Colors.deepPurple,
      elevation: 1,

      title: Text("MyApp"),
      actions: [
        IconButton(onPressed: (){mycnackbar("Searching", context);}, icon: Icon(Icons.search)),
        IconButton(onPressed: (){mycnackbar("go to email", context);}, icon: Icon(Icons.email))
      ]
    ),

    bottomNavigationBar: BottomNavigationBar(
      backgroundColor: Colors.deepPurple,
      currentIndex: 0,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.message),label: "Message"),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: "profile"),

      ],

      onTap: (int index){
        if(index==0){
          mycnackbar("go to Home", context);
        }
        if(index==1){
          mycnackbar("go to message", context);
        }
        if(index==2){
          mycnackbar("go to profile", context);
        }
      },
    ),
    drawer: Drawer(
      child: ListView(
        children: [
          DrawerHeader(
               padding:EdgeInsets.all(0),
              child:UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.deepPurple),
                accountName: Text("Md Sabbir Ahmed"),
                accountEmail:Text("mdsabbirahmed187@gmail.com") ,
                currentAccountPicture: Image.network("https://o.remove.bg/downloads/e77c9f02-ebd7-4bae-b47b-0a16c11193f9/pngtree-the-flutter-colorful-design-png-image_6471373-removebg-preview.png"),
              )
          ),

          ListTile(leading: Icon(Icons.contact_emergency),
            title: Text("contact"),
            onTap: () {
            mycnackbar("emaergency contact6", context);
            },
          ),
          ListTile(leading: Icon(Icons.phone),
            title: Text("phone"),
            onTap: () {
              mycnackbar("contact with phone", context);
            },
          ),
          ListTile(leading: Icon(Icons.home),
            title: Text("home"),
            onTap: () {
              mycnackbar("go to homepage", context);
            },
          ),
          ListTile(leading: Icon(Icons.email),
            title: Text("email"),
            onTap: () {
              mycnackbar("email", context);
            },
          ),
          ListTile(leading: Icon(Icons.settings),
            title: Text("setting"),
            onTap: () {
              mycnackbar("go to setting", context);
            },
          ),
          ListTile(leading: Icon(Icons.logout),
            title: Text("LogOut"),
            onTap: () {
              mycnackbar("Logged Out", context);
            },
          ),


        ],
      ),
    ),
    endDrawer: Drawer(
      child: ListView(
        children: [
          DrawerHeader(
              padding:EdgeInsets.all(0),
              child:UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.deepPurple),
                accountName: Text("Md Sabbir Ahmed"),
                accountEmail:Text("mdsabbirahmed187@gmail.com") ,
                currentAccountPicture: Image.network("https://o.remove.bg/downloads/e77c9f02-ebd7-4bae-b47b-0a16c11193f9/pngtree-the-flutter-colorful-design-png-image_6471373-removebg-preview.png"),
              )
          ),

          ListTile(leading: Icon(Icons.contact_emergency),
            title: Text("contact"),
            onTap: () {
              mycnackbar("emaergency contact6", context);
            },
          ),
          ListTile(leading: Icon(Icons.phone),
            title: Text("phone"),
            onTap: () {
              mycnackbar("contact with phone", context);
            },
          ),
          ListTile(leading: Icon(Icons.home),
            title: Text("home"),
            onTap: () {
              mycnackbar("go to homepage", context);
            },
          ),
          ListTile(leading: Icon(Icons.email),
            title: Text("email"),
            onTap: () {
              mycnackbar("email", context);
            },
          ),
          ListTile(leading: Icon(Icons.settings),
            title: Text("setting"),
            onTap: () {
              mycnackbar("go to setting", context);
            },
          ),
          ListTile(leading: Icon(Icons.logout),
            title: Text("LogOut"),
            onTap: () {
              mycnackbar("Logged Out", context);
            },
          ),


        ],
      ),
    ),



    );

  }

}