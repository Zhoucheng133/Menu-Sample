import 'package:flutter/material.dart';
import 'package:forui/forui.dart';

class Item extends StatefulWidget {
  
  final int index;
  const Item({super.key, required this.index});

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> with SingleTickerProviderStateMixin {

  late FPopoverController controller;

  @override
  void initState() {
    super.initState();
    controller = FPopoverController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 50,
        child: Row(
          children: [
            Expanded(child: Text(widget.index.toString())),
            FPopoverMenu(
              popoverController: controller,
              shift: FPortalShift.flip,
              menu: [
                FTileGroup(
                  children: [
                    FTile(
                      prefixIcon: FIcon(FAssets.icons.info),
                      title: const Text('Item 1'),
                      onPress: () {},
                    ),
                    FTile(
                      prefixIcon: FIcon(FAssets.icons.list),
                      title: const Text('Item 2'),
                      onPress: () {},
                    ),
                    FTile(
                      prefixIcon: FIcon(FAssets.icons.copy),
                      title: const Text('Item 3'),
                      onPress: () {},
                    ),
                    FTile(
                      prefixIcon: FIcon(FAssets.icons.copy),
                      title: const Text('Item 4'),
                      onPress: () {},
                    ),
                  ],
                ),
              ], 
              child: FButton.icon(
                style: FButtonStyle.ghost,
                onPress: () {
                  controller.toggle();
                },
                child: const Icon(
                  Icons.more_vert_rounded
                ),
              ), 
            )
          ],
        ),
      );
  }
}