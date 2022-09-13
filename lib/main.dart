import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isSwitched = true;

  void toggleSwitch(bool value) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
      });
    } else {
      setState(() {
        isSwitched = false;
      });
      print('Switch Button is OFF');
    }
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        children: [
          Container(
            width: 80,
            decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: size.height * .7,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: const [
                      Icon(
                        Icons.home_outlined,
                        color: Colors.white,
                        size: 35,
                      ),
                      Icon(
                        Icons.ad_units,
                        color: Colors.white,
                        size: 35,
                      ),
                      Icon(
                        Icons.shield_outlined,
                        color: Colors.white,
                        size: 35,
                      ),
                      Icon(
                        Icons.location_on_outlined,
                        color: Colors.white,
                        size: 35,
                      ),
                      Icon(
                        Icons.people_outline_outlined,
                        color: Colors.white,
                        size: 35,
                      ),
                      Icon(
                        Icons.stacked_bar_chart_rounded,
                        color: Colors.white,
                        size: 35,
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 20.0),
                  child: Icon(
                    Icons.exit_to_app,
                    color: Colors.white,
                    size: 35,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 12),
          SizedBox(
            width: size.width * .45,
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      labelText: 'Search',
                      prefixIcon: const Icon(Icons.search)),
                ),
                const SizedBox(height: 20),
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.orangeAccent.shade100,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Hello, Scarlet',
                          style: TextStyle(
                              fontSize: 35,
                              color: Colors.orange,
                              fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          'Wellcome home! The air Quality is fresh and good you can go out today',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.orange,
                          ),
                        ),
                        const SizedBox(height: 30),
                        Wrap(
                          children: const [
                            Icon(Icons.ad_units_outlined),
                            Text(
                              '25+',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Out door temperature',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        Wrap(
                          children: const [
                            Icon(Icons.cloud_queue_outlined),
                            Text(
                              'Outdoor temperature',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Scarlet\'s Home'),
                          SizedBox(
                            width: 280,
                            height: 80,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Wrap(
                                  children: const [
                                    Icon(
                                      Icons.water_drop_outlined,
                                      color: Colors.grey,
                                    ),
                                    Text(
                                      '35%',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                                Wrap(
                                  children: const [
                                    Icon(
                                      Icons.severe_cold,
                                      color: Colors.grey,
                                    ),
                                    Text(
                                      '15^C',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.grey.shade200),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15.0, right: 15.0),
                                    child: DropdownButton(
                                      icon: const Icon(
                                          Icons.chevron_left_rounded),
                                      value: 'Living Room',
                                      items: const [
                                        DropdownMenuItem(
                                          value: 'Living Room',
                                          child: Text('Living Room'),
                                        ),
                                        DropdownMenuItem(
                                          value: 'Bed Room',
                                          child: Text('Bed Room'),
                                        ),
                                        DropdownMenuItem(
                                          value: 'Shower',
                                          child: Text('Shower'),
                                        ),
                                        DropdownMenuItem(
                                          value: 'Kitchen',
                                          child: Text('Kitchen'),
                                        )
                                      ],
                                      onChanged: (value) {},
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 15),
                      Row(
                        children: [
                          //Custome Widgets goes here
                          Container(
                            height: 100,
                            width: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text('on'),
                                      Switch(
                                        value: isSwitched,
                                        onChanged: (value) {},
                                        activeColor: Colors.deepPurple,
                                      )
                                    ],
                                  ),
                                  const Icon(Icons.phone_android_sharp),
                                  const Text('Refrigerator')
                                ],
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
