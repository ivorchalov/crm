import 'package:crm/widgets/footer_large.dart';
import 'package:crm/widgets/menu.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../widgets/create_project.dart';
import '../widgets/project_card.dart';
import '../widgets/top_nav.dart';

class ProjectsLarge extends StatefulWidget {
  const ProjectsLarge({Key? key}) : super(key: key);

  @override
  State<ProjectsLarge> createState() => _ProjectsLargeState();
}

class _ProjectsLargeState extends State<ProjectsLarge> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  List cards = [
    CreateProject(),
    ProjectCard(),
    ProjectCard(),
    ProjectCard(),
    ProjectCard(),
    ProjectCard(),
    ProjectCard(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        appBar: topNavigationBar(context, scaffoldKey),
        drawer: Drawer(
          child: Menu(isVertical: true),
        ),
        body: Container(
          color: light.withOpacity(.3),
          child: ListView(
            padding: EdgeInsets.all(20),
            children: [
              GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4),
                  itemCount: cards.length,
                  itemBuilder: (context, index) {
                    return cards[cards.length - index - 1];
                  }),
              Divider(),
              FooterLarge(),
            ],
          ),
        ));
  }
}
