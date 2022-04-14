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
                child: Image.network("https://yandex.ru/images/search?pos=13&img_url=https%3A%2F%2Fwww.netclipart.com%2Fpp%2Fm%2F230-2309462_coral-png-transparent-coral-reef-transparent-background.png&text=%D0%BA%D0%BE%D1%80%D0%B0%D0%BB%D0%BB%D1%8B%20png&lr=20714&rpt=simage&source=serp"),
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
        body: Center(child: Text("Содержимое экрана")),
      )
    );
  }
}
