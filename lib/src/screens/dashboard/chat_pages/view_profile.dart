import 'package:indi_chat_setu/src/services/library.dart';

class ViewProfile extends StatelessWidget {
  ViewProfile({super.key});

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
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset(Constants.backgroundImg),
                  CustomWidgets.sizedBox(height: 170), //170
                  Positioned(
                    bottom: 0,
                    right: mediaQueryHeight * 0.16, //120
                    // alignment: Alignment.bottomRight,
                    child: Center(child: Image.asset(Constants.prof5)),
                  ),
                ],
              ),
              Expanded(
                child: Column(
                  children: [
                    CustomWidgets.sizedBox(height: mediaQueryHeight * 0.025),
                    Text(
                      "${singlePost[0]["name"]}",
                      style:
                          const TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                    ),
                    CustomWidgets.sizedBox(height: mediaQueryHeight * 0.01),
                    Text(
                      "Followers - 3.5M    Following - 12K",
                      style:
                          TextStyle(color: Constants.greyColor2, fontSize: 12),
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
                    const Expanded(
                      child: TabBar1Screen(),
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
}
