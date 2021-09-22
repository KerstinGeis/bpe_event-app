import 'package:flutter/material.dart';
import 'package:prototyp_events/screens/home/home.dart';
import 'package:prototyp_events/screens/services/auth.dart';
import '../NavBar.dart';

class FFreitag extends StatelessWidget {
  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Zeitplan Freitag",
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
              title: Text('Freitag 17.09.2021'),
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
                    DataCell(Text('17:00')),
                    DataCell(Text('Wagner')),
                    DataCell(Text('Special Activity')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('18:00')),
                    DataCell(Text('Börne')),
                    DataCell(Text('Special Activity')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('19:00')),
                    DataCell(Text('Tolstoi')),
                    DataCell(Text('Selfie Lounge')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('19:30')),
                    DataCell(Text('Mendelssohn')),
                    DataCell(Text('VIP Cocktail Party')),
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
