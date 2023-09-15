import 'package:indi_chat_setu/src/services/library.dart';
// import 'package:indi_chat_setu/src/screens/dashboard/home_pages/appreciation.dart';
// import 'package:indi_chat_setu/src/screens/dashboard/home_pages/enquiry.dart';

class ChatUI extends StatefulWidget {
  const ChatUI({super.key});

  @override
  State<ChatUI> createState() => _ChatUIState();
}

class _ChatUIState extends State<ChatUI> {
  List<dynamic> chatList = [
    {
      "name": "Narendra Modi",
      "designation": "Prime Minister",
      "profile_photo": Constants.prof,
      "time": "20:10",
    },
    {
      "name": "Shiv Raj Singh Chohan",
      "designation": "CM of Madhay Pradesh",
      "profile_photo": Constants.prof2,
      "time": "01:15",
    },
    {
      "name": "Rameshwar Sharma",
      "designation": "MLA of Bhopal",
      "profile_photo": Constants.prof3,
      "time": "20:12",
    },
    {
      "name": "VD Sharma",
      "designation": "Ward Minister of Bhopal",
      "profile_photo": Constants.prof4,
      "time": "20:10",
    },
    {
      "name": "Narendra Modi",
      "designation": "Prime Minister",
      "profile_photo": Constants.prof,
      "time": "20:10",
    },
    {
      "name": "Shiv Raj Singh Chohan",
      "designation": "CM of Madhay Pradesh",
      "profile_photo": Constants.prof2,
      "time": "01:15",
    },
    {
      "name": "Rameshwar Sharma",
      "designation": "MLA of Bhopal",
      "profile_photo": Constants.prof3,
      "time": "20:12",
    },
    {
      "name": "VD Sharma",
      "designation": "Ward Minister of Bhopal",
      "profile_photo": Constants.prof4,
      "time": "20:10",
    },
    {
      "name": "Narendra Modi",
      "designation": "Prime Minister",
      "profile_photo": Constants.prof,
      "time": "20:10",
    },
    {
      "name": "Shiv Raj Singh Chohan",
      "designation": "CM of Madhay Pradesh",
      "profile_photo": Constants.prof2,
      "time": "01:15",
    },
    {
      "name": "Rameshwar Sharma",
      "designation": "MLA of Bhopal",
      "profile_photo": Constants.prof3,
      "time": "20:12",
    },
    {
      "name": "VD Sharma",
      "designation": "Ward Minister of Bhopal",
      "profile_photo": Constants.prof4,
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
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ViewProfile()));
            },
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
