import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'widgets/widgets.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
        primaryColor: Colors.red,
        textTheme: TextTheme(
          headline1:
              GoogleFonts.varelaRound(textStyle: const TextStyle(fontSize: 24)),
          bodyText1:
              GoogleFonts.varelaRound(textStyle: const TextStyle(fontSize: 20)),
          subtitle1: GoogleFonts.varelaRound(
              textStyle: const TextStyle(fontSize: 12, color: Colors.grey)),
        )),
    home: MyAirtelAfrica(),
  ));
}

class MyAirtelAfrica extends StatelessWidget {
  const MyAirtelAfrica({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        leading: Image.asset(
          "assets/Airtel.png",
        ),
        elevation: 0,
        backgroundColor: Theme.of(context).primaryColor,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      body: ListView(
        children: [
          AirtelNavigationBar(),
          Carousel(),
          UserDashBoard(),
          QuickActionsBoard(),
          PopularMoviesBoard(),
        ],
      ),
    );
  }
}
