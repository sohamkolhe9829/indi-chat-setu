import 'package:flutter/material.dart';
import 'package:indi_chat_setu/src/services/library.dart';

class NotificationsSetting extends StatefulWidget {
  const NotificationsSetting({super.key});

  @override
  State<NotificationsSetting> createState() => _NotificationsSettingState();
}

class _NotificationsSettingState extends State<NotificationsSetting> {
  bool isNotification = false;
  bool isPreview = false;
  bool isSound = false;
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
          "Notifications Setting",
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
                  child: Column(
                    children: [
                      ListTile(
                        title: Text("Messages Notifications"),
                        subtitle: Text("Show notifications for new messages"),
                        trailing: Checkbox(
                          value: isNotification,
                          onChanged: (value) {
                            setState(() {
                              isNotification = value!;
                            });
                          },
                        ),
                      ),
                      Divider(),
                      ListTile(
                        title: Text("Show preview"),
                        trailing: Checkbox(
                          value: isPreview,
                          onChanged: (value) {
                            setState(() {
                              isPreview = value!;
                            });
                          },
                        ),
                      ),
                      ListTile(
                        title: Text("Sound"),
                        subtitle: Text("Play sound for incomming message"),
                        trailing: Checkbox(
                          value: isSound,
                          onChanged: (value) {
                            setState(() {
                              isSound = value!;
                            });
                          },
                        ),
                      ),
                    ],
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
