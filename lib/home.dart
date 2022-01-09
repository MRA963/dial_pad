import 'package:flutter/material.dart';
import 'package:flutter_dialpad/flutter_dialpad.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Mobile Pad",
          style: TextStyle(
            color: Colors.grey,
            fontSize: 25,
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.black,
      body: SafeArea(
        child: DialPad(
          buttonTextColor: Colors.black,
          enableDtmf: false,
          outputMask: "00000-000000",
          buttonColor: Colors.white,
          backspaceButtonIconColor: Colors.green,
          makeCall: (number) {
            print(number);
          },
        ),
      ),
    );
  }
}
