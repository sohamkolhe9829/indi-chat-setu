import 'package:indi_chat_setu/src/services/library.dart';
import 'package:location/location.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => SignupScreenState();
}

class SignupScreenState extends State<SignupScreen> {
  final List<String> _nationalityOptions = [
    "Indian",
    "American",
    "Monthly",
    "Yearly"
  ];
  String? _nationality = "Indian";
  final List<String> _genderOptions = [
    "Gender",
    "Male",
    "Female",
  ];
  String? _gender = "Gender";
  TextEditingController _mobileNumber = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _fullName = TextEditingController();
  late bool _serviceEnabled;
  late PermissionStatus _permissionGranted;
  LocationData? _userLocation;

  Future<void> _getUserLocation() async {
    Location location = Location();

    // Check if location service is enable
    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        return;
      }
    }

    // Check if permission is granted
    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return;
      }
    }

    final _locationData = await location.getLocation();
    print(_locationData.latitude);
    print(_locationData.longitude);

    setState(() {
      _userLocation = _locationData;
    });
    print(_userLocation);
  }

  @override
  void initState() {
    _getUserLocation();
    super.initState();
  }

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
              CustomWidgets.sizedBox(height: height * 0.15),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Sign-up',
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
                          "Enter your full name", _fullName)),
                  CustomWidgets.sizedBox(height: 30),
                  SizedBox(
                      width: width * 0.8,
                      child: CustomWidgets.textField(
                          "Enter your mobile number", _mobileNumber)),
                  CustomWidgets.sizedBox(height: 30),
                  SizedBox(
                      width: width * 0.8,
                      child: CustomWidgets.textField(
                          "Enter your E-mail address", _email)),
                  CustomWidgets.sizedBox(height: 20),
                  SizedBox(
                      width: width * 0.8,
                      child: _dropDown(_nationality!, _nationalityOptions)),
                  CustomWidgets.sizedBox(height: 20),
                  SizedBox(
                    width: width * 0.8,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                            width: width * 0.35,
                            child: _dropDown(_gender!, _genderOptions)),
                        SizedBox(
                            width: width * 0.35,
                            child:
                                _dropDown(_nationality!, _nationalityOptions)),
                      ],
                    ),
                  ),
                  CustomWidgets.sizedBox(height: 20),
                  SizedBox(
                      width: width * 0.8,
                      child: _dropDown(_nationality!, _nationalityOptions)),
                  CustomWidgets.sizedBox(height: height * 0.1),
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

  Widget _dropDown(String _selectedvalue, List<String> _options) {
    return DropdownButton<String>(
      value: _selectedvalue,
      onChanged: (value) {
        setState(() {
          _selectedvalue = value!;
        });
      },
      underline: Container(
        height: 2,
        color: Colors.grey,
      ),
      dropdownColor: Colors.grey[300],
      icon: const Icon(
        Icons.expand_more,
      ),
      isExpanded: true,

      // The list of options
      items: _options
          .map((e) => DropdownMenuItem(
                value: e,
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    e,
                    style: const TextStyle(fontSize: 16),
                  ),
                ),
              ))
          .toList(),
      // Customize the selected item
      selectedItemBuilder: (BuildContext context) => _options
          .map((e) => Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: Text(
                  e,
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
              ))
          .toList(),
    );
  }
}
