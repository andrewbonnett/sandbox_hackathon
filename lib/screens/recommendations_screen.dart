import 'package:flash_chat/components/reusable_card.dart';
import 'package:flash_chat/data/ProjectPost.dart';
import 'package:flash_chat/screens/companies_view.dart';
import 'package:flutter/material.dart';

class RecommendationsScreen extends StatefulWidget {
  @override
  _RecommendationsScreenState createState() => _RecommendationsScreenState();
}

class _RecommendationsScreenState extends State<RecommendationsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // Search bar
      appBar: AppBar(
        title: Text('Find Projects By:'),
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
            ),
            onPressed: () {
              showSearch(context: context, delegate: ProjectSearch());
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SearchCompaniesScreen(),
                        ),
                      );
                    },
                    child: ReusableCard(
                      color: Color(0xFFEEEEEE),
                      cardChild: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.business,
                              size: 40.0,
                              color: Color(0xFF555555),
                            ),
                            Text(
                              'Company',
                              style: TextStyle(
                                fontSize: 19.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: Color(0xFFEEEEEE),
                    cardChild: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.emoji_people,
                            size: 40.0,
                            color: Color(0xFF555555),
                          ),
                          Text(
                            'Job Role',
                            style: TextStyle(
                              fontSize: 19.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(),
          )
        ],
      ),
    );
  }

  Widget buildprojectsBody() {
    return Column();
  }
}

class ProjectSearch extends SearchDelegate<ProjectPost> {
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

  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100];
}
