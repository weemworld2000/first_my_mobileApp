import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {

  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _usernameController.text = "Admin";
    _passwordController.text = "1234";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
        backgroundColor: Colors.lime.withOpacity(1),
      ),
      backgroundColor: const Color.fromARGB(255, 255, 242, 122).withOpacity(1),
      body: Container(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Card(
            child: Container(
              padding: const EdgeInsets.all(32),
              height: 600,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisSize: MainAxisSize.min, // ให้ Column มีขนาดของสูงเท่าที่จำเป็น
                    children: [
                      ..._buildTextFields(),
                      SizedBox(height: 32),
                      ..._buildButtons(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _handleClickLogin() {
    print("Weemworld:login: with ${_usernameController.text}, ${_passwordController.text}");
  }

  void _handleClickReset() {
    _usernameController.text = "";
    _passwordController.text = "";
  }

  _buildTextFields(){
    return [
      TextField(
        controller: _usernameController,
        decoration: InputDecoration(labelText: "Username"),
      ),
      TextField(
        controller: _passwordController,
        decoration: InputDecoration(labelText: "Password"),
        obscureText: true,
      ),
    ];
  }
  
  _buildButtons() {
    return [
      ElevatedButton(
        onPressed: _handleClickLogin,
        child: Text("Login"),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.lime),
        ),
      ),
      SizedBox(height: 16), // เพิ่มระยะห่างระหว่างปุ่ม
      OutlinedButton(
        onPressed: _handleClickReset,
        child: Text("Reset"),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(241, 255, 119, 1)),
        ),
      ),
    ];
  }
}
