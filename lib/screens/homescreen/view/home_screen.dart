import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int i = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text(
            "Stepper App",
          ),
        ),
        body: Theme(
          data: Theme.of(context).copyWith(colorScheme: ColorScheme.light(primary: Colors.red)),
          child: Stepper(
            currentStep: i,
            onStepContinue: () {
              setState(() {
                if(i<2)
                  {
                    i++;
                  }
              });
            },
            onStepCancel: () {
              setState(() {
                if(i>0)
                  {
                    i--;
                  }
              });
            },
            steps: [
              Step(
                isActive: true,
                title: Text("Sign Up"),
                  content:Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(border: Border.all(color: Colors.grey.shade500,width: 1)),
                        child: ListTile(
                          leading: Icon(Icons.person),
                          title: Text("Full Name"),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(border: Border.all(color: Colors.grey.shade500,width: 1)),
                        child: ListTile(
                          leading: Icon(Icons.lock),
                          title: Text("Password"),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(border: Border.all(color: Colors.grey.shade500,width: 1)),
                        child: ListTile(
                          leading: Icon(Icons.lock),
                          title: Text("Confirm Password"),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(border: Border.all(color: Colors.grey.shade500,width: 1)),
                        child: ListTile(
                          leading: Icon(Icons.email),
                          title: Text("Email"),
                        ),
                      ),
                    ],
                  ),
              ),
              Step(isActive: true,title: Text("Login"), content: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(border: Border.all(color: Colors.grey.shade500,width: 1)),
                    child: ListTile(
                      leading: Icon(Icons.person),
                      title: Text("User Name"),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(border: Border.all(color: Colors.grey.shade500,width: 1)),
                    child: ListTile(
                      leading: Icon(Icons.lock),
                      title: Text("Password"),
                    ),
                  ),
                ],
              ),),
              Step(isActive: true,title: Text("Home"), content: TextField(),),
            ],
          ),
        ),
      ),
    );
  }
}
