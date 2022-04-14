import 'package:flutter/material.dart';


class NavigationDrawerScreen extends StatefulWidget {
  const NavigationDrawerScreen({Key? key}) : super(key: key);

  @override
  State<NavigationDrawerScreen> createState() => _NavigationDrawerScreenState();
}

class _NavigationDrawerScreenState extends State<NavigationDrawerScreen> {
  final _messengerKey = GlobalKey<ScaffoldMessengerState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scaffoldMessengerKey: _messengerKey,
      home: Scaffold(
        appBar: AppBar(),
        drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children:[
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.deepOrange,
        ),
          child:Container(
            height: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 100,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(50.0))
                ),
                child: Image.network("https://i.dlpng.com/static/png/7334902_preview.png"),
              ),
            const Text("Украшения из кораллов"),
            ],
            ),
          ),
        ),
            ListTile(
            leading: const Icon(Icons.one_k),
            title: const Text("Каталог"),
            onTap: () {
              _messengerKey.currentState!.showSnackBar(
                const SnackBar(content: Text('Переход в каталог')));
            },
          ),

            ListTile(
            leading: const Icon(Icons.two_k),
            title: const Text("Корзина"),
            onTap: () {
              _messengerKey.currentState!.showSnackBar(
                  const SnackBar(content: Text('Переход в корзину')));
            },
          ),
            const Divider(),
            const Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text("Профиль"),
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text("Настройки"),
              onTap: () {
                _messengerKey.currentState!.showSnackBar(
                    const SnackBar(content: Text('Переход в настройки')));
            },
          ),
        ]
      ),
    ),
        body: const Center(child: Text("Содержимое экрана")),
      )
    );
  }
}
