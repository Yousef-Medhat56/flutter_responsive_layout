import 'package:flutter/material.dart';
import 'package:responsive_design/constants.dart';
import 'package:responsive_design/utils/my_box.dart';
import 'package:responsive_design/utils/my_tile.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({super.key});

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
      backgroundColor: myDefaultBg,
      body: Row(
        children: [
          //drawer
          myDrawer,
          //rest of body
          Expanded(
            flex: 2,
            child: Column(
              children: [
                const SizedBox(
                  height: 12,
                ),
                AspectRatio(
                  aspectRatio: 4 / 1,
                  child: SizedBox(
                    width: double.infinity,
                    child: GridView.builder(
                        itemCount: 4,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 4),
                        itemBuilder: (context, index) {
                          return const MyBox();
                        }),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return const MyTile();
                      }),
                )
              ],
            ),
          ),
          Expanded(
              child: Column(
            children: [
              Expanded(
                child: Container(
                  color: Colors.red,
                ),
              )
            ],
          ))
        ],
      ),
    );
  }
}
