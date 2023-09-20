import 'package:indi_chat_setu/src/services/library.dart';

class PersonType extends StatefulWidget {
  const PersonType({super.key});

  @override
  State<PersonType> createState() => PersonTypeState();
}

class PersonTypeState extends State<PersonType> {
  String personType = "none";
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      // appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomWidgets.sizedBox(height: height * 0.3),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Select',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontFamily: 'Helvetica',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  CustomWidgets.sizedBox(height: 30),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              personType = 'politician';
                            });
                          },
                          child: Container(
                              decoration: BoxDecoration(
                                color: personType == "politician"
                                    ? Color(0xFFF26727)
                                    : Colors.white,
                                border: Border.all(
                                  color:
                                      const Color(0xFFF26727), // Border color
                                  width: 2.0, // Border width
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              width: MediaQuery.of(context).size.width / 3 - 10,
                              height: height * 0.06,
                              child: const Padding(
                                padding: EdgeInsets.all(10.0),
                                child: FittedBox(
                                  child: Text(
                                    "I'm Politician",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 23,
                                      fontFamily: 'Helvetica',
                                      // fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              )),
                        ),
                        CustomWidgets.sizedBox(width: 10),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              personType = "other";
                            });
                          },
                          child: Container(
                              decoration: BoxDecoration(
                                color: personType == "other"
                                    ? Color(0xFFF26727)
                                    : Colors.white,
                                border: Border.all(
                                  color:
                                      const Color(0xFFF26727), // Border color
                                  width: 2.0, // Border width
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              width: MediaQuery.of(context).size.width / 3 - 10,
                              height: height * 0.06,
                              child: const Padding(
                                padding: EdgeInsets.all(10.0),
                                child: FittedBox(
                                  child: Text(
                                    "I'm Citizen",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontFamily: 'Helvetica',
                                      // fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              )),
                        ),
                        CustomWidgets.sizedBox(width: 10),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              personType = "citizen";
                            });
                          },
                          child: Container(
                              decoration: BoxDecoration(
                                color: personType == "citizen"
                                    ? Color(0xFFF26727)
                                    : Colors.white,
                                border: Border.all(
                                  color:
                                      const Color(0xFFF26727), // Border color
                                  width: 2.0, // Border width
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              width: MediaQuery.of(context).size.width / 3 - 20,
                              height: height * 0.06,
                              child: const Padding(
                                padding: EdgeInsets.all(10.0),
                                child: FittedBox(
                                  child: Text(
                                    "others",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontFamily: 'Helvetica',
                                      // fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              )),
                        ),
                      ],
                    ),
                  ),
                  CustomWidgets.sizedBox(height: height * 0.23),
                  CustomWidgets.elevatedButton(
                      context, "Next", height, width, "/home")
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
