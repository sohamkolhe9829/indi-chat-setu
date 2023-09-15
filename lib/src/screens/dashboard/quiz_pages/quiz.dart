import 'package:indi_chat_setu/src/services/library.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  List<dynamic> quizList = [
    {
      "quiz_name": "Quiz01",
      "quiz_code": "Prime Minister",
      "quiz_photo": Constants.quizPic,
    },
    {
      "quiz_name": "Quiz02",
      "quiz_code": "Prime Minister",
      "quiz_photo": Constants.quizPic,
    },
    {
      "quiz_name": "Quiz03",
      "quiz_code": "Prime Minister",
      "quiz_photo": Constants.quizPic,
    },
    {
      "quiz_name": "Quiz04",
      "quiz_code": "Prime Minister",
      "quiz_photo": Constants.quizPic,
    },
    {
      "quiz_name": "Quiz05",
      "quiz_code": "Prime Minister",
      "quiz_photo": Constants.quizPic,
    },
    {
      "quiz_name": "Quiz06",
      "quiz_code": "Prime Minister",
      "quiz_photo": Constants.quizPic,
    },
    {
      "quiz_name": "Quiz07",
      "quiz_code": "Prime Minister",
      "quiz_photo": Constants.quizPic,
    },
    {
      "quiz_name": "Quiz08",
      "quiz_code": "Prime Minister",
      "quiz_photo": Constants.quizPic,
    },
    {
      "quiz_name": "Quiz09",
      "quiz_code": "Prime Minister",
      "quiz_photo": Constants.quizPic,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 15.0, right: 15),
        child: Column(
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CreateQuiz(),
                  ),
                );
              },
              child: Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.18,
                    height: MediaQuery.of(context).size.width * 0.17,
                    decoration: BoxDecoration(
                      color: Constants.orangeColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.028,
                  ),
                  Text(
                    'Make Quiz',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.044,
                    ),
                  ),
                ],
              ),
            ),
            CustomWidgets.sizedBox(height: 10),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const QuizLogin(),
                  ),
                );
              },
              child: Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.18,
                    height: MediaQuery.of(context).size.width * 0.17,
                    decoration: BoxDecoration(
                      color: Constants.orangeColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.menu_open,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.028,
                  ),
                  Text(
                    'Join Quiz',
                    style: TextStyle(
                      // fontSize: 16,
                      fontSize: MediaQuery.of(context).size.width * 0.044,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.04,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: quizTile(),
            ),
          ],
        ),
      ),
    );
  }

  Widget quizTile() {
    return ListView.builder(
      primary: true,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: ((context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          // padding: EdgeInsets.fromLTRB(0, 0, 0, 0
          //     // MediaQuery.of(context).size.width * 0.08,
          //     // MediaQuery.of(context).size.width * 0.02,
          //     // MediaQuery.of(context).size.width * 0.05,
          //     // MediaQuery.of(context).size.width * 0.02,
          //     ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.width * 0.17,
                    width: MediaQuery.of(context).size.width * 0.18,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(quizList[index]['quiz_photo']),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.05,
                  ),
                  Text(
                    quizList[index]['quiz_name'],
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.044,
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: Colors.white, //const Color(0xfff26727),
                  fixedSize: Size(
                    MediaQuery.of(context).size.width * 0.2,
                    MediaQuery.of(context).size.width * 0.1,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(19),
                    side: BorderSide(
                      color: Constants.orangeColor,
                    ),
                  ),
                ),
                child: Text(
                  'Join',
                  style: TextStyle(
                    color: Constants.orangeColor,
                  ),
                ),
              ),
            ],
          ),
        );
      }),
      itemCount: quizList.length,
    );
  }
}
