import 'package:flutter/material.dart';
import 'package:sistema_presencas/screens/NavBarAdmin.dart';
import 'deletes/deleteStudent.dart';
import 'deletes/deleteCourse.dart';
import 'deletes/deleteClass.dart';
import 'deletes/deleteTeacher.dart';
import 'deletes/deleteClassroom.dart';
import 'deletes/deleteSubject.dart';
import 'deletes/deleteSubscription.dart';
import 'deletes/deleteSchedule.dart';
import 'deletes/deleteAttendance.dart';


class DeleteMenu extends StatefulWidget {
  @override
  _DeleteMenuState createState() => _DeleteMenuState();
}

class _DeleteMenuState extends State<DeleteMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text('Delete Menu'),
          backgroundColor: Color.fromRGBO(56, 180, 74, 1)),
      drawer: NavBarAdmin(),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 2.0),
        child: GridView.count(
          crossAxisCount: 2,
          padding: EdgeInsets.all(3.0),
          children: <Widget>[
            makeDashboardItem("Student", Icons.school, deleteStudent()),
            makeDashboardItem("Course", Icons.work, deleteCourse()),
            makeDashboardItem("Subscription", Icons.people_alt_outlined, deleteSubscription()),
            makeDashboardItem("Subject", Icons.subject, deleteSubjects()),
            makeDashboardItem("Teacher", Icons.account_circle, deleteTeacher()),
            makeDashboardItem("Class", Icons.people, deleteClass()),
            makeDashboardItem("Classroom", Icons.meeting_room, deleteClassroom()),
            makeDashboardItem("Schedule", Icons.event,deleteSchedule()),
            makeDashboardItem("Attendance", Icons.event_available, deleteAttendance())
          ],
        ),
      ),
    );
  }

  Card makeDashboardItem(String title, IconData icon, Widget screen) {
    return Card(
        elevation: 1.0,
        margin: new EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(color: Color.fromRGBO(220, 220, 220, 1.0)),
          child: new InkWell(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => screen));
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              verticalDirection: VerticalDirection.down,
              children: <Widget>[
                SizedBox(height: 50.0),
                Center(
                    child: Icon(
                      icon,
                      size: 40.0,
                      color: Colors.black,
                    )),
                SizedBox(height: 20.0),
                new Center(
                  child: new Text(title,
                      style:
                      new TextStyle(fontSize: 18.0, color: Colors.black)),
                ),
              ],
            ),
          ),
        ));
  }

}
