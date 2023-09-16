import 'package:indi_chat_setu/src/services/library.dart';

class TabBar1Screen extends StatefulWidget {
  const TabBar1Screen({super.key});

  @override
  State<TabBar1Screen> createState() => _TabBar1ScreenState();
}

class _TabBar1ScreenState extends State<TabBar1Screen> {
  List<dynamic> singlePost = [
    {
      "name": "Narendra Modi",
      "profile_image": Constants.profileImage,
      "days_posted": "2",
      "post_image": Constants.postImage,
      "likes_number": "1.3M",
      "description":
          "Politicians are people who are politically active, especially in party politics. Political positions range from local governments to state governments to federal governments to international governments. All government leaders are considered politicians.",
    },
    {
      "name": "Shravan Mishra",
      "profile_image": Constants.profileImage2,
      "days_posted": "5",
      "post_image": Constants.postImage2,
      "likes_number": "2.3M",
      "description":
          "Politicians are people who are politically active, especially in party politics. Political positions range from local governments to state governments to federal governments to international governments. All government leaders are considered politicians.",
    },
    {
      "name": "Yogi Aditya Nath",
      "profile_image": Constants.profileImage3,
      "days_posted": "5",
      "post_image": Constants.postImage3,
      "likes_number": "2.3M",
      "description":
          "Politicians are people who are politically active, especially in party politics. Political positions range from local governments to state governments to federal governments to international governments. All government leaders are considered politicians.",
    },
    {
      "name": "Mamata Banerjee",
      "profile_image": Constants.profileImage4,
      "days_posted": "3",
      "post_image": Constants.postImage4,
      "likes_number": "1M",
      "description":
          "Politicians are people who are politically active, especially in party politics. Political positions range from local governments to state governments to federal governments to international governments. All government leaders are considered politicians.",
    },
    {
      "name": "Narendra Modi",
      "profile_image": Constants.profileImage,
      "days_posted": "2",
      "post_image": Constants.postImage,
      "likes_number": "1.3M",
      "description":
          "Politicians are people who are politically active, especially in party politics. Political positions range from local governments to state governments to federal governments to international governments. All government leaders are considered politicians.",
    },
    {
      "name": "Narendra Modi",
      "profile_image": Constants.profileImage,
      "days_posted": "2",
      "post_image": Constants.postImage,
      "likes_number": "1.3M",
      "description":
          "Politicians are people who are politically active, especially in party politics. Political positions range from local governments to state governments to federal governments to international governments. All government leaders are considered politicians.",
    },
    {
      "name": "Narendra Modi",
      "profile_image": Constants.profileImage,
      "days_posted": "2",
      "post_image": Constants.postImage,
      "likes_number": "1.3M",
      "description":
          "Politicians are people who are politically active, especially in party politics. Political positions range from local governments to state governments to federal governments to international governments. All government leaders are considered politicians.",
    },
    {
      "name": "Narendra Modi",
      "profile_image": Constants.profileImage,
      "days_posted": "2",
      "post_image": Constants.postImage,
      "likes_number": "1.3M",
      "description":
          "Politicians are people who are politically active, especially in party politics. Political positions range from local governments to state governments to federal governments to international governments. All government leaders are considered politicians.",
    },
    {
      "name": "Narendra Modi",
      "profile_image": Constants.profileImage,
      "days_posted": "2",
      "post_image": Constants.postImage,
      "likes_number": "1.3M",
      "description":
          "Politicians are people who are politically active, especially in party politics. Political positions range from local governments to state governments to federal governments to international governments. All government leaders are considered politicians.",
    },
    {
      "name": "Narendra Modi",
      "profile_image": Constants.profileImage,
      "days_posted": "2",
      "post_image": Constants.postImage,
      "likes_number": "1.3M",
      "description":
          "Politicians are people who are politically active, especially in party politics. Political positions range from local governments to state governments to federal governments to international governments. All government leaders are considered politicians.",
    },
    {
      "name": "Narendra Modi",
      "profile_image": Constants.profileImage,
      "days_posted": "2",
      "post_image": Constants.postImage,
      "likes_number": "1.3M",
      "description":
          "Politicians are people who are politically active, especially in party politics. Political positions range from local governments to state governments to federal governments to international governments. All government leaders are considered politicians.",
    },
    {
      "name": "Narendra Modi",
      "profile_image": Constants.profileImage,
      "days_posted": "2",
      "post_image": Constants.postImage,
      "likes_number": "1.3M",
      "description":
          "Politicians are people who are politically active, especially in party politics. Political positions range from local governments to state governments to federal governments to international governments. All government leaders are considered politicians.",
    },
    {
      "name": "Narendra Modi",
      "profile_image": Constants.profileImage,
      "days_posted": "2",
      "post_image": Constants.postImage,
      "likes_number": "1.3M",
      "description":
          "Politicians are people who are politically active, especially in party politics. Political positions range from local governments to state governments to federal governments to international governments. All government leaders are considered politicians.",
    },
    {
      "name": "Narendra Modi",
      "profile_image": Constants.profileImage,
      "days_posted": "2",
      "post_image": Constants.postImage,
      "likes_number": "1.3M",
      "description":
          "Politicians are people who are politically active, especially in party politics. Political positions range from local governments to state governments to federal governments to international governments. All government leaders are considered politicians.",
    },
    {
      "name": "Narendra Modi",
      "profile_image": Constants.profileImage,
      "days_posted": "2",
      "post_image": Constants.postImage,
      "likes_number": "1.3M",
      "description":
          "Politicians are people who are politically active, especially in party politics. Political positions range from local governments to state governments to federal governments to international governments. All government leaders are considered politicians.",
    },
    {
      "name": "Narendra Modi",
      "profile_image": Constants.profileImage,
      "days_posted": "2",
      "post_image": Constants.postImage,
      "likes_number": "1.3M",
      "description":
          "Politicians are people who are politically active, especially in party politics. Political positions range from local governments to state governments to federal governments to international governments. All government leaders are considered politicians.",
    },
    {
      "name": "Narendra Modi",
      "profile_image": Constants.profileImage,
      "days_posted": "2",
      "post_image": Constants.postImage,
      "likes_number": "1.3M",
      "description":
          "Politicians are people who are politically active, especially in party politics. Political positions range from local governments to state governments to federal governments to international governments. All government leaders are considered politicians.",
    },
    {
      "name": "Narendra Modi",
      "profile_image": Constants.profileImage,
      "days_posted": "2",
      "post_image": Constants.postImage,
      "likes_number": "1.3M",
      "description":
          "Politicians are people who are politically active, especially in party politics. Political positions range from local governments to state governments to federal governments to international governments. All government leaders are considered politicians.",
    },
    {
      "name": "Narendra Modi",
      "profile_image": Constants.profileImage,
      "days_posted": "2",
      "post_image": Constants.postImage,
      "likes_number": "1.3M",
      "description":
          "Politicians are people who are politically active, especially in party politics. Political positions range from local governments to state governments to federal governments to international governments. All government leaders are considered politicians.",
    },
    {
      "name": "Narendra Modi",
      "profile_image": Constants.profileImage,
      "days_posted": "2",
      "post_image": Constants.postImage,
      "likes_number": "1.3M",
      "description":
          "Politicians are people who are politically active, especially in party politics. Political positions range from local governments to state governments to federal governments to international governments. All government leaders are considered politicians.",
    },
    {
      "name": "Narendra Modi",
      "profile_image": Constants.profileImage,
      "days_posted": "2",
      "post_image": Constants.postImage,
      "likes_number": "1.3M",
      "description":
          "Politicians are people who are politically active, especially in party politics. Political positions range from local governments to state governments to federal governments to international governments. All government leaders are considered politicians.",
    },
    {
      "name": "Narendra Modi",
      "profile_image": Constants.profileImage,
      "days_posted": "2",
      "post_image": Constants.postImage,
      "likes_number": "1.3M",
      "description":
          "Politicians are people who are politically active, especially in party politics. Political positions range from local governments to state governments to federal governments to international governments. All government leaders are considered politicians.",
    },
    {
      "name": "Narendra Modi",
      "profile_image": Constants.profileImage,
      "days_posted": "2",
      "post_image": Constants.postImage,
      "likes_number": "1.3M",
      "description":
          "Politicians are people who are politically active, especially in party politics. Political positions range from local governments to state governments to federal governments to international governments. All government leaders are considered politicians.",
    },
    {
      "name": "Narendra Modi",
      "profile_image": Constants.profileImage,
      "days_posted": "2",
      "post_image": Constants.postImage,
      "likes_number": "1.3M",
      "description":
          "Politicians are people who are politically active, especially in party politics. Political positions range from local governments to state governments to federal governments to international governments. All government leaders are considered politicians.",
    },
  ];

