import 'package:indi_chat_setu/src/screens/welcome_pages/log_in.dart';
import 'package:indi_chat_setu/src/screens/welcome_pages/otp.dart';
import 'package:indi_chat_setu/src/screens/welcome_pages/person_type.dart';
import 'package:indi_chat_setu/src/screens/welcome_pages/sign_up.dart';
import 'package:indi_chat_setu/src/screens/welcome_pages/welcome.dart';
import 'package:indi_chat_setu/src/services/library.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/login': (context) => LoginScreen(),
        '/signup': (context) => SignupScreen(),
        '/otp': (context) => OtpScreen(),
        '/personType': (context) => PersonType(),
        '/home': (context) => HomeScreen(),
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const WelcomeScreen(),
    );
  }
}
