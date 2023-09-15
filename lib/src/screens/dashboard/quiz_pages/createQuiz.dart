import 'package:indi_chat_setu/src/services/library.dart';

class CreateQuiz extends StatefulWidget {
  const CreateQuiz({super.key});

  @override
  State<CreateQuiz> createState() => _CreateQuizState();
}

class _CreateQuizState extends State<CreateQuiz> {
  TextEditingController nameController = TextEditingController();
  TextEditingController quizNameController = TextEditingController();
  TextEditingController codeController = TextEditingController();
  String genreValue = "Select Genres";

  PlatformFile? pickedFile;
  String _filePath = '';
  Future pickPdfFromDevice() async {
    final result = await FilePicker.platform.pickFiles(
      allowedExtensions: ['png', 'jpeg', 'jpg'],
      type: FileType.custom,
    );
    if (result == null) return;

    setState(() {
      pickedFile = result.files.first;
      _filePath = pickedFile!.path ?? ''; //result.files.single.first;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Constants.orangeColor,
          ),
        ),
        title: Text(
          'Create Quiz',
          style: TextStyle(
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
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomWidgets.sizedBox(
                height: MediaQuery.of(context).size.height * 0.05),
            Center(
              child: InkWell(
                onTap: pickPdfFromDevice,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width * 0.4,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(
                    child: Column(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.03,
                        ),
                        Icon(
                          Icons.camera_alt,
                          size: MediaQuery.of(context).size.width * 0.1,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Upload your\nQuiz picture',
                          style: GoogleFonts.roboto(
                            color: Colors.black87,
                            fontSize: MediaQuery.of(context).size.width * 0.04,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            CustomWidgets.sizedBox(
                height: MediaQuery.of(context).size.height * 0.05),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.07,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Your Name',
                    style: GoogleFonts.roboto(
                      color: Colors.black,
                    ),
                  ),
                  buildFields(nameController, "Rohit1234"),
                  CustomWidgets.sizedBox(height: 10),
                  Text(
                    'Quiz Name',
                    style: GoogleFonts.roboto(
                      color: Colors.black,
                    ),
                  ),
                  buildFields(quizNameController, "Enter quiz name"),
                  CustomWidgets.sizedBox(height: 10),
                  Text(
                    'Create Quiz Code',
                    style: GoogleFonts.roboto(
                      color: Colors.black,
                    ),
                  ),
                  buildFields(codeController, "Enter quiz code"),
                  CustomWidgets.sizedBox(height: 10),
                  Text(
                    'Genres',
                    style: GoogleFonts.roboto(
                      color: Colors.black,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: MediaQuery.of(context).size.height * 0.015,
                    ),
                    child: DropdownButtonFormField<String>(
                      // borderRadius: BorderRadius.circular(10),
                      // validator: (nameValue) =>
                      //     nameValue == 'User Name' ? 'field required' : null,
                      icon: const Icon(Icons.keyboard_arrow_down_outlined),
                      dropdownColor: Colors.white,
                      value: genreValue,
                      items: <String>[
                        'Select Genres',
                        'Deactive',
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: GoogleFonts.roboto(
                              color: Colors.black45,
                            ),
                            // fontSize: 12,
                            // color: Colors.grey,
                          ),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          genreValue = newValue!;
                        });
                      },
                      decoration: const InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        counterStyle: TextStyle(
                          color: Colors.white,
                        ),
                        hintText: 'User Name',
                        hintStyle: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                        ),
                        contentPadding: EdgeInsets.fromLTRB(12, 8, 8, 1),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.white),
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.white),
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.white),
                        ),
                      ),
                      // ),
                    ),
                  ),
                ],
              ),
            ),
            CustomWidgets.sizedBox(
                height: MediaQuery.of(context).size.width * 0.2),
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.035,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Constants.orangeColor,
                    fixedSize: Size(
                      MediaQuery.of(context).size.width * 0.35,
                      MediaQuery.of(context).size.width * 0.14,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(19),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text('Add Questions'),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.035,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Constants.orangeColor,
                    fixedSize: Size(
                      MediaQuery.of(context).size.width * 0.35,
                      MediaQuery.of(context).size.width * 0.14,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(19),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text('Send Request'),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.035,
                ),
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
                  onPressed: () {},
                  child: const Icon(
                    Icons.arrow_forward,
                    size: 28,
                  ),
                ),
              ],
            ),
            CustomWidgets.sizedBox(
                height: MediaQuery.of(context).size.width * 0.1),
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
            color: Colors.black26,
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
            // borderRadius: BorderRadius.circular(0),
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
