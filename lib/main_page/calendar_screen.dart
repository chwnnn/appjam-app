import 'package:appjam_app/main_page/calendar_comment_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarScreen extends StatelessWidget {
  const CalendarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(height: 70),
            TableCalendar(
              calendarStyle: CalendarStyle(
                defaultTextStyle: TextStyle(
                  color: Color(0xFF7A7471),
                  fontSize: 20,
                  fontFamily: 'Yeongdeok Sea',
                  fontWeight: FontWeight.w400,
                  height: 0.10,
                ),
                weekendTextStyle: TextStyle(
                  color: Color(0xFF7A7471),
                  fontSize: 20,
                  fontFamily: 'Yeongdeok Sea',
                  fontWeight: FontWeight.w400,
                  height: 0.10,
                ),
                outsideDaysVisible: false,
                todayDecoration: BoxDecoration(
                  color: Colors.transparent,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.green,
                    width: 1.5,
                  ),
                ),
                todayTextStyle: TextStyle(
                  color: Color(0xFF7A7471),
                  fontSize: 20,
                  fontFamily: 'Yeongdeok Sea',
                  fontWeight: FontWeight.w400,
                  height: 0.10,
                ),
              ),
              headerStyle: HeaderStyle(
                formatButtonVisible: false,
                titleCentered: true,
                leftChevronVisible: false,
                rightChevronVisible: false,
              ),
              focusedDay: DateTime.now(),
              firstDay: DateTime(2024, 4, 1),
              lastDay: DateTime(2024, 4, 30),
            ),
            SizedBox(height: 70),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => CalendarCommentScreen(),
                  ),
                );
              },
              child: SvgPicture.asset('asset/imgs/pencil.svg'),
            ),
          ],
        ),
      ),
    );
  }
}
