import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'todo_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    bool isChecked = false;

    Widget titleSection = const Padding(
      padding: EdgeInsets.all(32),
      child: Text(
        'Sign in',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30
        ),
      ),
    );

    Widget socialSection = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {
            //
          },
          icon: const FaIcon(
            FontAwesomeIcons.google,
          )
        ),
        IconButton(
          onPressed: () {
            //
          },
          icon: const FaIcon(
            FontAwesomeIcons.facebookF,
          )
        ),
        IconButton(
          onPressed: () {
            //
          },
          icon: const FaIcon(
            FontAwesomeIcons.apple,
          )
        ),
      ],
    );

    Widget loginFormSection = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       const Text(
          'Email',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
       const TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Enter your Email'
          ),
        ),
        const Text(
          'Password',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        const TextField(
          obscureText: true,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Enter your Password'
          ),
        ),
        Row(
          children: [
            Checkbox(
              value: isChecked,
              checkColor: Colors.white,
              activeColor: Colors.red,
              onChanged: (bool? value) {
                //
              },
            ),
            const Text(
              'Remember me'
            )
          ],
        )
      ],
    );

    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter demo'),
        ),
        body: Column(
          children: [
            titleSection,
            socialSection,
            const Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                'OR',
                style: TextStyle(
                  fontWeight: FontWeight.w600
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 128,
                right: 128,
              ),
              child: loginFormSection,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const TodoList()
                      )
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[500], 
                  ),
                  child: const Text(
                    'Sign In',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    //
                  },
                  child: const Text(
                    'Forgot password?',
                    style: TextStyle(
                      color: Colors.orange,
                    ),
                  )
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
