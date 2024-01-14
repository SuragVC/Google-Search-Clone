import 'package:flutter/material.dart';
import 'package:google_clone/services/api_services.dart';
import 'package:toggle_switch/toggle_switch.dart';

class DomainSwitcher extends StatefulWidget {
  const DomainSwitcher({super.key});

  @override
  State<DomainSwitcher> createState() => _DomainSwitcherState();
}

class _DomainSwitcherState extends State<DomainSwitcher> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      child: ToggleSwitch(
        minWidth: 55.0,
        cornerRadius: 20.0,
        activeBgColors: [
          [Colors.green[800]!],
          [Colors.red[800]!]
        ],
        activeFgColor: Colors.white,
        inactiveBgColor: Colors.grey,
        inactiveFgColor: Colors.white,
        initialLabelIndex: 1,
        totalSwitches: 2,
        labels: const ['Prod', 'Pre'],
        radiusStyle: true,
        onToggle: (index) {
          if (index == 0) {
            ApiService.isDummyData = false;
          } else {
            ApiService.isDummyData = true;
          }
        },
      ),
    );
  }
}
