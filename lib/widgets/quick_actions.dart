import 'package:flutter/material.dart';

class QuickActionsBoard extends StatelessWidget {
  const QuickActionsBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(15),
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5), color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Quick Actions"),
          const Divider(
            thickness: 1,
          ),
          Container(
            margin: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Actions(
                        description: "Recharge",
                        iconData: Icons.mobile_friendly),
                    Actions(description: "Pay Bill", iconData: Icons.receipt),
                    Actions(description: "Buy Bundles", iconData: Icons.payment)
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Actions(
                        description: "Hello Tunes", iconData: Icons.music_note),
                    Actions(description: "Wifi/Router", iconData: Icons.router),
                    Actions(
                        description: "Submit NIN",
                        iconData: Icons.mobile_friendly)
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Actions(description: "Airtel-TV", iconData: Icons.tv),
                    Actions(description: "News", iconData: Icons.newspaper),
                    Actions(description: "News", iconData: Icons.newspaper),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Actions extends StatelessWidget {
  const Actions({Key? key, required this.description, required this.iconData})
      : super(key: key);
  final String description;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Material(
            elevation: 2,
            borderRadius: BorderRadius.circular(30),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                iconData,
                size: 20,
              ),
            )),
        const SizedBox(height: 10),
        SizedBox(
          width: 100,
          height: 30,
          child: Text(
            description,
            style: TextStyle(fontSize: 12),
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}
