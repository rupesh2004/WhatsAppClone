import 'package:flutter/material.dart';
import 'package:whatsappclone/forgetPassword.dart';
import 'package:whatsappclone/main.dart';
import 'package:whatsappclone/registerPage.dart';

void main() {
  runApp(const ForgetPasswordPage());
}

class ForgetPasswordPage extends StatelessWidget {
  const ForgetPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color hexToColor(String code) {
    return Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
  }

  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  final FocusNode _emailFocusNode = FocusNode();
  void _login() {
    // Implement your login logic here
    // For now, let's just navigate to the main page
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const MyApp()),
    );
  }

  final Color appBarColor = Color.fromARGB(255, 45, 210, 106);
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "WhatsApp",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: appBarColor,
        actions: <Widget>[
          Row(
            children: [
              IconButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("This is Camera")));
                },
                icon: const Icon(
                  Icons.camera_alt_outlined,
                  color: Colors.white,
                ),
                tooltip: "Camera",
              ),
              IconButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Search a perfect match")));
                },
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                tooltip: "Search",
              ),
              IconButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text("Other Options")));
                  },
                  icon: Icon(
                    Icons.menu,
                    color: Colors.white,
                  )),
            ],
          ),
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Container(
                    height: 100,
                    child: Row(
                      children: [
                        Expanded(
                          child: Image.asset(
                            'assets/images/whatsapplogo.png',

                            // Adjust width as needed
                          ),
                        ),
                      ],
                    )),
                SizedBox(
                  height: 30,
                ),
                const Text(
                  'Forgot Password',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 45, 210, 106)),
                ),
                SizedBox(
                  height: 20,
                ),
                Align(
                  child: Container(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    alignment: Alignment.center,
                    child:const  Text(
                      'Please enter your registered email to reset your password.',
                      textAlign: TextAlign.center, // Center text horizontally
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    controller: _usernameController,
                    decoration: InputDecoration(
                      labelText: 'Email ID',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.email),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 50,
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            side: MaterialStateProperty.all(
                                BorderSide(color: Colors.black, width: 1)),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                // Set border radius here
                              ),
                            ),
                            backgroundColor:
                                MaterialStateProperty.all(appBarColor),
                            foregroundColor:
                                MaterialStateProperty.all(Colors.white),
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Change Password',
                                style: TextStyle(fontSize: 20),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Icon(Icons
                                  .arrow_circle_right), // Add arrow icon here
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Remember Password?",
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RegisterPage()),
                            );
                          },
                          child: Text(
                            "Sign In",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: appBarColor),
                          ),
                        )
                      ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
