import 'package:flutter/material.dart';
import 'package:sample/Home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login UI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

//Login Page
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

  bool _validate = false;
  bool _validate1 = false;

  @override
  Widget build(BuildContext context) {
    final usernamecontroller = TextEditingController();
    final passwordcontroller = TextEditingController();
    //final logo = Image.asset("sample\assets\image\Logo.png");
    final usernameField = TextField(
      controller: usernamecontroller,
      obscureText: true,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "User Name",
          errorText:
              _validate ? (_validate1 ? null : 'Value Can\'t Be Empty') : null,
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
    final passwordField = TextField(
      controller: passwordcontroller,
      obscureText: true,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Password",
          errorText: _validate
              ? (_validate1
                  ? 'Incorrect Username Or Password!'
                  : 'Value Can\'t Be Empty')
              : null,
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
    final loginButon = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Color(0xff01A0C7),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          setState(() {
            usernamecontroller.text.isEmpty
                ? _validate = true
                // ignore: dead_code
                : _validate = false && passwordcontroller.text.isEmpty
                    ? _validate = true
                    : _validate = false ||
                            (usernamecontroller.text != "Admin" &&
                                passwordcontroller.text != "1234")
                        ? _validate1 = true
                        : Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Homepage()),
                          );

            // errorText:
            // _validate ? 'Incorrect Username Or Password!' : null;
          });
          // if (usernamecontroller != null &&
          //     usernamecontroller.text == "Admin" &&
          //     passwordcontroller != null &&
          //     passwordcontroller.text == "123") {
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(builder: (context) => Homepage()),
          //     );
          //   }
        },
        child: Text("Login",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
      //errorText: _validate ? 'Value Can\'t Be Empty' : null,
    );

    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(36.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                    height: 100.0,
                    //width: 300,
                    child: Image(
                        image: AssetImage('assets/image/Logo.png'
                            //fit: BoxFit.contain,
                            ))),
                // SizedBox(
                //     height: 155.0,
                //     child: new Image.asset('assets/Logo.png',
                //         width: 300, height: 100)),
                SizedBox(height: 45.0),
                usernameField,
                SizedBox(height: 25.0),
                passwordField,
                SizedBox(
                  height: 35.0,
                ),
                loginButon,
                SizedBox(
                  height: 15.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Home page
