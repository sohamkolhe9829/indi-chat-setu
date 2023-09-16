import 'package:indi_chat_setu/src/screens/welcome_pages/log_in.dart';
import 'package:indi_chat_setu/src/screens/welcome_pages/sign_up.dart';
import 'package:indi_chat_setu/src/services/library.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => WelcomeScreenState();
}

class WelcomeScreenState extends State<WelcomeScreen> {
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
                  Image.asset(Constants.welcomeLogo),
                  CustomWidgets.sizedBox(height: height * 0.2),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginScreen(),
                          ));
                    },
                    child: CustomWidgets.elevatedThickButton(
                        context,
                        "Log-in",
                        height,
                        width,
                        Color(0xFFF26727),
                        Colors.white,
                        "/login"),
                  ),
                  CustomWidgets.sizedBox(height: 30),
                  CustomWidgets.elevatedThickButton(context, "Sign-up", height,
                      width, Color(0xFFE6E6E6), Colors.black, "/signup")
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
