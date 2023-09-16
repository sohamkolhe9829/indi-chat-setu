import 'package:indi_chat_setu/src/services/library.dart';

class QATimer extends StatefulWidget {
  const QATimer({super.key});

  @override
  State<QATimer> createState() => _QATimerState();
}

class _QATimerState extends State<QATimer> {
  static const maxSeconds = 15;
  late Timer _timer;
  int _currentTime = maxSeconds;

  void startTimer(BuildContext context) {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_currentTime > 0) {
        setState(() {
          _currentTime--;
        });
      } else {
        print("$_currentTime");
        setState(() {
          _currentTime = maxSeconds;
        });
        stopTimer();
      }
    });
  }

  void stopTimer() {
    _timer.cancel();
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text(
          'Answer the Question',
          style: TextStyle(
            color: Constants.orangeColor,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
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
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.06),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.1,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Q. ',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.05,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: Text(
                      'Who is the Home Minister of India?',
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.05,
                      ),
                    ),
                  ),
                ],
              ),
              CustomWidgets.sizedBox(
                  height: MediaQuery.of(context).size.height * 0.15),
              timerWatch(),
              CustomWidgets.sizedBox(
                  height: MediaQuery.of(context).size.height * 0.16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: MediaQuery.of(context).size.height * 0.05,
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: Center(
                      child: Text(
                        'A.',
                        style: GoogleFonts.roboto(
                          fontSize: MediaQuery.of(context).size.width * 0.05,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: MediaQuery.of(context).size.height * 0.05,
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: Center(
                      child: Text(
                        'B.',
                        style: GoogleFonts.roboto(
                          fontSize: MediaQuery.of(context).size.width * 0.05,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: MediaQuery.of(context).size.height * 0.05,
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: Center(
                      child: Text(
                        'C.',
                        style: GoogleFonts.roboto(
                          fontSize: MediaQuery.of(context).size.width * 0.05,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: MediaQuery.of(context).size.height * 0.05,
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: Center(
                      child: Text(
                        'D.',
                        style: GoogleFonts.roboto(
                          fontSize: MediaQuery.of(context).size.width * 0.05,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  timerWatch() {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          alignment: Alignment.topCenter,
          child: SizedBox(
            height: height * 0.25, //18
            width: height * 0.25, //18
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100),
              ),
              color: Colors.white,
              elevation: 25,
              child: buildTimer(),
            ),
          ),
        ),
        // buildTimes(),
        // ElevatedButton(
        //   onPressed: stopTimer,
        //   child: const Text('Cancel'),
        // ),
        // SizedBox(height: height * 0.05),
      ],
    );
  }

  Widget buildTimer() {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SizedBox(
      // height: 200,
      // width: 200,
      child: Stack(
        fit: StackFit.expand,
        children: [
          SimpleCircularProgressBar(
            size: height * 0.23, //2
            animationDuration: _currentTime,
            progressStrokeWidth: 10, //15
            backStrokeWidth: 10,
            mergeMode: true,
            backColor: Colors.white,
            progressColors: [
              Constants.orangeColor,
              Constants.orangeColor.withOpacity(0.8),
              Constants.orangeColor.withOpacity(0.6),
              Constants.orangeColor.withOpacity(0.4),
              // Colors.cyan,
              // Colors.purple,
            ],
            fullProgressColor: Colors.red,
            // Colors.green,
          ),
          Center(
            child: buildTimes(),
          ),
        ],
      ),
    );
  }

  Widget buildTimes() {
    Stream<int> timerStream =
        Stream<int>.periodic(const Duration(seconds: 1), (count) {
      if (_currentTime > 0) {
        return _currentTime;
      } else {
        return 0;
      }
    }).take(_currentTime + 1);

    double height = MediaQuery.of(context).size.height;

    return StreamBuilder<int>(
      stream: timerStream,
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return Text(
            "15",
            style: TextStyle(
              color: Colors.green,
              fontSize: height * 0.045,
              fontWeight: FontWeight.bold,
            ),
          );
        }

        int currentCount = snapshot.data!;
        String formattedTime = currentCount.toString().padLeft(2, '0');

        return Text(
          formattedTime,
          style: TextStyle(
            color: Colors.green,
            fontSize: height * 0.045,
            fontWeight: FontWeight.bold,
          ),
        );
      },
    );
  }
}
