import 'package:flutter/material.dart';

import 'login.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  String pedidikan = "";
  bool SD = false;
  bool SMP = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Register',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue[900],
        centerTitle: true,
      ),
      backgroundColor: const Color.fromARGB(255, 214, 231, 245),
      body:ListView(children: [ 
      Padding(
        padding: EdgeInsets.all(10.0),
        child: 
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 20),
            Center(
              child: Text(
                'Register',
                style: TextStyle(
                  fontSize: 35,
                  color: Color.fromARGB(255, 125, 197, 244),
                ),
              ),
            ),
            SizedBox(height: 5),
            TextFieldWithIcon(
              hintText: "Username",
              prefixIcon: Icons.person,
            ),
            SizedBox(height: 5),
            TextFieldWithIcon(
              hintText: "Password",
              prefixIcon: Icons.lock,
              obscureText: true,
            ),
            SizedBox(height: 5),
            TextFieldWithIcon(
              hintText: "Confirm Password",
              prefixIcon: Icons.lock,
              obscureText: true,
            ),
            SizedBox(height: 5),
            TextFieldWithIcon(
              hintText: "Email",
              prefixIcon: Icons.email,
            ),
            SizedBox(height: 5),
            TextFieldWithIcon(
              hintText: "Phone Number",
              prefixIcon: Icons.phone,
            ),
            SizedBox(height: 5),
            TextFieldWithIcon(
              hintText: "Birthday",
              prefixIcon: Icons.calendar_today,
            ),
            SizedBox(height: 5),
            ListTile(
              title: Text("Education Level:"),
              subtitle: Column(
                children: [
                  RadioListTile(
                    value: "SD",
                    title: Text("SD"),
                    groupValue: pedidikan,
                    onChanged: (value) {
                      setState(() {
                        pedidikan = value!;
                        SD = true;
                        SMP = false;
                      });
                    },
                    selected: pedidikan == "SD",
                  ),
                  RadioListTile(
                    value: "SMP",
                    title: Text("SMP"),
                    groupValue: pedidikan,
                    onChanged: (value) {
                      setState(() {
                        pedidikan = value!;
                        SD = false;
                        SMP = true;
                      });
                    },
                    selected: pedidikan == "SMP",
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Login()),
                );
              },
              child: Text(
                'Create Account',
                style: TextStyle(fontSize: 17),
              ),
              style: ElevatedButton.styleFrom(
                shadowColor: Colors.blue[900],
                fixedSize: Size(200, 40),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ],
        ),
      ),
    ]));
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
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        hintText: hintText,
        prefixIcon: Icon(prefixIcon),
        contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      ),
    );
  }
}
