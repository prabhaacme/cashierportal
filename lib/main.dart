import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:testproject/Provider/DashBoardProvider.dart';
import 'package:testproject/Provider/LoginProvider.dart';
import 'package:testproject/Screens/Login.dart';
import 'package:intl/intl.dart';

void main() {
  
         WidgetsFlutterBinding.ensureInitialized();
          SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft]);
  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<LoginProvider>(
            create: (BuildContext context) => LoginProvider()),
            ChangeNotifierProvider<DashboardProvider>(
            create: (BuildContext context) => DashboardProvider()),
      ],
          child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
         primarySwatch: Colors.blue,
        ),
        home: MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String ?date;
  String ?time;
getcurrentDate(){
   var now = DateTime.now();
   setState(() {
     date=DateFormat.yMMMMd().format(now).toString();
     time=DateFormat.jms().format(now).toString();
   });
   
}
@override
  void initState() {
    getcurrentDate();
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body:LoginPage(
        date: date!,
        time: time!,
      )// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
