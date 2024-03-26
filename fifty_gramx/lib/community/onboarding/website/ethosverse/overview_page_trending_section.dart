import 'package:flutter_neumorphic/flutter_neumorphic.dart';

Widget buildOverviewPageTrendingSection(BuildContext context) {
  return Container(
    height: 300,
    child: ListView.builder(
      itemCount: trendingGrievances.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.pushNamed(
              context,
              '/ethosverse/domain',
              arguments: {'domainName': trendingGrievances[index]['url']},
            );
          },
          child: Neumorphic(
            style: NeumorphicStyle(
              depth: 4, // Change depth according to your design
            ),
            child: Card(
              child: ListTile(
                title: Text(trendingGrievances[index]['title']),
                subtitle: Text(trendingGrievances[index]['domain']),
                trailing: Text(
                    '${trendingGrievances[index]['numArticles']} articles'),
              ),
            ),
          ),
        );
      },
    ),
  );
}

// Sample data for trending grievances
List<Map<String, dynamic>> trendingGrievances = [
  {
    'title': 'Grievance Title 1',
    'domain': 'Domain Name 1',
    'url': "alpha",
    'numArticles': 3,
  },
  {
    'title': 'Grievance Title 2',
    'domain': 'Domain Name 2',
    'url': "beta",
    'numArticles': 5,
  },
  // Add more grievances as needed
];
