import 'package:indi_chat_setu/src/services/library.dart';

class Mentions extends StatefulWidget {
  const Mentions({super.key});

  @override
  State<Mentions> createState() => _MentionsState();
}

class _MentionsState extends State<Mentions> {
  List<dynamic> followList = [
    {
      "name": "Narendra Modi",
      "designation": "Prime Minister",
      "profile_photo": Constants.prof,
      "notification": "Started following you",
      "time": "20:10",
    },
    {
      "name": "Narendra Modi",
      "designation": "Prime Minister",
      "profile_photo": Constants.prof,
      "notification": "Started following you",
      "time": "20:10",
    },
    {
      "name": "Narendra Modi",
      "designation": "Prime Minister",
      "profile_photo": Constants.prof,
      "notification": "Started following you",
      "time": "20:10",
    },
    {
      "name": "Narendra Modi",
      "designation": "Prime Minister",
      "profile_photo": Constants.prof,
      "notification": "Started following you",
      "time": "20:10",
    },
    {
      "name": "Narendra Modi",
      "designation": "Prime Minister",
      "profile_photo": Constants.prof,
      "notification": "Started following you",
      "time": "20:10",
    },
    {
      "name": "Narendra Modi",
      "designation": "Prime Minister",
      "profile_photo": Constants.prof,
      "notification": "Started following you",
      "time": "20:10",
    },
    {
      "name": "Narendra Modi",
      "designation": "Prime Minister",
      "profile_photo": Constants.prof,
      "notification": "Started following you",
      "time": "20:10",
    },
    {
      "name": "Narendra Modi",
      "designation": "Prime Minister",
      "profile_photo": Constants.prof,
      "notification": "Started following you",
      "time": "20:10",
    },
    {
      "name": "Narendra Modi",
      "designation": "Prime Minister",
      "profile_photo": Constants.prof,
      "notification": "Liked post",
      "time": "20:10",
    },
    {
      "name": "Narendra Modi",
      "designation": "Prime Minister",
      "profile_photo": Constants.prof,
      "notification": "Started following you",
      "time": "20:10",
    },
    {
      "name": "Narendra Modi",
      "designation": "Prime Minister",
      "profile_photo": Constants.prof,
      "notification": "Started following you",
      "time": "20:10",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Constants.orangeColor,
          ),
        ),
        title: Text(
          'Mentions',
          style: TextStyle(
            color: Constants.orangeColor,
          ),
        ),
        bottom: PreferredSize(
          preferredSize: const Size(0, 10),
          child: Divider(
            thickness: 1,
            color: Colors.grey[500],
          ),
        ),
      ),
      body: ListView.builder(
        itemBuilder: ((context, index) {
          return followTile(index);
        }),
        itemCount: followList.length,
      ),
    );
  }

  Widget followTile(int index) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.03,
            vertical: MediaQuery.of(context).size.width * 0.008,
          ),
          child: Row(
            children: [
              CircleAvatar(
                radius: MediaQuery.of(context).size.width * 0.08,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage(followList[index]["profile_photo"]),
              ),
              const SizedBox(
                width: 8,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.73,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      followList[index]['name'],
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * 0.045,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 9,
                    ),
                    Text(
                      followList[index]['notification'],
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.035,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.045,
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
