<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

# comprehensive_dropdown


***
  ## Getting started <br> <br>
  
  To use this plugin, add `comprehensive_dropdown` as a [dependency in your pubspec.yaml file](https://flutter.dev/platform-plugins/).


import the package in your dart file

```dart
import  'package:comprehensive_dropdown/comprehensive_dropdown.dart';
```  

## Usage

**Add additional widgets to your dropdown menu**

You can use this to add additional button to add/create item.

```dart
CDropdownMenu(
    margin: EdgeInsets.symmetric(horizontal: 45),
    enableFilter: true,
    focusNode: FocusNode(),
    actionWidgetPosition: ActionWidgetPosition.bottom,
    actionWidget: TextButton.icon(
    onPressed: () {
        log('action worked');
    },
    label: const Text('Add Item'),
    icon: Icon(Icons.add),
    ),
    menuEntries: const [
        CMenuEntry(value: "Cat", label: 'Cat'),
        CMenuEntry(value: "Dog", label: 'Dog'),
        CMenuEntry(value: "Elephant", label: 'Elephant'),
    ],
)
```

or add description for the options
```dart
CDropdownMenu(
    margin: EdgeInsets.symmetric(horizontal: 45),
    enableFilter: true,
    focusNode: FocusNode(),
    actionWidgetPosition: ActionWidgetPosition.top,
    actionWidget: Text("filter applied = [[category='Animals']]"),
    menuEntries: const [
        CMenuEntry(value: "Cat", label: 'Cat'),
        CMenuEntry(value: "Dog", label: 'Dog'),
        CMenuEntry(value: "Elephant", label: 'Elephant'),
    ],
)
```
