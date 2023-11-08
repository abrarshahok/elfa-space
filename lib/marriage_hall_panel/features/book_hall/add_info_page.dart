import '/constants/constants.dart';
import '/marriage_hall_panel/features/book_hall/confirm_info_page.dart';
import 'package:flutter/material.dart';
import 'package:omni_datetime_picker/omni_datetime_picker.dart';

import '../../../gym_panel/components/custom_text_field.dart';

class AddInfoPage extends StatelessWidget {
  static const routeName = '/add-info-page';

  final RichText constDate = RichText(
    text: TextSpan(
      children: [
        TextSpan(
          text: '3rd',
          style: MyFonts.getPoppin(
            color: const Color(0xFFB20ACD),
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
        ),
        TextSpan(
          text: ' September - ',
          style: MyFonts.getPoppin(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
        ),
        TextSpan(
          text: '5pm',
          style: MyFonts.getPoppin(
            color: const Color(0xFFB20ACD),
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
        ),
        TextSpan(
          text: ' to ',
          style: MyFonts.getPoppin(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
        ),
        TextSpan(
          text: '8pm',
          style: MyFonts.getPoppin(
            color: const Color(0xFFB20ACD),
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.white, elevation: 0),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Enter your information',
              style: MyFonts.getPoppin(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 25),
            Text(
              'Full Name',
              textAlign: TextAlign.center,
              style: MyFonts.getPoppin(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 4),
            const CustomTextField(
              width: 348,
              hintText: 'John Doe',
            ),
            const SizedBox(height: 25),
            Text(
              'Phone Number',
              textAlign: TextAlign.center,
              style: MyFonts.getPoppin(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 4),
            const CustomTextField(
              width: 348,
              hintText: '+92 310-3877376',
            ),
            const SizedBox(height: 25),
            Text(
              'CNIC Number',
              textAlign: TextAlign.center,
              style: MyFonts.getPoppin(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 4),
            const CustomTextField(
              width: 348,
              hintText: '12345-1234567-8',
            ),
            const SizedBox(height: 25),
            Text(
              'Dates and Times',
              style: MyFonts.getPoppin(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 10),
            constDate,
            constDate,
            const SizedBox(height: 30),
            Center(
              child: TextButton(
                onPressed: () => showOmniDateTimePicker(context: context),
                child: Text(
                  'Add Date & Time',
                  style: MyFonts.getPoppin(
                    color: const Color(0xFFB20ACD),
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
      floatingActionButton: Container(
        width: 103,
        height: 40,
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          color: const Color(0xFFB20ACD),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32),
          ),
          shadows: const [
            BoxShadow(
              color: Color(0x7FB20ACD),
              blurRadius: 8,
              offset: Offset(0, 4),
              spreadRadius: 0,
            )
          ],
        ),
        alignment: Alignment.center,
        child: TextButton(
          onPressed: () {
            Navigator.of(context).pushNamed(ConfirmInfoPage.routeName);
          },
          child: Text(
            'Next',
            style: MyFonts.getPoppin(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
