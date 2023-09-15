import 'package:indi_chat_setu/src/services/library.dart';

class QuizLogin extends StatefulWidget {
  const QuizLogin({super.key});

  @override
  State<QuizLogin> createState() => _QuizLoginState();
}

class _QuizLoginState extends State<QuizLogin> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController quizNameController = TextEditingController();
  final TextEditingController codeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          constraints: const BoxConstraints(),
          padding: EdgeInsets.zero,
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Constants.orangeColor,
          ),
        ),
        bottom: PreferredSize(
          preferredSize: const Size(0, 10),
          child: Divider(
            thickness: 1,
            color: Colors.grey[500],
          ),
        ),
        title: Text(
          'Join Quiz',
          style: TextStyle(
            color: Constants.orangeColor,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: Image.asset(
                  Constants.joinQuizPic,
                  // width: MediaQuery.of(context).size.width * 0.9,
                  // height: MediaQuery.of(context).size.width * 0.9,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.07,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Your name',
                    style: GoogleFonts.roboto(
                      color: Colors.black,
                    ),
                  ),
                  buildFields(nameController, "Rohit1234"),
                  CustomWidgets.sizedBox(height: 10),
                  Text(
                    'Quiz name',
                    style: GoogleFonts.roboto(
                      color: Colors.black,
                    ),
                  ),
                  buildFields(quizNameController, "Enter quiz name"),
                  CustomWidgets.sizedBox(height: 10),
                  Text(
                    'Quiz code',
                    style: GoogleFonts.roboto(
                      color: Colors.black,
                    ),
                  ),
                  buildFields(codeController, "Enter quiz code"),
                  const SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Constants.orangeColor,
                          fixedSize: Size(
                            MediaQuery.of(context).size.width * 0.08,
                            MediaQuery.of(context).size.width * 0.14,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(19),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const QATimer(),
                            ),
                          );
                        },
                        child: const Icon(
                          Icons.arrow_forward,
                          size: 28,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.05,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildFields(TextEditingController controller, String hintext) {
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: height * 0.015,
      ),
      child: TextFormField(
        controller: controller,
        validator: (controller) {
          if (controller == null || controller.isEmpty) {
            // Fluttertoast.showToast(msg: 'Please input every fields');
            return "Please enter $hintext";
          }
          return null;
        },
        textCapitalization: TextCapitalization.sentences,
        style: GoogleFonts.roboto(color: Colors.black),
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          // errorText: '',
          // errorStyle: const TextStyle(
          //   height: 0,
          //   color: Colors.transparent,
          // ),
          counterStyle: GoogleFonts.roboto(color: Colors.white70),
          hintText: hintext,
          hintStyle: GoogleFonts.roboto(
            color: Colors.black45,
          ), // TextStyle(
          //   color: Colors.black,
          //   fontSize: 15,
          // ),
          contentPadding: const EdgeInsets.fromLTRB(12, 8, 1, 1),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent, width: 1),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent, width: 1),
          ),
          border: const OutlineInputBorder(
            borderSide: BorderSide(
              width: 1,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
