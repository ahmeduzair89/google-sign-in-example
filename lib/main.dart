import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_signin_example/controllers/auth_controller.dart';
import 'package:google_signin_example/firebase_options.dart';
import 'package:google_signin_example/repo/auth_repo.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Google Sign In Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<AuthController>(
          init: AuthController(),
          builder: (AuthController con) {
            return Container(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      con.handleGoogleSignin();
                    },
                    child: Text("Sign in with Google"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  con.isLodingState == false
                      ? Container()
                      : Container(
                          alignment: Alignment.center,
                          height: 80,
                          width: 80,
                          child: CircularProgressIndicator(),
                        ),
                  con.user == null
                      ? Container()
                      : Column(
                          children: [
                            Text(con.user!.email!),
                            Text(con.user!.displayName!),
                            SizedBox(
                              height: 10,
                            ),
                            ElevatedButton(
                              onPressed: () {
                                con.handleGoogleSignOut();
                              },
                              child: Text("Sign out"),
                            ),
                          ],
                        )
                ],
              ),
            );
          }),
    );
  }
}
