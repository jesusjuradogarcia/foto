import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final appTitle = 'Tienda de deportes';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                width: 4,
                color: Colors.red,
              ),
            ),
            child: const Center(
              child: Text(
                'Jesus Jurado Garcia',
                textDirection: TextDirection.ltr,
                style: TextStyle(
                  fontSize: 32,
                  color: Colors.black87,
                ),
              ),
            ),
          ),
          const Divider(
            height: 50,
            color: Colors.red,
            thickness: 5,
            indent: 90,
            endIndent: 90,
          ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Center(
                child: Image.network(
                    'https://scontent.fcjs4-1.fna.fbcdn.net/v/t1.6435-9/200075270_542569770487919_6284492009134546826_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=174925&_nc_ohc=Q-yECVw00ncAX8c7VwD&_nc_ht=scontent.fcjs4-1.fna&oh=00_AfBxV0_PhhC9xrLFYJQx3MN5Eh_RnoRR7jWZyJEoBDKiAA&oe=648C3C25')),
          ),
          const Divider(
            height: 50,
            color: Colors.red,
            thickness: 5,
            indent: 90,
            endIndent: 90,
          ),
          Container(
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(width: 4, color: Colors.red),
            ),
            child: const Center(
              child: Text(
                '6I Programacion',
                textDirection: TextDirection.ltr,
                style: TextStyle(
                  fontSize: 32,
                  color: Colors.black87,
                ),
              ),
            ),
          ),
          Container(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  const SizedBox(height: 40.0),
                  DefaultTabController(
                      length: 3, // length of tabs
                      initialIndex: 0,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            Container(
                              child: TabBar(
                                labelColor: Colors.red,
                                unselectedLabelColor: Colors.black,
                                tabs: [
                                  const Tab(icon: Icon(Icons.people)),
                                  const Tab(icon: Icon(Icons.apple)),
                                  const Tab(icon: Icon(Icons.train)),
                                ],
                              ),
                            ),
                            Container(
                                height: 400, //height of TabBarView
                                decoration: const BoxDecoration(
                                    border: Border(
                                        top: BorderSide(
                                            color: Colors.grey, width: 0.5))),
                                child: TabBarView(children: <Widget>[
                                  Container(
                                    child: const Center(
                                      child: Tab(icon: Icon(Icons.people)),
                                    ),
                                  ),
                                  Container(
                                    child: const Center(
                                      child: Tab(icon: Icon(Icons.apple)),
                                    ),
                                  ),
                                  Container(
                                    child: const Center(
                                      child: Tab(icon: Icon(Icons.train)),
                                    ),
                                  ),
                                ]))
                          ])),
                ]),
          ),
        ],
      ),
      drawer: Drawer(
        // Agrega un ListView al drawer. Esto asegura que el usuario pueda desplazarse
        // a través de las opciones en el Drawer si no hay suficiente espacio vertical
        // para adaptarse a todo.
        child: ListView(
          // Importante: elimina cualquier padding del ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              child: Text('Perfil de Jesus'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: const Text('Pag 1'),
              onTap: () {
                // Actualiza el estado de la aplicación
                // ...
                // Luego cierra el drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Pag 2'),
              onTap: () {
                // // Actualiza el estado de la aplicación
                // ...
                // Luego cierra el drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
