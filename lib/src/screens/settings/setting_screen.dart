import 'package:flutter/material.dart';
import 'package:indi_chat_setu/src/services/library.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Constants.orangeColor,
            )),
        centerTitle: true,
        title: Text(
          "Setting",
          style: TextStyle(
            color: Constants.orangeColor,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Card(
                elevation: 10,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Image.asset(
                        Constants.prof,
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Narendra Modi",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Followers - 3.5M  Following - 123",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Constants.greyColor2,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              settingListTile(context, "Notifications", Icons.notifications,
                  "/notificationsSetting"),
              settingListTile(context, "Privacy", Icons.privacy_tip,
                  "/notificationsSetting"),
              settingListTile(
                  context, "Security", Icons.security, "/notificationsSetting"),
              settingListTile(context, "Theme", Icons.color_lens_sharp,
                  "/notificationsSetting"),
              settingListTile(context, "Request Account Info",
                  Icons.edit_document, "/notificationsSetting"),
              settingListTile(
                  context, "Help", Icons.help, "/notificationsSetting"),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: ListTile(
                  leading: Icon(Icons.logout, color: Colors.red),
                  title: Text(
                    "Log-Out",
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget settingListTile(context, String title, IconData icon, String route) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 5),
    child: ListTile(
      onTap: () {
        Navigator.pushNamed(context, route);
      },
      leading: Icon(icon),
      title: Text(title),
    ),
  );
}
