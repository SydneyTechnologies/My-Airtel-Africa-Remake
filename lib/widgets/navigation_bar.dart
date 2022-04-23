import 'package:flutter/material.dart';

class AirtelNavigationBar extends StatelessWidget {
  const AirtelNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 1,
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white54,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            NavItem(
              icon: Icons.home,
              title: "HOME",
              active: true,
            ),
            NavItem(icon: Icons.tv, title: "AIRTEL-TV")
          ],
        ),
      ),
    );
  }
}

class NavItem extends StatelessWidget {
  const NavItem(
      {Key? key, required this.icon, required this.title, this.active = false})
      : super(key: key);
  final IconData icon;
  final String title;
  final bool active;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Row(
        children: [
          Icon(
            icon,
            size: 20,
            color: active ? Colors.red : Colors.grey,
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.subtitle1!.copyWith(
                  color: active ? Colors.red : Colors.grey,
                ),
          ),
        ],
      ),
    );
  }
}
