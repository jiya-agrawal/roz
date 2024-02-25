import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:roz/screens/page11.dart';

class Page9Model {
  final unfocusNode = FocusNode();

  void dispose() {
    unfocusNode.dispose();
  }
}

class Page9Widget extends StatefulWidget {
  const Page9Widget({Key? key}) : super(key: key);

  @override
  State<Page9Widget> createState() => _Page9WidgetState();
}

class _Page9WidgetState extends State<Page9Widget> {
  late Page9Model _model;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = Page9Model();
  }

  @override
  void dispose() {
    _model.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white, // Set your desired background color
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.only(top: 130, bottom: 20),
                  child: Text(
                    'How does your cycle impact you?',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.readexPro(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              // Buttons
              _buildButton(context, 'Cramps'),
              _buildButton(context, 'Mood swings'),
              _buildButton(context, 'Bloating'),
              _buildButton(context, 'Headaches'),
              _buildButton(context, 'Fatigue'),
              _buildButton(context, 'Tender Breasts'),
              _buildButton(context, 'Spotting'),
              _buildButton(context, 'Backache'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildButton(BuildContext context, String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: SizedBox(
        width: 200,
        height: 40,
        child: ElevatedButton(
          onPressed: () {
           Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Page11Widget(),
              ),
            );
          },
          style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all<Color>(Color(0xFF7871A7)),
            shape: MaterialStateProperty.all<OutlinedBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
          child: Text(
            text,
            style: GoogleFonts.readexPro(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
