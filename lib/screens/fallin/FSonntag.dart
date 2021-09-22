import 'package:flutter/material.dart';
import 'package:prototyp_events/screens/home/home.dart';
import 'package:prototyp_events/screens/services/auth.dart';
import '../NavBar.dart';

class FSonntag extends StatelessWidget {
  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Zeitplan Sonntag",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: <Widget>[
          IconButton(
              onPressed: () async {
                await _auth.signOut();
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Home()));
              },
              icon: Icon(Icons.logout_rounded))
        ],
        backgroundColor: Color.fromARGB(255, 182, 24, 41),
      ),
      body: Container(
        child: ListView(
          children: [
            ListTile(
              title: Text('Sonntag 19.09.2021'),
            ),
            ListTile(
              title: Text('Photos'),
            ),
            DataTable(
              columns: const <DataColumn>[
                DataColumn(
                  label: Text(
                    'Uhrzeit',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Raum',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Beschreibung',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ),
              ],
              rows: const <DataRow>[
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('09:30')),
                    DataCell(Text('Bethmann')),
                    DataCell(Text('Gruppe/Duo')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('10:30')),
                    DataCell(Text('Stolze')),
                    DataCell(Text('Gast 1')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('10:30')),
                    DataCell(Text('Bethmann')),
                    DataCell(Text('Gast 2')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('11:30')),
                    DataCell(Text('Stolze')),
                    DataCell(Text('Gast 3')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('11:30')),
                    DataCell(Text('Bethmann')),
                    DataCell(Text('Gast 4')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('13:00')),
                    DataCell(Text('Stolze')),
                    DataCell(Text('Gast 5')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('13:00')),
                    DataCell(Text('Bethmann')),
                    DataCell(Text('Gast 6')),
                  ],
                ),
              ],
            ),
            ListTile(
              title: Text('Meet & Greet'),
            ),
            DataTable(
              columns: const <DataColumn>[
                DataColumn(
                  label: Text(
                    'Uhrzeit',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Raum',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Beschreibung',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ),
              ],
              rows: const <DataRow>[
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('10:30')),
                    DataCell(Text('Wagner')),
                    DataCell(Text('Gast 5')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('10:30')),
                    DataCell(Text('Börne')),
                    DataCell(Text('Gast 6')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('11:45')),
                    DataCell(Text('Wagner')),
                    DataCell(Text('Gast 1')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('11:45')),
                    DataCell(Text('Börne')),
                    DataCell(Text('Gast 2')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('13:30')),
                    DataCell(Text('Wagner')),
                    DataCell(Text('Gast 3')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('13:30')),
                    DataCell(Text('Börne')),
                    DataCell(Text('Gast 4')),
                  ],
                ),
              ],
            ),
            ListTile(
              title: Text('Autogramme'),
            ),
            DataTable(
              columns: const <DataColumn>[
                DataColumn(
                  label: Text(
                    'Uhrzeit',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Raum',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Beschreibung',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ),
              ],
              rows: const <DataRow>[
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('14:00')),
                    DataCell(Text('Mendelssohn')),
                    DataCell(Text('Alle Gäste')),
                  ],
                ),
              ],
            ),
            ListTile(
              title: Text('Panel'),
            ),
            DataTable(
              columns: const <DataColumn>[
                DataColumn(
                  label: Text(
                    'Uhrzeit',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Raum',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Beschreibung',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ),
              ],
              rows: const <DataRow>[
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('10:30')),
                    DataCell(Text('Mendelssohn')),
                    DataCell(Text('Gast 3 & 4')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('11:15')),
                    DataCell(Text('Mendelssohn')),
                    DataCell(Text('Gast 3 & 4')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('13:15')),
                    DataCell(Text('Mendelssohn')),
                    DataCell(Text('Gast 1 & 2')),
                  ],
                ),
              ],
            ),
            ListTile(
              title: Text('Sonstige'),
            ),
            DataTable(
              columns: const <DataColumn>[
                DataColumn(
                  label: Text(
                    'Uhrzeit',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Raum',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Beschreibung',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ),
              ],
              rows: const <DataRow>[
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('17:30')),
                    DataCell(Text('Mendelssohn')),
                    DataCell(Text('Closing Ceremony')),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
