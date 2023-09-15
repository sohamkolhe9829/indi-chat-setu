import 'package:indi_chat_setu/src/services/library.dart';

class TabBar3 extends StatefulWidget {
  const TabBar3({super.key});

  @override
  State<TabBar3> createState() => _TabBar3State();
}

class _TabBar3State extends State<TabBar3> {
  List<dynamic> chatList = [
    {
      "name": "Sent a message",
      "designation": "Jane Cooper",
      "profile_photo": Constants.profs,
      "time": "20:10",
    },
    {
      "name": "Sent a message",
      "designation": "Wade Warren",
      "profile_photo": Constants.profs2,
      "time": "01:15",
    },
    {
      "name": "Sent a message",
      "designation": "Jenny Wilson",
      "profile_photo": Constants.profs3,
      "time": "20:12",
    },
    {
      "name": "Sent a message",
      "designation": "Bessie Cooper",
      "profile_photo": Constants.profs4,
      "time": "20:10",
    },
    {
      "name": "Sent a message",
      "designation": "Jane Cooper",
      "profile_photo": Constants.profs,
      "time": "20:10",
    },
    {
      "name": "Sent a message",
      "designation": "Wade Warren",
      "profile_photo": Constants.profs2,
      "time": "01:15",
    },
    {
      "name": "Sent a message",
      "designation": "Jenny Wilson",
      "profile_photo": Constants.profs3,
      "time": "20:12",
    },
    {
      "name": "Sent a message",
      "designation": "Bessie Cooper",
      "profile_photo": Constants.profs4,
      "time": "20:10",
    },{
      "name": "Sent a message",
      "designation": "Jane Cooper",
      "profile_photo": Constants.profs,
      "time": "20:10",
    },
    {
      "name": "Sent a message",
      "designation": "Wade Warren",
      "profile_photo": Constants.profs2,
      "time": "01:15",
    },
    {
      "name": "Sent a message",
      "designation": "Jenny Wilson",
      "profile_photo": Constants.profs3,
      "time": "20:12",
    },
    {
      "name": "Sent a message",
      "designation": "Bessie Cooper",
      "profile_photo": Constants.profs4,
      "time": "20:10",
    },{
      "name": "Sent a message",
      "designation": "Jane Cooper",
      "profile_photo": Constants.profs,
      "time": "20:10",
    },
    {
      "name": "Sent a message",
      "designation": "Wade Warren",
      "profile_photo": Constants.profs2,
      "time": "01:15",
    },
    {
      "name": "Sent a message",
      "designation": "Jenny Wilson",
      "profile_photo": Constants.profs3,
      "time": "20:12",
    },
    {
      "name": "Sent a message",
      "designation": "Bessie Cooper",
      "profile_photo": Constants.profs4,
      "time": "20:10",
    },{
      "name": "Sent a message",
      "designation": "Jane Cooper",
      "profile_photo": Constants.profs,
      "time": "20:10",
    },
    {
      "name": "Sent a message",
      "designation": "Wade Warren",
      "profile_photo": Constants.profs2,
      "time": "01:15",
    },
    {
      "name": "Sent a message",
      "designation": "Jenny Wilson",
      "profile_photo": Constants.profs3,
      "time": "20:12",
    },
    {
      "name": "Sent a message",
      "designation": "Bessie Cooper",
      "profile_photo": Constants.profs4,
      "time": "20:10",
    },{
      "name": "Sent a message",
      "designation": "Jane Cooper",
      "profile_photo": Constants.profs,
      "time": "20:10",
    },
    {
      "name": "Sent a message",
      "designation": "Wade Warren",
      "profile_photo": Constants.profs2,
      "time": "01:15",
    },
    {
      "name": "Sent a message",
      "designation": "Jenny Wilson",
      "profile_photo": Constants.profs3,
      "time": "20:12",
    },
    {
      "name": "Sent a message",
      "designation": "Bessie Cooper",
      "profile_photo": Constants.profs4,
      "time": "20:10",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: ((context, index) {
          return chatTile(index);
        }),
        itemCount: chatList.length,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Constants.orangeColor.withOpacity(0.8),
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget chatTile(int index) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.006,
            vertical: MediaQuery.of(context).size.width * 0.006,
          ),
          child: ListTile(
            leading: CircleAvatar(
              radius: MediaQuery.of(context).size.width * 0.08,
              backgroundColor: Colors.white,
              backgroundImage: AssetImage(chatList[index]["profile_photo"]),
              child: Stack(
                children: const [
                  Align(
                    alignment: Alignment.bottomRight,
                    child: CircleAvatar(
                      radius: 8,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 6,
                        backgroundColor: Colors.green,
                      ),
                    ),
                  ),
                ],
              ),
              // child: ,
            ),
            title: Text(
              chatList[index]["designation"],
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                // fontSize: MediaQuery.of(context).size.width * 0.045,
              ),
            ),
            subtitle: Text(chatList[index]["name"]),
            trailing: Text(
              chatList[index]["time"],
              style: TextStyle(fontSize: 12, color: Colors.grey[600]),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.04,
          ),
          child: const Divider(
            color: Colors.black,
            thickness: 0.4,
          ),
        ),
      ],
    );
  }
}
