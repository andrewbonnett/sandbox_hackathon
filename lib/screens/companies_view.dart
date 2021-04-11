import 'package:flash_chat/data/CompanyProfile.dart';
import 'package:flash_chat/data/company_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

final _firestore = Firestore.instance;
FirebaseUser loggedInUser;

CompanyData companyData = CompanyData();

class SearchCompaniesScreen extends StatefulWidget {
  static final routeName = '/companies';
  @override
  _SearchCompaniesScreenState createState() => _SearchCompaniesScreenState();
}

class _SearchCompaniesScreenState extends State<SearchCompaniesScreen> {
  List<CompanyProfile> companies = companyData.getCompanyData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // Search bar
      appBar: AppBar(
        title: Text('Companies'),
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
            ),
            onPressed: () {
              showSearch(context: context, delegate: CompanySearch());
            },
          ),
        ],
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: companies.length,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  ListTile(
                    leading: SizedBox(
                        width: 30.0,
                        child: Image.asset(companies[index].logo_string)),
                    title: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              companies[index].company,
                              style: TextStyle(fontSize: 24.0),
                              textAlign: TextAlign.left,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 3.0,
                        )
                      ],
                    ),
                    trailing: Icon(Icons.more_vert),
                  ),
                  Divider(
                    thickness: 1.0,
                    height: 2.0,
                  ),
                ],
              );
            }),
      )),
    );
  }
}

class CompanySearch extends SearchDelegate<CompanyProfile> {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(
          Icons.clear,
        ),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {
          close(context, null);
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Container();
  }
}
