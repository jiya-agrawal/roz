import 'package:flutter/material.dart';
import 'package:roz/screens/page7.dart';

class Page6Model {
  final unfocusNode = FocusNode();

  void dispose() {
    unfocusNode.dispose();
  }
}

class Page6Widget extends StatefulWidget {
  const Page6Widget({Key? key}) : super(key: key);

  @override
  State<Page6Widget> createState() => _Page6WidgetState();
}

class _Page6WidgetState extends State<Page6Widget> {
  late Page6Model _model;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  late TextEditingController _textEditingController;

  @override
  void initState() {
    super.initState();
    _model = Page6Model();
    _textEditingController = TextEditingController();
  }

  @override
  void dispose() {
    _model.dispose();
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Align(
                  alignment: AlignmentDirectional.center,
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 20.0),
                    child: Text(
                      'Enter your Birth year',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  child: TextFormField(
                    controller: _textEditingController,
                    decoration: InputDecoration(
                      hintText: 'Enter your birth year',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Page7Widget(),
                          ),
                        );
                      },
                      child: Text(
                        'Continue',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF7871A7),
                        
                      ) 
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
