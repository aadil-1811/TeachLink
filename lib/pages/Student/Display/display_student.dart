import 'dart:convert';
import 'package:cms/dbHelper/mongodb.dart';
import 'package:cms/pages/Student/Add/add_MongoDBModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quickalert/quickalert.dart';
import 'package:http/http.dart';


class DisplayStudent extends StatefulWidget {
  const DisplayStudent({Key? key}) : super(key: key);

  @override
  State<DisplayStudent> createState() => _DisplayStudentState();
}

class _DisplayStudentState extends State<DisplayStudent> {

  @override
  Widget build(BuildContext context) {
    //                            TODO: DISPLAY FUNCTION
    return Scaffold(

      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FutureBuilder(
            future: MongoDatabase.getData(),
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                if (snapshot.hasData) {
                  return ListView.builder(
                      itemCount: snapshot.data.length,
                      itemBuilder: (context, index) {
                        return displayCard(
                            add_MongoDBModel.fromJson(snapshot.data[index]));
                      });
                } else {
                  return const Center(
                    child: Text("No Data Available"),
                  );
                }
              }
            }),
      )),
    );
  }

  //                            TODO:DISPLAY CARD
  Widget displayCard(add_MongoDBModel data) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("${data.id}"),
                const SizedBox(
                  height: 5,
                ),
                Text("First Name = ${data.firstName}"),
                const SizedBox(
                  height: 5,
                ),
                Text("Last Name = ${data.lastName}"),
                const SizedBox(
                  height: 5,
                ),
                Text("DOB= ${data.date}"),
              ],
            ),
            Column(
              children: [
                IconButton(
                  onPressed: () {
                    // TODO:DELETE FUNCTION GOES HERE
                    QuickAlert.show(
                        context: context,
                        type: QuickAlertType.confirm,
                        animType: QuickAlertAnimType.slideInDown,
                        title: "DELETE STUDENT",
                        text: 'Are You Sure?',
                        confirmBtnText: 'Delete',
                        cancelBtnText: 'Cancel',
                        confirmBtnColor: Colors.red,
                        onConfirmBtnTap: () async {
                          await MongoDatabase.delete(data);
                          Navigator.pop(context);
                          setState(() {});
                        });
                  },
                  icon: const Icon(
                    Icons.delete,
                    color: Colors.red,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    // TODO:UPDATE FUNCTION COMES HERE
                  },
                  icon: const Icon(Icons.edit),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
