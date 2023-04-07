import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';

class HealthNeeds extends StatefulWidget {
  const HealthNeeds({super.key});

  @override
  State<HealthNeeds> createState() => _HealthNeedsState();
}

class _HealthNeedsState extends State<HealthNeeds> {
  @override
  Widget build(BuildContext context) {
    List<CustomIcon> customIcons = [
      CustomIcon(name: "Appointment", icon: 'Logos/Appointment.png'),
      CustomIcon(name: "Hospital", icon: 'Logos/Hospital.png'),
      CustomIcon(name: "Covid-19", icon: 'Logos/Covid.png'),
      CustomIcon(name: "More", icon: 'Logos/More.png'),
    ];
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(customIcons.length, (index) {
        return Column(
          children: [
            Container(
              width: 60,
              height: 60,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Theme.of(context)
                    .colorScheme
                    .primaryContainer
                    .withOpacity(0.4),
              ),
              child: Image.asset(customIcons[index].icon),
            ),
            const SizedBox(height: 6),
            Text(customIcons[index].name)
          ],
        );
      }),
    );
  }
}

class CustomIcon {
  final String icon;
  final String name;
  CustomIcon({
    required this.icon,
    required this.name,
  });
}
