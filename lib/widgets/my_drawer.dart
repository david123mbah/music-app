import 'package:flutter/material.dart';


class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [ 
           Padding(
             padding: const EdgeInsets.only(top: 100.0),
             child: Icon(
              Icons.lock_open_rounded,
              size: 80,
              color: Theme.of(context).colorScheme.inversePrimary,
             ),
           ),
            Padding(
             padding: const EdgeInsets.all(25.0),
             child: Divider(
              color: Theme.of(context).colorScheme.secondary,
             ),
             
           )
        ],
      ),
    );
  }
}