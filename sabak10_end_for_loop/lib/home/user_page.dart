// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:sabak10_end_for_loop/constants/app_texts_styles.dart';

import 'package:sabak10_end_for_loop/model.dart';

class UserPage extends StatelessWidget {
  const UserPage({
    super.key,
    required this.student,
    required String student1,
  });
  final Student student;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Page'),
      ),
      body: Center(
        child: Container(
          //height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://img.freepik.com/free-photo/vertical-shot-body-water-with-pink-sky-during-sunset-perfect-wallpaper_181624-5246.jpg'),
                fit: BoxFit.cover),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  colors: [
                    Colors.transparent,
                    Color.fromARGB(0, 227, 194, 194),
                  ],
                ),
                //color: Colors.black,
              ),
              child: Column(
                children: [
                  Center(
                    child: CircleAvatar(
                      radius: 70,
                      backgroundImage: NetworkImage(student.image),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    student.id.toString(),
                    style: AppTextStyles.appBarTextStyle,
                  ),
                  Text(student.name, style: StudentName.appBarTexstyleName),
                  Text(
                    student.surName,
                    style: StudentSurname.appBarTextStyleSurname,
                  ),
                  Text(
                    student.age.toString(),
                    style: StudentMarriage.appBarTextStylemarriage,
                  ),
                  Text(
                    student.email,
                    style: StudentEmail.appBarTextStyleemail,
                  ),
                  Text(
                    student.group.toString(),
                    style: StudentGroup.appBarTextStylegroup,
                  ),
                  Text(
                    student.address.toString(),
                    style: StudentAddress.appBarTextStyleaddress,
                  ),
                  Text(
                    student.gender.toString(),
                    style: StudentGender.appBarTextStylegender,
                  ),
                  Text(
                    student.phone ?? 'Пустой',
                    style: StudentPhone.appBarTextStylephone,
                  ),
                  Text(
                    student.marriage ?? 'Пустой',
                    style: StudentMarriage.appBarTextStylemarriage,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
