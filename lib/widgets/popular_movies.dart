import 'package:flutter/material.dart';

class PopularMoviesBoard extends StatelessWidget {
  const PopularMoviesBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(5)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Popular Movies",
            //style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            child: Image.asset(
              "assets/watchTv.jpeg",
              fit: BoxFit.cover,
            ),
          )
        ],
      ),
    );
  }
}
