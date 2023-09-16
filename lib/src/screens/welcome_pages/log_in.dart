import 'package:indi_chat_setu/src/services/library.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  TextEditingController _mobileNumber = TextEditingController();
  TextEditingController _email = TextEditingController();
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
                    'Log-in',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontFamily: 'Helvetica',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  CustomWidgets.sizedBox(height: 30),
                  SizedBox(
                      width: width * 0.8,
                      child: CustomWidgets.textField(
                          "Enter your mobile number", _mobileNumber)),
                  CustomWidgets.sizedBox(height: 30),
                  SizedBox(
                      width: width * 0.8,
                      child:
                          CustomWidgets.textField("Enter your E-mail", _email)),
                  CustomWidgets.sizedBox(height: height * 0.25),
                  CustomWidgets.elevatedButton(
                      context, "Next", height, width, "/otp")
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
