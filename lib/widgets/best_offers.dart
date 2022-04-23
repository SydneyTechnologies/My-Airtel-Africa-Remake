import 'package:flutter/material.dart';

class BestOffers extends StatelessWidget {
  const BestOffers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Best Offers"),
              TextButton(onPressed: () {}, child: const Text("All Offers")),
            ],
          ),
          const Offer(
            cost: "500",
            validity: "Validity 2 Days",
            offer: "2 GB",
          ),
          const SizedBox(
            height: 10,
          ),
          const Offer(
            cost: "500",
            validity: "Validity 7 Days",
            offer: "1 GB",
          ),
          const SizedBox(
            height: 10,
          ),
          const Offer(
            cost: "1000",
            validity: "Validity 30 Days",
            offer: "1.5 GB",
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Text(
                      "Self Recharge",
                      style: Theme.of(context)
                          .textTheme
                          .headline1!
                          .copyWith(fontSize: 14.0, color: Colors.white),
                    ),
                  ),
                  style: TextButton.styleFrom(backgroundColor: Colors.black54))
            ],
          )
        ],
      ),
    );
  }
}

class Offer extends StatelessWidget {
  const Offer(
      {Key? key,
      required this.validity,
      required this.offer,
      required this.cost})
      : super(key: key);
  final String validity;
  final String offer;
  final String cost;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(5),
            child: Icon(Icons.label),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.purpleAccent),
          ),
          const SizedBox(
            width: 5,
          ),
          Text(offer),
          const Spacer(),
          Text(cost),
          const SizedBox(
            width: 5,
          ),
          const Text(
            "NGN",
            style: TextStyle(color: Colors.red),
          )
        ],
      ),
    );
  }
}
