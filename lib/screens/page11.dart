import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Page11Widget extends StatefulWidget {
  const Page11Widget({Key? key}) : super(key: key);

  @override
  State<Page11Widget> createState() => _Page11WidgetState();
}

class _Page11WidgetState extends State<Page11Widget> {
  final unfocusNode = FocusNode();
  late TextEditingController _textController;

  @override
  void initState() {
    super.initState();
    _textController = TextEditingController();
  }

  @override
  void dispose() {
    _textController.dispose();
    unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (unfocusNode.canRequestFocus) {
          FocusScope.of(context).requestFocus(unfocusNode);
        } else {
          FocusScope.of(context).unfocus();
        }
      },
      child: Scaffold(
        backgroundColor:
            Colors.white, // Change to your desired background color
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: AlignmentDirectional(0, 0),
                child: Padding(
                  padding: EdgeInsets.only(top: 300),
                  child: Text(
                    'How tall are you?',
                    style: GoogleFonts.readexPro(
                      fontSize: 32,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  width: 220,
                  height: 47,
                  decoration: BoxDecoration(
                    color: Colors.grey[200], // Change to your desired color
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 4,
                        color: Color(0x33000000),
                        offset: Offset(0, 2),
                      )
                    ],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextFormField(
                    controller: _textController,
                    focusNode: unfocusNode,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(horizontal: 12),
                      hintText: 'Enter your height',
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                //  Navigator.push(
                //           context,
                //           MaterialPageRoute(
                //             builder: (context) => ProfileWidget(),
                //           ),
                //         );
                },
                child: Text('Continue'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
