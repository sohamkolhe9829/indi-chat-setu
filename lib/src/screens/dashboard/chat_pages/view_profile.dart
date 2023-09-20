import 'package:indi_chat_setu/src/services/library.dart';

class ViewProfile extends StatefulWidget {
  ViewProfile({super.key});

  @override
  State<ViewProfile> createState() => _ViewProfileState();
}

class _ViewProfileState extends State<ViewProfile> {
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
    double mediaQueryHeight = MediaQuery.of(context).size.height;
    double mediaQueryWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Constants.orangeColor,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: mediaQueryHeight * 1.35,
          width: mediaQueryWidth,
          child: Column(
            children: [
              Stack(
                alignment: Alignment.topCenter,
                fit: StackFit.passthrough,
                children: [
                  Center(child: Image.asset(Constants.backgroundImg)),
                  CustomWidgets.sizedBox(height: 200), //170
                  Positioned(
                    bottom: 0,
                    right: mediaQueryHeight * 0.16, //120
                    // alignment: Alignment.bottomRight,
                    child: Center(
                      child: CircleAvatar(
                        radius: 60,
                        child: Container(
                          height: double.infinity,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Image.asset(
                            Constants.prof5Png,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Column(
                  children: [
                    CustomWidgets.sizedBox(height: mediaQueryHeight * 0.025),
                    Text(
                      "${singlePost[0]["name"]}",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 22),
                    ),
                    CustomWidgets.sizedBox(height: mediaQueryHeight * 0.01),
                    Text(
                      "Followers - 3.5M    Following - 12K",
                      style:
                          TextStyle(color: Constants.greyColor2, fontSize: 15),
                    ),
                    CustomWidgets.sizedBox(height: mediaQueryHeight * 0.01),
                    Container(
                      width: mediaQueryWidth * 0.85,
                      padding: const EdgeInsets.symmetric(vertical: 6),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Constants.greyColor3,
                      ),
                      child: Center(
                        child: Text(
                          "Following",
                          style: TextStyle(
                              fontSize: 16, color: Constants.greyColor2),
                        ),
                      ),
                    ),
                    CustomWidgets.sizedBox(height: mediaQueryHeight * 0.015),
                    Container(
                      width: mediaQueryWidth * 0.4,
                      padding: const EdgeInsets.symmetric(
                          vertical: 6, horizontal: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Constants.greyColor3,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Appreciation()),
                              );
                            },
                            child: const Icon(
                              Icons.thumb_up_alt_outlined,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const RaiseAnEnquiry()),
                              );
                            },
                            child: const Icon(
                              Icons.back_hand_outlined,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: const Icon(Icons.help_outline),
                          ),
                        ],
                      ),
                    ),
                    CustomWidgets.sizedBox(height: mediaQueryHeight * 0.04),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: mediaQueryWidth * 0.06),
                      child: const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Latest Work",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                    CustomWidgets.sizedBox(height: mediaQueryHeight * 0.02),
                    Expanded(
                      child: LayoutBuilder(builder: (context, constraints) {
                        return ListView.builder(
                            physics: BouncingScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: singlePost.length,
                            itemBuilder: (context, index) {
                              return postTile(singlePost[index], index);
                            });
                      }),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
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
                  CustomWidgets.sizedBox(width: 10),
                  Text(
                    data["name"],
                    style: const TextStyle(
                        fontWeight: FontWeight.w500, fontSize: 16),
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
                  style: const TextStyle(
                      fontSize: 13, fontWeight: FontWeight.w600),
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
              textScaleFactor: 1.1,
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
