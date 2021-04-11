import 'package:flash_chat/components/rounded_button.dart';
import 'package:flash_chat/data/ProjectPost.dart';
import 'package:flash_chat/data/project_list.dart';
import 'package:flutter/material.dart';

ProjectData projData = new ProjectData();

class SingleProjectScreen extends StatefulWidget {
  @override
  _SingleProjectScreenState createState() => _SingleProjectScreenState();
}

class _SingleProjectScreenState extends State<SingleProjectScreen> {
  @override
  Widget build(BuildContext context) {
    final int index = ModalRoute.of(context).settings.arguments;
    ProjectPost thisPost = projData.getProjectData()[index];
    double c_width = MediaQuery.of(context).size.width * 0.94;
    return Scaffold(
      appBar: AppBar(
        title: Text(thisPost.company),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Center(
                child: SizedBox(
                  width: 200.0,
                  height: 200.0,
                  child: Image.asset(thisPost.logo_string),
                ),
              ),
              Row(
                children: [
                  Container(
                    child: Text(
                      projData.getProjectData()[index].title,
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    width: c_width,
                    child: Text(
                      thisPost.full_description,
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 100.0,
              ),
              Text(thisPost.deadline),
              SizedBox(
                height: 3.0,
              ),
              RoundedButton(
                isEnabled: true,
                title: 'SUBMIT A DESIGN',
                height: 40.0,
                enabledColor: Colors.red,
                onPressed: () {},
                width: 100.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