  bool descTextShowFlag = false;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: singlePost.length,
        itemBuilder: (context, index) {
          return postTile(singlePost[index], index);
        });
  }

  Widget postTile(Map<String, dynamic> data, int index) {
    return Container(
      padding: const EdgeInsets.fromLTRB(18, 0, 18, 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(data["profile_image"]),
                  CustomWidgets.sizedBox(width: 4),
                  Text(
                    data["name"],
                    style: const TextStyle(
                        fontWeight: FontWeight.w600, fontSize: 17),
                  ),
                  CustomWidgets.sizedBox(width: 8),
                  Text("${data["days_posted"]}d"),
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_vert),
              )
            ],
          ),
          Image.asset(data["post_image"]),
          CustomWidgets.sizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: const Icon(Icons.favorite_border, size: 27),
                  ),
                  CustomWidgets.sizedBox(width: 8),
                  GestureDetector(
                    onTap: () {},
                    child: const Icon(Icons.maps_ugc_outlined,
                        size: 27), //KK find icon without +
                  ),
                  CustomWidgets.sizedBox(width: 8),
                  GestureDetector(
                    onTap: () {},
                    child: const Icon(Icons.share_outlined, size: 27),
                  ),
                ],
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: const Icon(Icons.edit_note),
                  ),
                  CustomWidgets.sizedBox(width: 8),
                  GestureDetector(
                    onTap: () {},
                    child: const Icon(Icons.block, size: 27),
                  ),
                ],
              ),
            ],
          ),
          CustomWidgets.sizedBox(height: 8),
          Align(
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                FlutterImageStack(
                  imageSource: ImageSource.asset,
                  imageList: [
                    Constants.profileImage,
                    Constants.profileImage2,
                    Constants.profileImage3,
                  ],
                  totalCount: 3,
                  // itemCount: 3,
                ),
                CustomWidgets.sizedBox(width: 5),
                Text(
                  "Liked by Satyam Soni & ${data["likes_number"]} others",
                  style: const TextStyle(fontSize: 12),
                ),
              ],
            ),
          ),
          CustomWidgets.sizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: Text(
              data["description"],
              maxLines: descTextShowFlag ? 8 : 2, //K check later
              overflow: TextOverflow.ellipsis,
              textScaleFactor: 0.9,
              style: const TextStyle(
                color: Colors.black54,
                // fontSize: 13,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              setState(() {
                descTextShowFlag = !descTextShowFlag;
              });
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                descTextShowFlag
                    ? const Text(
                        "show less",
                        style: TextStyle(color: Colors.black87, fontSize: 13),
                      )
                    : const Text(
                        "...show more",
                        style: TextStyle(color: Colors.black87, fontSize: 13),
                      )
              ],
            ),
          ),
          CustomWidgets.sizedBox(height: 4),
          const Divider(
            thickness: 1,
            color: Colors.black54,
          ),
        ],
      ),
    );
  }
}
