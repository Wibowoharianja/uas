import 'package:flutter/material.dart';
import 'package:frontend/buttonbar.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'LOGIN',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue[900],
        centerTitle: true,
      ),
      backgroundColor: Color.fromARGB(255, 224, 239, 250),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Let's Study",
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 125, 197, 244),
                ),
              ),
              SizedBox(height: 20),
              TextFieldWithIcon(
                hintText: "User name",
                prefixIcon: Icons.person,
              ),
              SizedBox(height: 10),
              TextFieldWithIcon(
                hintText: "Password",
                prefixIcon: Icons.lock,
                obscureText: true,
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Button()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  shadowColor: Color.fromARGB(255, 48, 58, 72),
                  surfaceTintColor: Colors.blue[900],
                  padding: EdgeInsets.symmetric(vertical: 15),
                  fixedSize: Size(200, 30),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  'LOGIN',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Forgot your login details?',
                    style: TextStyle(color: Color.fromARGB(255, 174, 218, 245)),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      ' Get help logging in',
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              SizedBox(height: 15),
              Text(
                'OR',
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: 15),
              ElevatedButton.icon(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return SimpleDialog(
                        title: Text("Login Akun Email"),
                        children: [
                          SimpleDialogOption(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Row(
                              children: [
                                Icon(Icons.email, color: Colors.blue,),
                                SizedBox(width: 8),
                                Text("wibowo12@email.com"),
                              ],
                            ),
                          ),
                          SimpleDialogOption(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Row(
                              children: [
                                Icon(Icons.email, color: Colors.blue,),
                                SizedBox(width: 8),
                                Text("221113032@students"),
                              ],
                            ),
                          ),
                          SimpleDialogOption(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Row(
                              children: [
                                Icon(Icons.email, color: Colors.blue,),
                                SizedBox(width: 8),
                                Text("harianja@email.com"),
                              ],
                            ),
                          ),
                        ],
                      );
                    },
                  );
                },
                icon: Icon(Icons.email),
                label: Text(
                  'Sign in with Email account',
                  style: TextStyle(color: Colors.blue),
                ),
                style: ElevatedButton.styleFrom(
                  shadowColor: Color.fromARGB(255, 83, 71, 71),
                  surfaceTintColor: Colors.blue[900],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

class TextFieldWithIcon extends StatelessWidget {
  final String hintText;
  final IconData prefixIcon;
  final bool obscureText;

  const TextFieldWithIcon({
    Key? key,
    required this.hintText,
    required this.prefixIcon,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      style: TextStyle(color: const Color.fromARGB(255, 90, 78, 78)),
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        hintText: hintText,
        hintStyle: TextStyle(color: Color.fromARGB(179, 69, 60, 60)),
        prefixIcon: Icon(prefixIcon, color: Colors.white),
        filled: true,
        fillColor: const Color.fromARGB(255, 78, 67, 67).withOpacity(0.2),
        contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      ),
    );
  }
}
