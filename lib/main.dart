import 'package:flutter/material.dart';
import 'package:flutter_web_design/widgets/gradient_arc_painter.dart';
import 'package:flutter_web_design/widgets/graph_chart.dart';
import 'package:flutter_web_design/widgets/rectangle_action_widgets.dart';
import 'package:flutter_web_design/widgets/square_action_widget.dart';
import 'package:flutter_web_design/widgets/circlular_widget.dart';

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
                    height: 400,
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
            SingleChildScrollView(
              child: SizedBox(
                width: size.width * .55,
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
                      height: 160,
                      width: size.width * .55,
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
                                  fontSize: 30,
                                  color: Colors.orange,
                                  fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              'Wellcome home! The air Quality is fresh and good you can go out today',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.orange,
                              ),
                            ),
                            const SizedBox(height: 20),
                            Wrap(
                              crossAxisAlignment: WrapCrossAlignment.center,
                              spacing: 10,
                              children: const [
                                Icon(Icons.ad_units_outlined),
                                Text(
                                  '25~C',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'Out door temperature',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            const SizedBox(height: 8),
                            Wrap(
                              crossAxisAlignment: WrapCrossAlignment.center,
                              spacing: 10,
                              children: const [
                                Icon(Icons.cloud_queue_outlined),
                                Text(
                                  'Outdoor temperature',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                                          borderRadius:
                                              BorderRadius.circular(10),
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
                          const SizedBox(height: 2),
                          Wrap(
                            spacing: 20,
                            children: [
                              SquareActionWidget(
                                  isActive: false,
                                  text: 'Refregrator',
                                  icon: Icons.ad_units),
                              SquareActionWidget(
                                  isActive: true,
                                  text: 'Tempature',
                                  icon: Icons.bolt_outlined),
                              SquareActionWidget(
                                  isActive: false,
                                  text: 'Air Condtioner',
                                  icon: Icons.air),
                              SquareActionWidget(
                                  isActive: false,
                                  text: 'Lights',
                                  icon: Icons.lightbulb_outline)
                            ],
                          ),
                          const SizedBox(height: 15),
                          Container(
                            height: 300,
                            width: size.width * .55,
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Wrap(
                                      spacing: 10,
                                      crossAxisAlignment:
                                          WrapCrossAlignment.center,
                                      children: [
                                        Icon(Icons.offline_bolt_rounded,
                                            color: Colors.deepPurple),
                                        Text(
                                          'Living Room Temprature',
                                          style: TextStyle(
                                              color: Colors.deepPurple,
                                              fontSize: 16),
                                        )
                                      ],
                                    ),
                                    Wrap(
                                      spacing: 10,
                                      crossAxisAlignment:
                                          WrapCrossAlignment.center,
                                      children: [
                                        Text(
                                          'ON',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Switch(
                                          value: true,
                                          onChanged: (value) {},
                                          activeColor: Colors.deepPurple,
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: const [
                                    Icon(Icons.minimize),
                                    Center(
                                      child: SizedBox(
                                        width: 100.0,
                                        height: 100.0,
                                        child: CustomPaint(
                                          painter: GradientArcPainter(
                                            progress: .2,
                                            startColor: Colors.deepPurple,
                                            endColor: Colors.deepOrangeAccent,
                                            width: 8.0,
                                          ),
                                          child: Center(child: Text('25~C')),
                                        ),
                                      ),
                                    ),
                                    Icon(Icons.add)
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
              ),
            ),
            const SizedBox(width: 12),
            Container(
              width: size.width * .35,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20)),
                  color: Colors.grey.shade200),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Icon(Icons.settings),
                          SizedBox(width: 2),
                          Icon(Icons.notifications_none),
                          SizedBox(width: 12),
                          CircleAvatar(
                            child: Icon(Icons.person),
                            backgroundColor: Colors.deepPurple,
                          ),
                          SizedBox(width: 12),
                          Text('Scarlet')
                        ]),
                    const SizedBox(
                      height: 12.0,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'My Devices',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Wrap(
                            spacing: 10,
                            children: const [
                              Text('on'),
                              Icon(Icons.chevron_right)
                            ],
                          )
                        ]),
                    const SizedBox(height: 12),
                    Wrap(
                      spacing: 20,
                      runSpacing: 20,
                      children: [
                        RectangleActionWidget(
                          isActive: true,
                          icon: Icons.ad_units,
                          text: 'Refregration',
                          color: Colors.purple,
                        ),
                        RectangleActionWidget(
                          isActive: true,
                          icon: Icons.router,
                          text: 'Router',
                          color: Colors.amber,
                        ),
                        RectangleActionWidget(
                          isActive: true,
                          icon: Icons.blur_circular_rounded,
                          text: 'Refregration',
                          color: Colors.orangeAccent,
                        ),
                        RectangleActionWidget(
                          isActive: true,
                          icon: Icons.sunny,
                          text: 'Lights',
                          color: Colors.lightBlue,
                        )
                      ],
                    ),
                    const SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Members',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Icon(Icons.arrow_forward_ios_outlined)
                      ],
                    ),
                    const SizedBox(height: 12),
                    Container(
                      height: 90,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: Colors.white),
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            CircularProfile(
                              name: 'Scarlet',
                              icon: Icons.person,
                              role: 'Admin',
                            ),
                            CircularProfile(
                              name: 'Nariya',
                              icon: Icons.person,
                              role: 'Full Access',
                            ),
                            CircularProfile(
                              name: 'Riya',
                              icon: Icons.person,
                              role: 'Full Access',
                            ),
                            CircularProfile(
                              name: 'Dad',
                              icon: Icons.person,
                              role: 'Full Access',
                            ),
                            CircularProfile(
                              name: 'Mom',
                              icon: Icons.person,
                              role: 'Full Access',
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Powerd Consumer',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Wrap(
                            spacing: 10,
                            children: const [
                              Text('Month'),
                              Icon(Icons.chevron_right)
                            ],
                          )
                        ]),
                    const SizedBox(height: 12),
                    GraphChart(width: size.width * .30)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
