import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:roz/screens/page9.dart';

class Page8Widget extends StatefulWidget {
  const Page8Widget({Key? key}) : super(key: key);

  @override
  State<Page8Widget> createState() => _Page8WidgetState();
}

class _Page8WidgetState extends State<Page8Widget> {
  final unfocusNode = FocusNode();

  @override
  void dispose() {
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
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: EdgeInsets.only(top: 250),
                    child: Text(
                      'Is your cycle...',
                      style: GoogleFonts.readexPro(
                        textStyle: const TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              // SizedBox(height: 20,),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: ElevatedButton(
                  onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Page9Widget(),
                          ),
                        );
                      },
                  style: ElevatedButton.styleFrom(
                    backgroundColor:  Color(0xFF7871A7),
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    'Regular',
                    style: GoogleFonts.readexPro(
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
              // SizedBox(height: 10,),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 1),
                child: ElevatedButton(
                  onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Page9Widget(),
                          ),
                        );
                      },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF7871A7),
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    'Irregular',
                    style: GoogleFonts.readexPro(
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: EdgeInsets.only(bottom: 256),
                child: ElevatedButton(
                  onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Page9Widget(),
                          ),
                        );
                      },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF7871A7),
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    'I am not sure',
                    style: GoogleFonts.readexPro(
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
