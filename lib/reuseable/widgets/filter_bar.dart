import 'package:flutter/material.dart';


class FilterBar extends StatefulWidget {
  const FilterBar({Key? key}) : super(key: key);

  @override
  State<FilterBar> createState() => _FilterBarState();
}

class _FilterBarState extends State<FilterBar> {
  bool visibleGrid = true;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      width: double.infinity,
      child: Row(
        // ignore: prefer_const_literals_to_create_immutables
        children: <Widget>[
          const Icon(Icons.filter_list_outlined),
          const Text("Filter"),
          Expanded(
            child: Container(),
          ),
          const Icon(Icons.unfold_less_outlined),
          const Text("Price: low to high"),
          Expanded(
            child: Container(),
          ),
          IconButton(
            // ignore: prefer_const_constructors
            icon: visibleGrid ? Icon(Icons.view_module) : Icon(Icons.list),
            onPressed: () {
              setState(() {
                visibleGrid = !visibleGrid;
           
                //------------------------------------------------------------------------------------
              });
            },
          )
        ],
      ),
    );
  }
}
