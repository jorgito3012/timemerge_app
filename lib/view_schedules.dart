import 'package:flutter/material.dart';
import 'package:timemerge_app/create_schedule.dart';
import 'package:timemerge_app/widgets/appbar.dart';
import 'package:timemerge_app/widgets/drawer.dart';

class ViewSchedule extends StatelessWidget {
  const ViewSchedule({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 232, 232, 232),
      appBar: buildAppbar('M I S   H O R A R I O S'),
      drawer: buildDrawer(context),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Handle logout logic (e.g., clear user data)
          Navigator.of(context).pop(); // Close drawer

          // Navigate to LoginScreen (assuming it's a widget)
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => CreateSchedule()),
          );
        },
        backgroundColor: Color.fromARGB(255, 151, 151, 151),
        child: const Icon(Icons.add),
      ),
    );
  }
}
