import 'package:flutter/material.dart';
import 'package:show_case/widgets/cups_number_display.dart';
import 'package:showcaseview/showcaseview.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  final key4 = GlobalKey();
  BuildContext? myContext;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 200), (){
      WidgetsBinding.instance.addPostFrameCallback(
      (_) => ShowCaseWidget.of(myContext!).startShowCase(
        [
          key4,
        ],
      ),
    );
    });
  }

  @override
  Widget build(BuildContext context) {
    return ShowCaseWidget(
      builder: Builder(
        builder: (context) {
          myContext = context;
          return Scaffold(
            appBar: AppBar(
              title: const Text('Water tracker'),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Showcase(
                    key: key4,
                    title: "change water intake goal",
                    description: "increase or decrease",
                     tooltipBackgroundColor: Colors.indigo,
                     textColor: Colors.white,
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(child: Icon(Icons.remove)),
                        Expanded(child: CupsNumberDisplay()),
                        Expanded(child: Icon(Icons.add)),
                      ],
                    ),
                  ),
                  Text("Adjust you water intake goal"),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
