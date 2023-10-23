import 'package:elfa_main_dashboard/features/work_spaces/presentation/widgets/utils.dart';
import 'package:flutter/material.dart';

class MessageRow extends StatelessWidget {
  final String name;
  final String Message;
  final String time;
  const MessageRow(
      {Key? key,
      required this.name,
      required this.Message,
      required this.time});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
      child: Row(
        children: [
          RoundedPicture(50, 50),
          const SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(Message),
            ],
          ),
          const Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                time,
                style: const TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/icons/double-tick-48.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                width: 20, // Set the width of the container
                height: 20, // Set the height of the container
              ),
            ],
          ),
        ],
      ),
    );
  }
}
