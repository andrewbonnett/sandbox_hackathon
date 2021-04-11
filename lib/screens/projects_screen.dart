import 'package:flash_chat/data/ProjectPost.dart';
import 'package:flash_chat/data/project_list.dart';
import 'package:flash_chat/screens/single_project.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

final _firestore = Firestore.instance;
FirebaseUser loggedInUser;

ProjectData projdata = ProjectData();

class SearchProjectsScreen extends StatefulWidget {
  @override
  _SearchProjectsScreenState createState() => _SearchProjectsScreenState();
}

class _SearchProjectsScreenState extends State<SearchProjectsScreen> {
  List<ProjectPost> projects = projdata.getProjectData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // Search bar
      appBar: AppBar(
        title: Text('Based on Your Interests'),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: projects.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SingleProjectScreen(),
                      settings: RouteSettings(
                        arguments: index,
                      ),
                    ),
                  );
                },
                child: Column(
                  children: [
                    ListTile(
                      leading: SizedBox(
                          width: 44.0,
                          height: 40.0,
                          child: Image.asset(projects[index].logo_string)),
                      title: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                projects[index].title,
                                style: TextStyle(fontSize: 18.0),
                                textAlign: TextAlign.left,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 3.0,
                          )
                        ],
                      ),
                      subtitle: Text(projects[index].description),
                      trailing: Icon(Icons.more_vert),
                    ),
                    Divider(
                      thickness: 1.0,
                      height: 2.0,
                    ),
                  ],
                ),
              );
            }),
      )),
    );
  }
}
