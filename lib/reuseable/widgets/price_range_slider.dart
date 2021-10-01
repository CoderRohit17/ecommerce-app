// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class PriceRangeWidget extends StatefulWidget {
  const PriceRangeWidget({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _RangeWidget();
}

class _RangeWidget extends State<PriceRangeWidget> {
  RangeValues _currentRangeValues = const RangeValues(0, 100);

  @override
  Widget build(BuildContext context) {
    return Column(
      
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 15, top: 10, right: 15),
          child: Row(
            children: [
              Text(
                _currentRangeValues.start.round().toString(),
              ),
              Expanded(child: Container()),
              Text(
                _currentRangeValues.end.round().toString(),
              ),
            ],
          ),
        ),
        RangeSlider(
          values: _currentRangeValues,
          min: 0,
          max: 100000,
          divisions: 1000,
          labels: RangeLabels(
            _currentRangeValues.start.round().toString(),
            _currentRangeValues.end.round().toString(),
          ),
          onChanged: (RangeValues values) {
            setState(() {
              _currentRangeValues = values;
            });
          },
        )
      ],
    );
  }
}
