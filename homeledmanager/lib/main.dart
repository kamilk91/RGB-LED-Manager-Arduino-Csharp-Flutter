import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:grpc/grpc.dart';
import 'ledManager.pbgrpc.dart' as grpcService;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}
grpcService.ColorValue _test = grpcService.ColorValue();
class _MyHomePageState extends State<MyHomePage> {
  
  
  void createStream() {
    ChannelCredentials credits = ChannelCredentials.insecure();
    ClientChannel ch = new ClientChannel('192.168.1.45',
        port: 50055, options: new ChannelOptions(credentials: credits));
    this.cli = new grpcService.LedManagerClient(ch);
    

     this.stream =
         Stream<grpcService.ColorValue>.value(_test);
    cli.setColor(stream);
    this._streamController = new StreamController.broadcast();
    //this._streamController.addStream(stream);
  }

  int _counter = 0;
  Color pickerColor = Color(0xff443a49);
  Color currentColor = Color(0xff443a49);

  StreamController _streamController;
  grpcService.LedManagerClient cli;
  Stream<grpcService.ColorValue> stream;

  void turnOff(){
    grpcService.State req = new grpcService.State();
    cli.changeLightState(req);
  }

  void changeColor(Color color) {
    setState(() => pickerColor = color);
    grpcService.ColorValue val = new grpcService.ColorValue();
    val.r = color.red;
    val.g = color.green;
    val.b = color.blue;
    
    _test = val;
    if (!_streamController.isClosed) {
      

      //this.stream = Stream<grpcService.ColorValue>.value(val);
      //_streamController.add(this.stream);
      
      
    }
  }

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    createStream();
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ColorPicker(
              pickerColor: pickerColor,
              onColorChanged: changeColor,
              showLabel: true,
              pickerAreaHeightPercent: 0.8,
            ),
       
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.grey,
        onPressed: turnOff,
        tooltip: 'Turn off light',
        child: Icon(Icons.lightbulb_outline),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
