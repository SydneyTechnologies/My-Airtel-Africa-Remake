import 'package:flutter/material.dart';
import 'widgets.dart';

class UserDashBoard extends StatelessWidget {
  const UserDashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(15),
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(5)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            UserInfo(),
            DataBalance(),
            Divider(
              thickness: 1,
              indent: 10,
              endIndent: 10,
            ),
            BestOffers(),
          ],
        ),
      ),
    );
  }
}

class UserInfo extends StatelessWidget {
  const UserInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: [
          Container(
            child: Center(
                child: Text(
              "S",
              style: Theme.of(context)
                  .textTheme
                  .bodyText2!
                  .copyWith(color: Colors.white),
            )),
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(50)),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("JOHN DOE"),
              const SizedBox(
                height: 5,
              ),
              Text(
                "Prepaid - 270142348906",
                style: Theme.of(context).textTheme.subtitle1,
              )
            ],
          ),
        ]),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextButton(onPressed: () {}, child: Text("ADD ACCOUNT")),
            TextButton(onPressed: () {}, child: Text("MANAGE ACCOUNT"))
          ],
        ),
        const Divider(
          thickness: 1,
          indent: 10,
          endIndent: 10,
        )
      ],
    );
  }
}

class DataBalance extends StatelessWidget {
  const DataBalance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          SizedBox(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                CreditTypes(
                    type: "NGN", amount: 0, description: "Airtime Balance"),
                VerticalDivider(
                  thickness: 1,
                ),
                CreditTypes(
                    type: "Mins", amount: 100, description: "Voice Balance"),
                VerticalDivider(
                  thickness: 1,
                ),
                CreditTypes(
                    type: "GB", amount: 21, description: "Data Balance"),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const Spacer(),
              TextButton(onPressed: () {}, child: Text("View All balances"))
            ],
          )
        ],
      ),
    );
  }
}

class CreditTypes extends StatelessWidget {
  const CreditTypes(
      {required this.type, required this.amount, required this.description});
  final String type;
  final int amount;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(amount.toString()),
        Text(
          type,
          style: Theme.of(context).textTheme.bodyText1!.copyWith(
              color: Colors.red, fontSize: 12, fontWeight: FontWeight.w700),
        ),
        Text(description, style: Theme.of(context).textTheme.subtitle1),
      ],
    );
  }
}
