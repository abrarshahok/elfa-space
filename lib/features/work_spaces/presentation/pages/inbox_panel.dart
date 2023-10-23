import 'package:elfa_main_dashboard/constants.dart';
import 'package:elfa_main_dashboard/features/work_spaces/presentation/widgets/message_row.dart';
import 'package:flutter/material.dart';

class InboxScreen extends StatelessWidget {
  const InboxScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Header
        Padding(
          padding:
              const EdgeInsets.only(left: 8.0, right: 8.0, top: 40, bottom: 15),
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  // Handle back icon tap
                },
                child: const Icon(Icons.arrow_back_ios_new_sharp),
              ),
              const Spacer(),
              const Text(
                "Inbox",
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w600,
                  color: kPrimaryColor,
                ),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  // Handle notification icon tap
                },
                child: const Icon(Icons.notifications),
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 30.0, top: 10),
          child: Text(
            "Today",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const MessageRow(
          name: "Mr. John",
          Message: "Thank you for your time. Can I call you?",
          time: "12:30 AM",
        ),
        const Padding(
          padding: EdgeInsets.only(left: 30.0, top: 10),
          child: Text(
            "Yesterday",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const MessageRow(
          name: "Ms. Anna",
          Message: "Thank you for your time.",
          time: "12:30 AM",
        ),
      ],
    );
  }
}
