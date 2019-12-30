import 'package:flutter/material.dart';
//import 'package:gpm_version_4/pages/settings.dart';
import 'package:gpm_version_4/pages/todos.dart';
import 'package:gpm_version_4/screens/language_advance.dart';
//import 'package:gpm_version_4/pages/todosArchive.dart';
//import 'package:gpm_version_4/screens/callclarity.dart';
//import 'package:gpm_version_4/screens/callplace.dart';
import 'package:gpm_version_4/screens/misioneros.dart';
import 'package:gpm_version_4/screens/curso_vamos.dart';
//import 'package:gpm_version_4/screens/fases.dart';
//import 'package:gpm_version_4/screens/localechurch.dart';
//import 'package:gpm_version_4/screens/profile_ind.dart';
//import 'package:gpm_version_4/screens/teologicos.dart';
import 'package:gpm_version_4/screens/timeline.dart';
//import 'package:gpm_version_4/screens/transcultural.dart';
//import 'package:gpm_version_4/src/ui/calendarpage/calendarpage.dart';

class MainTabsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: new Scaffold(
          body: TabBarView(
            children: <Widget>[
              TodosPage(),
              //LineaTiempo(),
              //TransCultural()
              //PhasesGpm(),
              CursoVamos(),
              //ScreenPhases()
              //TheologyStudies()
              //LocalChurch()
              //CallClarity()
              //CallPlace()
              //MissionaryScreen()
              LanguageAdvance()
            ],
            
          ),
          bottomNavigationBar: PreferredSize(
            preferredSize: Size(60.0, 60.0),
            child: TabBar(
              labelColor: Theme.of(context).primaryColor,
              labelStyle: TextStyle(fontSize: 10.0),
              tabs: <Widget>[
                Tab(
                  icon: Icon(Icons.list),
                  text: 'Todos',
                ),
                Tab(
                  icon: Icon(Icons.history),
                  text: 'Archive',
                ),
                Tab(
                  icon: Icon(Icons.settings),
                  text: 'Settings',
                ),
              ],

            ),
          ),
        ),
      ),
      
    );
  }
}
