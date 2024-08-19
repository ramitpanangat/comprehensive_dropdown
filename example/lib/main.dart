import 'dart:developer';

import 'package:comprehensive_dropdown/comprehensive_dropdown.dart';
import 'package:flutter/cupertino.dart';
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
      debugShowCheckedModeBanner: false,
      title: 'Comprehensive Dropdown',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ExampleWidget(),
    );
  }
}

class ExampleWidget extends StatefulWidget {
  const ExampleWidget({super.key});

  @override
  State<ExampleWidget> createState() => _ExampleWidgetState();
}

class _ExampleWidgetState extends State<ExampleWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: const Text(
          "Comprehensive Dropdown",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 200.0),
        child: CDropdownMenu(
          margin: const EdgeInsets.symmetric(horizontal: 45),
          enableFilter: false,
          actionWidgetPosition: ActionWidgetPosition.bottom,
          hintText: "Select Animal",
          actionWidget: TextButton.icon(
            style: TextButton.styleFrom(padding: EdgeInsetsDirectional.zero),
              icon: const Icon(
                Icons.add_circle,
                color: Colors.white,
              ),
              onPressed: () {},
              label: const Text("Add Item", style: TextStyle(color: Colors.white),)),
          trailingIcon: const Icon(
            CupertinoIcons.chevron_down,
            size: 18,
          ),
          menuStyle: MenuStyle(
              shadowColor: const WidgetStatePropertyAll<Color>( Colors.transparent),
              backgroundColor:WidgetStatePropertyAll<Color>( Colors.redAccent.withOpacity(0.8))),
          menuEntries: const [
            CMenuEntry(value: "Cat", label: 'Cat', labelWidget: Text("Cat", style: TextStyle(color: Colors.white),)),
            CMenuEntry(value: "Dog", label: 'Dog', labelWidget: Text("Dog", style: TextStyle(color: Colors.white),)),
            CMenuEntry(value: "Elephant", label: 'Elephant', labelWidget: Text("Elephant", style: TextStyle(color: Colors.white),)),
          ],
        ),
      ),
    );
  }
}
