import 'package:indi_chat_setu/src/services/library.dart';

class CustomWidgets {
  static SizedBox sizedBox({double height = 0.0, double width = 0.0}) {
    return SizedBox(
      height: height,
      width: width,
    );
  }

  static TextFormField textField(
      String labelText, TextEditingController controller) {
    return TextFormField(
      controller: controller,
      obscureText: labelText == "Password" ||
              labelText == "New Password" ||
              labelText == "Confirm Password"
          ? true
          : false,
      keyboardType: labelText == "Mobile Number"
          ? TextInputType.number
          : labelText == "Email" || labelText == "Registered Email ID"
              ? TextInputType.emailAddress
              : TextInputType.name,
      textCapitalization: TextCapitalization.words,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "Enter " + labelText;
        }
        return null;
      },
      maxLength: labelText == "Mobile Number" ? 10 : 1000,
      decoration: InputDecoration(
        counterText: "",
        isDense: true,
        enabledBorder: UnderlineInputBorder(
            // borderSide: BorderSide(
            //   color: Constants.greySliderColor,
            // ),
            ),
        focusedBorder: UnderlineInputBorder(
            // borderSide: BorderSide(
            //   color: Constants.greySliderColor,
            // ),
            ),
        contentPadding: EdgeInsets.all(0.0),
        labelStyle: TextStyle(
          // color: Constants.labelTextColor,
          fontSize: 16,
          fontFamily: "Bliss Pro",
          fontWeight: FontWeight.w500,
        ),
        labelText: labelText,
        helperStyle: TextStyle(fontSize: 12.0),
      ),
    );
  }

  static Container textOTPField(String labelText,
      TextEditingController controller, BuildContext context) {
    return Container(
      height: 50,
      child: Column(
        children: [
          Expanded(
            child: TextField(
              controller: controller,
              textAlign: TextAlign.center,
              textInputAction: TextInputAction.done,
              textCapitalization: TextCapitalization.words,
              keyboardType: TextInputType.number,
              //autofocus: true,
              // cursorColor: Colors.black,

              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
              maxLength: 1,
              onChanged: (_) =>
                  labelText == "1" ? null : FocusScope.of(context).nextFocus(),
              decoration: InputDecoration(
                counterText: '',
                filled: true,
                border: InputBorder.none,
              ),
            ),
          ),
          Container(
            height: 10,
            width: double.infinity,
            color: Color(0xFFF26727),
          )
        ],
      ),
    );
  }

  static SizedBox elevatedButton(
      context, String txt, double height, double width, String routeName) {
    return SizedBox(
      height: height * 0.055,
      width: width * 0.8,
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushReplacementNamed(context, routeName);
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Color(0xFFF26727)),
          elevation: MaterialStateProperty.all(10),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
        ),
        child: Text(
          txt,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontFamily: 'Poppins',
          ),
        ),
      ),
    );
  }

  static SizedBox elevatedThickButton(context, String txt, double height,
      double width, Color colr, Color colr1, String routeName) {
    return SizedBox(
      height: height * 0.07,
      width: width * 0.7,
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, routeName);
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(colr),
          elevation: MaterialStateProperty.all(10),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
        ),
        child: Text(
          txt,
          style: TextStyle(
            color: colr1,
            fontSize: 16,
            fontFamily: 'Poppins',
          ),
        ),
      ),
    );
  }
  // static void showToast(String message) {
  //   Fluttertoast.showToast(
  //       msg: message,
  //       textColor: Colors.white,
  //       backgroundColor: Colors.black,
  //       toastLength: Toast.LENGTH_SHORT,
  //       gravity: ToastGravity.CENTER,
  //       timeInSecForIosWeb: 1);
  // }

  // static Future setData(String keyName, String data) async {
  //   SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  //   sharedPreferences.setString(keyName, data);
  // }

  // static getData(String keyName) async {
  //   SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  //   return sharedPreferences.getString(keyName);
  // }
}
