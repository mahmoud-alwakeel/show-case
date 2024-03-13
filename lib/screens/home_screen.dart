import 'package:flutter/material.dart';
import 'package:show_case/screens/settings_Screen.dart';
import 'package:show_case/widgets/cups_goal.dart';
import 'package:show_case/widgets/cups_number_display.dart';
import 'package:showcaseview/showcaseview.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final key1 = GlobalKey();
  final key2 = GlobalKey();
  final key3 = GlobalKey();

  @override
  void initState() {
    super.initState();
      WidgetsBinding.instance.addPostFrameCallback(
      (_) => ShowCaseWidget.of(context).startShowCase(
        [
          key1,
          key2,
          key3,
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        leading: IconButton(
          color: Colors.white,
          onPressed: () {
            setState(() {
              ShowCaseWidget.of(context).startShowCase([
                key1,
                key2,
                key3,
              ]);
            });
          },
          icon: const Icon(Icons.help),
        ),
        title: const Text(
          'Water tracker',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SettingsScreen(),
                ),
              );
            },
            icon: Showcase(
                key: key1,
                description: 'anything for now',
                targetShapeBorder: const CircleBorder(),
                tooltipBackgroundColor: Colors.indigo,
                //descTextStyle: TextStyle(color: Colors.white),
                textColor: Colors.white,
                targetPadding: const EdgeInsets.all(8),
                tooltipPadding: const EdgeInsets.all(20),
                onTargetClick: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return const SettingsScreen();
                  })).then((_) => ShowCaseWidget.of(context).startShowCase([
                        key2,
                        key3,
                      ]));
                },
                disposeOnTap: true,
                child: const Icon(
                  Icons.settings,
                  color: Colors.white,
                )),
          ),
        ],
      ),
      body: Center(
        child: Showcase(
          key: key2,
          title: 'Title for now',
          description: 'anything for now',
          tooltipBackgroundColor: Colors.indigo,
          //descTextStyle: TextStyle(color: Colors.white),
          textColor: Colors.white,
          showArrow: false,
          targetPadding: const EdgeInsets.all(8),
          tooltipPadding: const EdgeInsets.all(20),
          child: const Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CupsNumberDisplay(),
              SizedBox(
                height: 20,
              ),
              CupsGoal(),
            ],
          ),
        ),
      ),
      floatingActionButton: Showcase.withWidget(
        key: key3,
        width: 50,
        height: 50,
        targetShapeBorder: const CircleBorder(),
        targetPadding: const EdgeInsets.all(8),
        container: Icon(
          Icons.local_drink,
          size: 50,
          color: Colors.indigo[400],
        ),
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.indigo,
          shape: const CircleBorder(),
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
