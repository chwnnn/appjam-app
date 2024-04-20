import 'package:appjam_app/const/text_style.dart';
import 'package:appjam_app/layout/default_layout.dart';
import 'package:appjam_app/main_page/calendar_screen.dart';
import 'package:appjam_app/main_page/mailbox_screen.dart';
import 'package:appjam_app/main_page/main_page_screen.dart';
import 'package:appjam_app/main_page/reply_assemble_screen.dart';
import 'package:appjam_app/main_page/select_icon_screen.dart';
import 'package:flutter/material.dart';

class RootTab extends StatefulWidget {
  const RootTab({super.key});

  @override
  State<RootTab> createState() => _RootTabState();
}

class _RootTabState extends State<RootTab> with SingleTickerProviderStateMixin {
  late TabController controller;
  int index = 0;

  @override
  void initState() {
    super.initState();

    controller = TabController(length: 4, vsync: this);

    controller.addListener(tabListener);
  }

  @override
  void dispose() {
    controller.removeListener(tabListener);

    super.dispose();
  }

  void tabListener() {
    setState(() {
      index = controller.index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      child: TabBarView(
        physics: NeverScrollableScrollPhysics(),
        controller: controller,
        children: [
          MainPageScreen(),
          ReplyAssembleScreen(),
          CalendarScreen(),
          MailboxScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        selectedFontSize: 10,
        unselectedFontSize: 10,
        type: BottomNavigationBarType.fixed,
        onTap: (int index) {
          setState(() {
            controller.animateTo(index);
          });
        },
        currentIndex: index,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sticky_note_2),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_post_office),
            label: '',
          ),
        ],
      ),
    );
  }
}
