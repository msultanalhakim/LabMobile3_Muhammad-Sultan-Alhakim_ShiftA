import 'package:flutter/material.dart';
import 'package:auth_flutter/home_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  // ignore: prefer_typing_uninitialized_variables
  var namauser;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _header(context),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  _showInput(_usernameController, 'Username', false),
                  const SizedBox(height: 14),
                  _showInput(_passwordController, 'Password', true),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      if (_usernameController.text == 'admin' && _passwordController.text == 'admin'){
                        // Save Username
                        _saveUsername();
                        // Show Alert
                        _showDialog('You have been successfully login!', const HomePage());
                      } else {
                        // Show Alert
                        _showDialog('Username or Password incorrect!', const LoginPage());
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      shape: const StadiumBorder(),
                      padding: const EdgeInsets.symmetric(vertical: 16),
                    ),
                    child: const Text(
                      "Login",
                      style: TextStyle(fontSize: 16, color: Colors.black87),
                    ),
                  )
                ],
              ),
              _forgotPassword(context),
              _signup(context),
            ],
          ),
        ),
      ),
    );
  }

  _header(context) {
    return const Column(
      children: [
        Text(
          "Welcome Back",
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
        Text("Enter your credential to login"),
      ],
    );
  }

  void _saveUsername() async {
    // Inisialisasi Share Preferences
    SharedPreferences prefs = await SharedPreferences.getInstance();
    // Simpan Username ke Local Storage
    prefs.setString('username', _usernameController.text);
  }

  _showInput(namacontroller, placeholder, isPassword) {
    return TextField(
      controller: namacontroller,
      obscureText: isPassword,
      decoration: InputDecoration(
          hintText: placeholder,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              borderSide: BorderSide.none),
          fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
          filled: true,
          prefixIcon: const Icon(Icons.person)),
    );
  }

  _showDialog(pesan, alamat) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(pesan),
          actions: [
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => alamat,
                    ),
                );
              },
            ),
          ],
        );
      }
    );
  }

  _forgotPassword(context) {
    return TextButton(onPressed: () {}, child: const Text("Forgot password?"));
  }

  _signup(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Dont have an account? "),
        TextButton(onPressed: () {}, child: const Text("Sign Up"))
      ],
    );
  }
}
