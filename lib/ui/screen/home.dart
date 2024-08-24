import 'package:flutter/material.dart';
import 'package:notes_app_by_mysql_database/main.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              InkWell(
                  onTap: (){
                    sharedPreferences!.remove("email");
                    // CustomNavigation.pushReplacement(context,const Login());
                  },
                  child: const Icon(Icons.exit_to_app,size: 46,)),
              Center(
                child: Text("${sharedPreferences?.getString("emailLogin")}"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
