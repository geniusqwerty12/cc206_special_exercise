import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rock-Paper-Scissors"),
      ),
      body: Column(
        children: [
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              children: [
                // Create 3 buttons here
                // one for ROCK
                // one for SCISSOR
                // one for PAPER
                // Hint: you will call the renderHandOptions 3 times
                renderHandOptions(),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget renderHandOptions(String hand) {
    String handImg = "";
    // Finish the switch case to include all
    // 3 hand options
    switch (hand) {
      case "ROCK":
        handImg = "assets/rock_option.png";
        break;
      case ...
      ...
    }
    return GestureDetector(
      onTap: () {
        // Display the hand
      },
      child: Container(
        width: 100,
        height: 100,
        child: Column(
          children: [
            Image.asset(
              handImg,
              width: 200,
              height: 200,
            ),
            Text(hand),
          ],
        ),
      ),
    );
  }
}
