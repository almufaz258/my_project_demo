import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../utils/strings.dart';

class ThemesDemoApp extends StatelessWidget {
  const ThemesDemoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Georgia',
        splashColor: Colors.yellowAccent,

        colorScheme: ColorScheme.fromSwatch(
          brightness: Brightness.light,
          primarySwatch: Colors.deepOrange,
        ).copyWith(
          secondary: Colors.greenAccent,
        ),

        textTheme: const TextTheme(
          headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          headline6: TextStyle(fontSize: 38.0, fontStyle: FontStyle.italic),
          bodyText2: TextStyle(fontSize: 18.0, fontFamily: 'Hind'),
        ),
      ),
      home: ThemesDemoScreen(),
    );
  }
}

class ThemesDemoScreen extends StatefulWidget {
  const ThemesDemoScreen({Key? key}) : super(key: key);

  @override
  _ThemesDemoScreenState createState() => _ThemesDemoScreenState();
}

class _ThemesDemoScreenState extends State<ThemesDemoScreen> {
  double _currentSliderValue = 20;
  bool _isDarkTheme = false;


  Widget _navigationDraw() => Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        DrawerHeader(
          decoration: const BoxDecoration(
            color: Colors.redAccent,
          ),
          child: Container(
            height: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  decoration: const BoxDecoration(
                    borderRadius: 
                    BorderRadius.all(Radius.circular(50.0))),
                  child: Image.network(
                      "https://i.dlpng.com/static/png/7334902_preview.png"),
                  ),
            const Text("Украшения из кораллов"),
              ],
            ),
          ),
        ),
        ListTile(
          leading: const Icon(Icons.one_k),
          title: const Text("Каталог"),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(Icons.two_k),
          title: const Text("Корзина"),
          onTap: () {},
        ),
        const Divider(), //here is a divider
        const Padding(
          padding: EdgeInsets.only(left: 10),
          child: Text("Профиль",
              style: TextStyle(
                color: Colors.green, fontWeight: FontWeight.bold)),
        ),
          ListTile(
          leading: const Icon(Icons.settings),
          title: const Text("Настройки"),
          onTap: () {},
        ),
      ],
    ),
  );


  PreferredSizeWidget _appBar() => AppBar(
    title: Text('cOrall.cOr', ),
    actions: [
      IconButton(
        icon: const Icon(Icons.notifications_active),
        tooltip: 'Уведомления',
        onPressed: () {},
      ),
    ],
  );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      drawer: _navigationDraw(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Text('Для твоей красоты', style: Theme.of(context).textTheme.headlineLarge),
              Container(
                height: 100,
                color: Theme.of(context).colorScheme.primary,
            ),
              Row(
                children: const [
                  Text('Логин: '),
                  Expanded(child: TextField()),
                ],
              ),
              Row(
                children: const [
                  Text('Пароль: '),
                  Expanded(child: TextField()),
                ],
              ),
              ElevatedButton(onPressed: () {}, child: const Text('Войти')),
              Text(Strings.longBodyText),
              Slider(
                value: _currentSliderValue,
                max: 100,
                divisions: 5,
                label: _currentSliderValue.round().toString(),
                onChanged: (double value) {
                  setState(() {
                    _currentSliderValue = value;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
