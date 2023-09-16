import 'package:indi_chat_setu/src/services/library.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => OtpScreenState();
}

class OtpScreenState extends State<OtpScreen> {
  TextEditingController _otpController1 = TextEditingController();
  TextEditingController _otpController2 = TextEditingController();
  TextEditingController _otpController3 = TextEditingController();
  TextEditingController _otpController4 = TextEditingController();

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
                    'OTP',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontFamily: 'Helvetica',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  CustomWidgets.sizedBox(height: 10),
                  SizedBox(
                    width: width * 0.8,
                    child: const Text(
                      'We have sent you a four digit code on your resistered mobile number',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 0.5),
                          fontFamily: 'Helvetica',
                          fontSize: 15,
                          letterSpacing:
                              0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                          height: 1),
                    ),
                  ),
                  SizedBox(
                    width: width * 0.4,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Text(
                          '+91-*******896',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 0.5),
                              fontFamily: 'Helvetica',
                              fontSize: 15,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        ),
                        Text(
                          'Edit',
                          style: TextStyle(
                            color: Color(0xFFF26727),
                            fontSize: 15,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                  ),
                  CustomWidgets.sizedBox(height: 40),
                  SizedBox(
                    width: width * 0.6,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: width * 0.1,
                          child: CustomWidgets.textOTPField(
                              "_", _otpController1, context),
                        ),
                        SizedBox(
                          width: width * 0.1,
                          child: CustomWidgets.textOTPField(
                              "", _otpController2, context),
                        ),
                        SizedBox(
                          width: width * 0.1,
                          child: CustomWidgets.textOTPField(
                              "", _otpController3, context),
                        ),
                        SizedBox(
                          width: width * 0.1,
                          child: CustomWidgets.textOTPField(
                              "", _otpController4, context),
                        ),
                      ],
                    ),
                  ),
                  CustomWidgets.sizedBox(height: 20),
                  Text(
                    '01:00',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  CustomWidgets.sizedBox(height: 20),
                  SizedBox(
                    width: width * 0.8,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Resend Code',
                          style: TextStyle(
                            color: Color(0xFFF26727),
                            fontSize: 13,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          "    I didn't get the code",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 0.5),
                              fontFamily: 'Helvetica',
                              fontSize: 13,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        ),
                      ],
                    ),
                  ),
                  CustomWidgets.sizedBox(height: height * 0.15),
                  CustomWidgets.elevatedButton(
                      context, "Next", height, width, "/personType"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
