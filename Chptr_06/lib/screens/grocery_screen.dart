import 'package:flutter/material.dart';
import 'empty_grocery_screen.dart';
import 'package:provider/provider.dart';
import '../models/models.dart';
import 'grocery_item_screen.dart';

class GroceryScreen extends StatelessWidget {
  const GroceryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildGroceryScreen() {
      return Consumer<GroceryManager>(
        builder: (context, manager, child) {
          if (manager.groceryItems.isNotEmpty) {
            return Container();
          } else {
            return const EmptyGroceryScreen();
          }
        },
      );
    }

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // 1
          final manager = Provider.of<GroceryManager>(context, listen: false);
          // 2
          Navigator.push(
              context,
              //3
              MaterialPageRoute(
                // 4
                builder: ((context) => GroceryItemScreen(
                      //5
                      onCreate: (item) {
                        manager.addItem(item);
                        Navigator.pop(context);
                      },
                      onUpdate: (_) {},
                    )),
              ));
        },
        child: const Icon(Icons.add),
      ),
      body: buildGroceryScreen(),
    );
  }
}
