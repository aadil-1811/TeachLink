import 'package:cms/constants.dart';
import 'package:flutter/material.dart';
class studentSection extends StatefulWidget {
  const studentSection({
    Key? key,
  }) : super(key: key);

  @override
  State<studentSection> createState() => _studentSectionState();
}

class _studentSectionState extends State<studentSection> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 30,
              ),
              //                 TODO:SEARCH BAR
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 40),
                child: TextFormField(
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 10),
                      hintText: 'Search Student',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      )),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              //                 TODO:SEARCH BUTTON
              ElevatedButton(
                onPressed: () {
                },
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(const Color(0xFF498757)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ))),
                child: Icon(Icons.search),
              ),
              const SizedBox(
                height: 20,
              ),
              Text('STUDENTS',
                  style: kHeading
              ),
              const SizedBox(
                height: 20,
              ),
              //                TODO:ADD & DELETE BUTTONS
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: (){Navigator.pushNamed(context, '/addStudent');},
                    child: Container(
                      width: 150,
                      height: 135,
                      decoration: BoxDecoration(
                          color: const Color(0xffa1c2a0),
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Icon(
                            Icons.add_circle,
                            size: 50,
                            color: Color(0xFF036000),
                          ),
                          Text(
                            'Add Student',
                            style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18),
                          )
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, '/displayStudent');
                    },
                    child: Container(
                      width: 150,
                      height: 135,
                      decoration: BoxDecoration(
                          color: const Color(0xffa1c2a0),
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Icon(
                            Icons.people_alt_outlined,
                            size: 50,
                            color: Color(0xFF036000),
                          ),
                          Text(
                            'All Students',
                            style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18),
                          )
                        ],
                      ),
                    ),
                  ),

                ],
              ),


            ],
          ),
        ),
      ),
    );
  }
}
