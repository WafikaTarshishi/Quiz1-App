import 'package:flutter/material.dart';

void main() => runApp(Quiz());

class Quiz extends StatelessWidget {
  const Quiz({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: QuizScreen());
  }
}

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  String result = "❓";
  int tea = 0;
  int coffe = 0;

  void voteTea() {
    setState(() {
      result = "🍵";
      tea++;
    });
  }

  void voteCoffe() {
    setState(() {
      result = "☕";
      coffe++;
    });
  }

  void reset() {
    setState(() {
      result = "❓";
      tea = 0;
      coffe = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(result, style: TextStyle(fontSize: 50)),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: voteTea,
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              child: Text('Vote Tea', style: TextStyle(fontSize: 8)),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: voteCoffe,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.brown,
                  ),
                  child: Text(
                    "Vote Coffe",
                    style: TextStyle(color: Colors.white, fontSize: 8),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            ElevatedButton(onPressed: reset, child: Text("Reset")),
            SizedBox(height: 20),
            Text("Tea Votes: ${tea}", style: TextStyle(color: Colors.black)),
            SizedBox(height: 10),
            Text(
              "Coffe Vote : ${coffe}",
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
