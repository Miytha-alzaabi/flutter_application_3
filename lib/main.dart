import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  var controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            child: TextFormField(
              controller: controller,
              maxLength: 10,
              maxLines: 5,
              minLines: 1,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email),
                suffixIcon: Icon(Icons.person),
                //hintText: "Email or Phone",
                labelText: "Email",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20)
                )
              ),
            ),
          ),
          //TextField(),
          ElevatedButton(onPressed: (){
            print(controller.text);
          }, child: Text("Click Me"))
        ],
      ),
    );
  }
}

