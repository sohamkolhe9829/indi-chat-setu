import 'package:indi_chat_setu/src/services/library.dart';

class AppBarWidget {
  static AppBar basicAppbar() {
    return AppBar();
  }

  late MediaQueryData _mediaQueryData;

  static double _screenWidth = 0;
  static double _screenHeight = 0;

  init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    _screenWidth = _mediaQueryData.size.width;
    _screenHeight = _mediaQueryData.size.height;
    // blockSizeHorizontal = screenWidth / 100;
    // blockSizeVertical = screenHeight / 100;
  }

  static PreferredSize navigationAppBar(BuildContext context) {
    return PreferredSize(
      preferredSize: Size(_screenWidth, _screenHeight + 40),
      child: Stack(
        children: <Widget>[
          Positioned(
            // To take AppBar Size only
            top: 40.0,
            left: 4.0,
            right: 4.0,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.07,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Constants.orangeColor,
                borderRadius: const BorderRadius.all(
                  Radius.circular(12),
                ),
              ),
              child: buildInfo(context),
            ),
          ),
        ],
      ),
    );
  }

  static Widget buildInfo(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            IconButton(
              constraints: const BoxConstraints(),
              padding: EdgeInsets.zero,
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_sharp),
              color: Colors.white,
            ),
            SizedBox(width: MediaQuery.of(context).size.width * 0.015),
            CircleAvatar(
              radius: MediaQuery.of(context).size.width * 0.05,
              backgroundColor: Colors.white,
              backgroundImage: AssetImage(Constants.prof),
            ),
            SizedBox(width: MediaQuery.of(context).size.width * 0.025),
            Text(
              "Narendra Modi",
              style: TextStyle(
                color: Colors.white,
                fontSize: MediaQuery.of(context).size.width * 0.044,
              ), //TextStyle(
              //   fontSize: MediaQuery.of(context).size.width * 0.045,
              //   color: Colors.white,
              // ),
            ),
            SizedBox(width: MediaQuery.of(context).size.width * 0.045),
          ],
        ),
        Row(
          children: [
            IconButton(
              onPressed: () {},
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(),
              icon: const Icon(Icons.local_fire_department_outlined),
              iconSize: 25,
              color: Colors.white,
            ),
            SizedBox(width: MediaQuery.of(context).size.width * 0.033),
            IconButton(
              onPressed: () {},
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(),
              icon: const Icon(Icons.back_hand_outlined),
              iconSize: 20,
              color: Colors.white,
            ),
            SizedBox(width: MediaQuery.of(context).size.width * 0.033),
            IconButton(
              onPressed: () {},
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(),
              icon: const Icon(Icons.help_outline),
              iconSize: 25,
              color: Colors.white,
            ),
            SizedBox(width: MediaQuery.of(context).size.width * 0.02),
            IconButton(
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(),
              onPressed: () {
                PopupMenuButton<int>(
                  // onSelected: (item) => handleClick(item),
                  itemBuilder: (context) => [
                    const PopupMenuItem<int>(value: 0, child: Text('BLANK')),
                    const PopupMenuItem<int>(
                        value: 1, child: Text('AGAIN BLANK')),
                  ],
                );
              },
              icon: const Icon(
                Icons.more_vert,
                size: 25,
                color: Colors.white,
              ),
            ),
            SizedBox(width: MediaQuery.of(context).size.width * 0.03),
          ],
        )
      ],
    );
  }

  // static Widget buildInfo(BuildContext context) {
  //   return Row(
  //     // mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //     children: [
  //       IconButton(
  //         constraints: const BoxConstraints(),
  //         padding: EdgeInsets.zero,
  //         onPressed: () {
  //           Navigator.pop(context);
  //         },
  //         icon: const Icon(Icons.arrow_back_sharp),
  //         color: Colors.white,
  //       ),
  //       SizedBox(
  //         width: _screenWidth * 0.015,
  //       ),
  //       CircleAvatar(
  //         radius: MediaQuery.of(context).size.width * 0.056,
  //         backgroundColor: Colors.white,
  //         backgroundImage: AssetImage(chatList[0]["profile_photo"]),
  //       ),
  //       SizedBox(
  //         width: _screenWidth * 0.025,
  //       ),
  //       Text(
  //         chatList[0]['name'],
  //         style: GoogleFonts.zillaSlab(
  //           color: Colors.white,
  //           fontSize: _screenWidth * 0.045,
  //         ), //TextStyle(
  //         //   fontSize: MediaQuery.of(context).size.width * 0.045,
  //         //   color: Colors.white,
  //         // ),
  //       ),
  //       SizedBox(
  //         width: _screenWidth * 0.045,
  //       ),
  //       IconButton(
  //         onPressed: () {},
  //         padding: EdgeInsets.zero,
  //         constraints: const BoxConstraints(),
  //         icon: const Icon(Icons.local_fire_department_outlined),
  //         iconSize: 27,
  //         color: Colors.white,
  //       ),
  //       SizedBox(
  //         width: _screenWidth * 0.033,
  //       ),
  //       IconButton(
  //         onPressed: () {},
  //         padding: EdgeInsets.zero,
  //         constraints: const BoxConstraints(),
  //         icon: const Icon(Icons.back_hand_outlined),
  //         iconSize: 27,
  //         color: Colors.white,
  //       ),
  //       SizedBox(
  //         width: _screenWidth * 0.033,
  //       ),
  //       IconButton(
  //         onPressed: () {},
  //         padding: EdgeInsets.zero,
  //         constraints: const BoxConstraints(),
  //         icon: const Icon(Icons.help_outline),
  //         iconSize: 27,
  //         color: Colors.white,
  //       ),
  //       SizedBox(
  //         width: _screenWidth * 0.02,
  //       ),
  //       IconButton(
  //         padding: EdgeInsets.zero,
  //         constraints: const BoxConstraints(),
  //         onPressed: () {
  //           PopupMenuButton<int>(
  //             // onSelected: (item) => handleClick(item),
  //             itemBuilder: (context) => [
  //               const PopupMenuItem<int>(value: 0, child: Text('BLANK')),
  //               const PopupMenuItem<int>(value: 1, child: Text('AGAIN BLANK')),
  //             ],
  //           );
  //         },
  //         icon: const Icon(
  //           Icons.more_vert,
  //           size: 27,
  //           color: Colors.white,
  //         ),
  //       ),
  //       SizedBox(
  //         width: _screenWidth * 0.045,
  //       ),
  //     ],
  //   );
  // }
}
