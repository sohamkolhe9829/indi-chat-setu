import 'package:indi_chat_setu/src/services/library.dart';

class PersonType extends StatefulWidget {
  const PersonType({super.key});

  @override
  State<PersonType> createState() => PersonTypeState();
}

class PersonTypeState extends State<PersonType> {
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
                  Text(
                    'Who Are You?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontFamily: 'Helvetica',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  CustomWidgets.sizedBox(height: 30),
                  Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xFFF26727), // Border color
                          width: 2.0, // Border width
                        ),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      width: width * 0.8,
                      height: height * 0.07,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.alarm),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "I'm Politician",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontFamily: 'Helvetica',
                                // fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      )),
                  CustomWidgets.sizedBox(height: 30),
                  Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xFFF26727), // Border color
                          width: 2.0, // Border width
                        ),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      width: width * 0.8,
                      height: height * 0.07,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.alarm),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "I'm Citizen",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontFamily: 'Helvetica',
                                // fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      )),
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
