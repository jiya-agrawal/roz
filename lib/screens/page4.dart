import 'package:flutter/material.dart';
import 'package:roz/screens/page5.dart';

class Page4Model {
  final unfocusNode = FocusNode();

  void dispose() {
    unfocusNode.dispose();
  }
}

class Page4Widget extends StatefulWidget {
  const Page4Widget({Key? key}) : super(key: key);

  @override
  State<Page4Widget> createState() => _Page4WidgetState();
}

class _Page4WidgetState extends State<Page4Widget> {
  late Page4Model _model;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = Page4Model();
  }

  @override
  void dispose() {
    _model.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Handle tap event here
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => Page5()));
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsets.fromLTRB(20, 50, 20, 0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(90, 300, 70, 0),
                    child: Text(
                      'Nice to meet you Hibah!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Readex Pro',
                        color: Color(0xFF9A93BD),
                        fontSize: 18,
                        fontWeight: FontWeight.w900
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
