import 'package:crm/widgets/footer_small.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../widgets/create_project.dart';
import '../widgets/menu.dart';
import '../widgets/project_card.dart';
import '../widgets/top_nav.dart';

class ProjectsSmall extends StatefulWidget {
  const ProjectsSmall({Key? key}) : super(key: key);

  @override
  State<ProjectsSmall> createState() => _ProjectsSmallState();
}

class _ProjectsSmallState extends State<ProjectsSmall> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

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
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [ProjectCard(), CreateProject()],
              ),
              Divider(),
              FooterSmall(),
            ],
          ),
        ));
  }
}
