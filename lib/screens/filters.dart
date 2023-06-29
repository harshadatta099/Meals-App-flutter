import 'package:flutter/material.dart';
import 'package:mealsapp/screens/tabs.dart';
import 'package:mealsapp/widgets/main_drawer.dart';

enum Filter {
  GlutenFree,
  LactoseFree,
  Vegetarian,
  Vegan,
}

class FlitersScreen extends StatefulWidget {
  const FlitersScreen({super.key});

  @override
  State<FlitersScreen> createState() => _FlitersScreenState();
}

class _FlitersScreenState extends State<FlitersScreen> {
  var _glutenFreeFiterSet = false;
  var _lactoseFreeFiterSet = false;
  var _vegetarianFreeFiterSet = false;
  var _veganFreeFiterSet = false;
  void onChanged(bool newValue) {
    setState(() {
      _glutenFreeFiterSet = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Filters'),
      ),
      drawer: MainDrawer(onSelectScreen: (identifier) {
        Navigator.of(context).pop();
        if (identifier == 'meals') {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => const TabsScreen(),
            ),
          );
        }
      }),
      body: WillPopScope(
        onWillPop: () async {
          Navigator.of(context).pop({
            Filter.GlutenFree: _glutenFreeFiterSet,
            Filter.LactoseFree: _lactoseFreeFiterSet,
            Filter.Vegetarian: _vegetarianFreeFiterSet,
            Filter.Vegan: _veganFreeFiterSet,
          });
          return false;
        },
        child: Column(
          children: [
            SwitchListTile(
              value: _glutenFreeFiterSet,
              onChanged: onChanged,
              title: Text(
                'Gluten-free',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                      fontSize: 24,
                    ),
              ),
              subtitle: Text(
                'Only include gluten-free meals',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
              ),
              activeColor: Theme.of(context).colorScheme.tertiary,
              contentPadding: const EdgeInsets.only(left: 34, right: 22),
            ),
            SwitchListTile(
              value: _lactoseFreeFiterSet,
              onChanged: (isChecked) {
                setState(() {
                  _lactoseFreeFiterSet = isChecked;
                });
              },
              title: Text(
                'Lactose-free',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                      fontSize: 24,
                    ),
              ),
              subtitle: Text(
                'Only include lactose-free meals',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
              ),
              activeColor: Theme.of(context).colorScheme.tertiary,
              contentPadding: const EdgeInsets.only(left: 34, right: 22),
            ),
            SwitchListTile(
              value: _vegetarianFreeFiterSet,
              onChanged: (isChecked) {
                setState(() {
                  _vegetarianFreeFiterSet = isChecked;
                });
              },
              title: Text(
                'Vegetarian-free',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                      fontSize: 24,
                    ),
              ),
              subtitle: Text(
                'Only include vegetarian-free meals',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
              ),
              activeColor: Theme.of(context).colorScheme.tertiary,
              contentPadding: const EdgeInsets.only(left: 34, right: 22),
            ),
            SwitchListTile(
              value: _veganFreeFiterSet,
              onChanged: (isChecked) {
                setState(() {
                  _veganFreeFiterSet = isChecked;
                });
              },
              title: Text(
                'Vegan-free',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                      fontSize: 24,
                    ),
              ),
              subtitle: Text(
                'Only include vegan-free meals',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
              ),
              activeColor: Theme.of(context).colorScheme.tertiary,
              contentPadding: const EdgeInsets.only(left: 34, right: 22),
            ),
          ],
        ),
      ),
    );
  }
}
