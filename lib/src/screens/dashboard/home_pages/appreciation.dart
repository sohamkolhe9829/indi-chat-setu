import 'package:indi_chat_setu/src/services/library.dart';
import 'package:indi_chat_setu/src/widgets/app_bar.dart';

class Appreciation extends StatefulWidget {
  const Appreciation({super.key});

  @override
  State<Appreciation> createState() => _AppreciationState();
}

class _AppreciationState extends State<Appreciation> {
  TextEditingController enquiryController = TextEditingController();

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

  _appBar(height) => PreferredSize(
        preferredSize: Size(MediaQuery.of(context).size.width, height + 40),
        child: Stack(
          children: <Widget>[
            Positioned(
              // To take AppBar Size only
              top: 40.0,
              left: 4.0,
              right: 4.0,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.07,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Constants.orangeColor,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(12),
                  ),
                ),
                child: buildInfo(context),
              ),
            ),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    double mediaQueryHeight = MediaQuery.of(context).size.height;
    double mediaQueryWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      // appBar: PreferredSize(
      //   preferredSize:
      //       Size(MediaQuery.of(context).size.width, mediaQueryHeight + 40),
      //   child: AppBarWidget.navigationAppBar(context),
      // ),
      appBar: _appBar(AppBar().preferredSize.height),
      // AppBar(
      //   backgroundColor: Colors.white,
      //   elevation: 0,
      //   automaticallyImplyLeading: false,
      //   // titleSpacing: mediaQueryWidth * 0.5,
      //   title: Padding(
      //     padding: EdgeInsets.symmetric(
      //       // horizontal: mediaQueryWidth * 0.02,
      //       vertical: mediaQueryHeight * 0.01,
      //     ),
      //     child: Container(
      //       height: mediaQueryHeight * 0.068,
      //       width: mediaQueryWidth,
      //       decoration: const BoxDecoration(
      //         color: Color(0xfff26727),
      //         borderRadius: BorderRadius.all(
      //           Radius.circular(20),
      //         ),
      //       ),
      //       child: buildInfo(),
      //     ),
      //   ),
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Text(
                'Appreciation',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: mediaQueryWidth * 0.06,
                ),
              ),
            ),
            CustomWidgets.sizedBox(height: mediaQueryHeight * 0.05),
            Container(
              width: mediaQueryWidth * 0.9,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color(0xffF1F1F1),
              ),
              child: Column(
                children: [
                  buildFields(enquiryController, "Enter your Appreciation"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        padding: const EdgeInsets.symmetric(horizontal: 7),
                        constraints: const BoxConstraints(),
                        onPressed: () {},
                        icon: const Icon(
                          Icons.camera_alt_outlined,
                        ),
                      ),
                      IconButton(
                        padding: const EdgeInsets.symmetric(horizontal: 7),
                        constraints: const BoxConstraints(),
                        onPressed: pickPdfFromDevice,
                        icon: const Icon(
                          Icons.attach_file,
                        ),
                      ),
                      IconButton(
                        padding: const EdgeInsets.symmetric(horizontal: 7),
                        constraints: const BoxConstraints(),
                        onPressed: () {},
                        icon: const Icon(
                          Icons.emoji_emotions_outlined,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: mediaQueryWidth * 0.2,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xfff26727),
                fixedSize: Size(
                  mediaQueryWidth * 0.8,
                  mediaQueryWidth * 0.1,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(19),
                ),
              ),
              onPressed: () {},
              child: Text(
                'Send',
                style: TextStyle(
                  fontSize: mediaQueryWidth * 0.045,
                ),
                // style: GoogleFonts.zillaSlab( //KK
                //   fontSize: mediaQueryWidth * 0.045,
                // ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildFields(TextEditingController controller, String hintext) {
    return TextFormField(
      maxLines: 14,
      controller: controller,
      validator: (controller) {
        if (controller == null || controller.isEmpty) {
          // Fluttertoast.showToast(msg: 'Please input every fields');
          return "Please enter $hintext";
        }
        return null;
      },
      textCapitalization: TextCapitalization.sentences,
      style: const TextStyle(color: Colors.black),
      decoration: InputDecoration(
        // errorText: '',
        // errorStyle: const TextStyle(
        //   height: 0,
        //   color: Colors.transparent,
        // ),
        counterStyle: const TextStyle(color: Colors.white70),
        hintText: hintext,
        hintStyle: const TextStyle(), // TextStyle(
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
    );
  }

  Widget buildInfo(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            IconButton(
              constraints: const BoxConstraints(),
              padding: EdgeInsets.zero,
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_sharp),
              color: Colors.white,
            ),
            SizedBox(width: MediaQuery.of(context).size.width * 0.015),
            CircleAvatar(
              radius: MediaQuery.of(context).size.width * 0.05,
              backgroundColor: Colors.white,
              backgroundImage: AssetImage(Constants.prof),
            ),
            SizedBox(width: MediaQuery.of(context).size.width * 0.025),
            Text(
              "Narendra Modi",
              style: TextStyle(
                color: Colors.white,
                fontSize: MediaQuery.of(context).size.width * 0.044,
              ), //TextStyle(
              //   fontSize: MediaQuery.of(context).size.width * 0.045,
              //   color: Colors.white,
              // ),
            ),
            SizedBox(width: MediaQuery.of(context).size.width * 0.045),
          ],
        ),
        Row(
          children: [
            IconButton(
              onPressed: () {},
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(),
              icon: const Icon(Icons.local_fire_department_outlined),
              iconSize: 25,
              color: Colors.white,
            ),
            SizedBox(width: MediaQuery.of(context).size.width * 0.033),
            IconButton(
              onPressed: () {},
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(),
              icon: const Icon(Icons.back_hand_outlined),
              iconSize: 20,
              color: Colors.white,
            ),
            SizedBox(width: MediaQuery.of(context).size.width * 0.033),
            IconButton(
              onPressed: () {},
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(),
              icon: const Icon(Icons.help_outline),
              iconSize: 25,
              color: Colors.white,
            ),
            SizedBox(width: MediaQuery.of(context).size.width * 0.02),
            IconButton(
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(),
              onPressed: () {
                PopupMenuButton<int>(
                  // onSelected: (item) => handleClick(item),
                  itemBuilder: (context) => [
                    const PopupMenuItem<int>(value: 0, child: Text('BLANK')),
                    const PopupMenuItem<int>(
                        value: 1, child: Text('AGAIN BLANK')),
                  ],
                );
              },
              icon: const Icon(
                Icons.more_vert,
                size: 25,
                color: Colors.white,
              ),
            ),
            SizedBox(width: MediaQuery.of(context).size.width * 0.03),
          ],
        )
      ],
    );
  }
}
