import 'package:flutter/material.dart';
import 'package:auth_flutter/sidemenu.dart';
import 'package:flutter/services.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(244, 243, 243, 1),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.black87,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer(); // Open the drawer
              },
            );
          },
        ),
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.vertical(bottom: Radius.circular(30))),
                padding: const EdgeInsets.all(20.0),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'About Us',
                      style: TextStyle(color: Colors.black87, fontSize: 20),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      'Creative Design',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 34,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Lorem ipsum odor amet, consectetuer adipiscing elit. Sit rhoncus vitae volutpat mus commodo quisque phasellus nisi. Conubia sed facilisi massa, odio porta justo. Non ad molestie duis netus, cras urna eget justo. Habitant praesent dolor ultrices fringilla dignissim pharetra nascetur. Neque lectus duis montes finibus sapien. Eu congue condimentum fringilla lacinia curae nullam. Nunc faucibus libero arcu, magna vel consequat.',
                      style: TextStyle(
                          color: Colors.black45,
                          fontSize: 16),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
      // ignore: prefer_const_constructors
      drawer: Sidemenu(),
    );
  }
}