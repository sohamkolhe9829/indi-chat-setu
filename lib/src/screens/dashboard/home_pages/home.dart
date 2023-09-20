import 'package:indi_chat_setu/src/services/library.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leadingWidth: 0,
        elevation: 0,
        title: Text(
          "Indi-Chat-Setu",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Mentions(),
                ),
              );
            },
            icon: const Icon(
              Icons.favorite_border,
              color: Colors.grey,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.grey,
            ),
          ),
          PopupMenuButton<int>(
            icon: Icon(
              Icons.more_vert,
              color: Colors.grey,
            ),
            onSelected: (item) {
              switch (item) {
                case 0:
                  break;
                case 1:
                  break;
              }
            },
            itemBuilder: (context) => [
              PopupMenuItem<int>(
                value: 0,
                onTap: () {
                  Navigator.pushNamed(context, '/setting');
                },
                child: Text('Settings'),
              ),
              PopupMenuItem<int>(
                value: 1,
                onTap: () {},
                child: Text('Logout'),
              ),
            ],
          ),
        ],
      ),
      body: DefaultTabController(
        length: 5,
        child: SizedBox(
          height: mediaQueryHeight,
          child: Column(
            children: <Widget>[
              TabBar(
                padding: const EdgeInsets.symmetric(vertical: 3),
                indicatorColor: Colors.transparent,
                unselectedLabelColor: Colors.grey,
                labelColor: Constants.orangeColor,
                tabs: const [
                  Icon(Icons.home_filled, size: 27),
                  Icon(Icons.group, size: 27),
                  Icon(Icons.chat_bubble,
                      size:
                          25), //KK find icon without + Icons.maps_ugc_outlined
                  Icon(Icons.diversity_3, size: 27), //Icons.groups
                  Icon(Icons.emoji_objects, size: 27),
                  // Image.asset(Constants.homeOrange),
                  // Image.asset(Constants.chatGrey),
                  // Image.asset(Constants.msgGrey),
                  // Image.asset(Constants.communityGrey),
                  // Image.asset(Constants.quizGrey),
                ],
              ),
              const Divider(
                thickness: 1,
                color: Colors.grey,
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    const TabBar1Screen(),
                    const ChatUI(),
                    const TabBar3(),
                    ListView(),
                    const QuizScreen(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
