import 'package:flutter/material.dart';
import 'package:zoom_clone/utility/colors.dart';
import 'package:zoom_clone/widgets/home_meet_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _page = 0;
  onPageChaged(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        title: Text('Meet & Chat'),
        elevation: 0,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            HomeMeetButton(
              onPressed: () {},
              text: 'New Meeting',
              icon: Icons.videocam,
            ),
            HomeMeetButton(
                onPressed: () {},
                icon: Icons.add_box_rounded,
                text: 'Join Meeting'),
            HomeMeetButton(
                onPressed: () {}, icon: Icons.calendar_today, text: 'Schedule'),
            HomeMeetButton(
                onPressed: () {},
                icon: Icons.arrow_upward_rounded,
                text: 'Share Screen'),
          ]),
          Expanded(
              child: Center(
                  child: Text(
            'Create/Join meetings in just one click!',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                letterSpacing: 0.5,
                ),
          )))
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: footerColor,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        onTap: onPageChaged,
        currentIndex: _page,
        type: BottomNavigationBarType.fixed,
        unselectedFontSize: 14,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.comment_bank), label: 'Meet and chat'),
          BottomNavigationBarItem(
              icon: Icon(Icons.lock_clock), label: 'Meeting'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), label: 'Contacts'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings_outlined), label: 'Settings'),
          BottomNavigationBarItem(
              icon: Icon(Icons.comment_bank), label: 'Meet and chat'),
        ],
      ),
    );
  }
}
