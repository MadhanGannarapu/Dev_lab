import 'package:dev_lab/config/themes.dart';
import 'package:flutter/material.dart';

class ThemeLabPage extends StatefulWidget {
  @override
  _ThemeLabPageState createState() => _ThemeLabPageState();
}

class _ThemeLabPageState extends State<ThemeLabPage> {
  double sliderRange = 0;
  bool isSwitched = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                'Title',
                style: Theme.of(context).textTheme.headline6,
              ),
              ButtonBar(
                alignment: MainAxisAlignment.center,
                children: [
                  RaisedButton(
                    onPressed: () {},
                    child: Text('Cancel Raised button'),
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(DevLabAppStyle.buttonRadius),
                    ),
                  ),
                  RaisedButton(
                    onPressed: () {},
                    child: Text('success Raised button'),
                    color: DevLabAppStyle.devLab_greenColor,
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(DevLabAppStyle.buttonRadius),
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.check_circle_outline,
                      color: Colors.red,
                    ),
                    onPressed: () {},
                    color: DevLabAppStyle.devLab_yelloColor,
                  ),
                ],
              ),
              Slider(
                value: sliderRange,
                max: 10,
                min: 0,
                label: '$sliderRange',
                onChanged: (double val) {
                  setState(() {
                    sliderRange = val;
                  });
                },
              ),
              ButtonBar(
                alignment: MainAxisAlignment.center,
                children: [
                  Switch(
                    value: isSwitched,
                    onChanged: (value) {
                      setState(() {
                        isSwitched = value;
                      });
                    },
                    activeTrackColor: Colors.red[100],
                    activeColor: DevLabAppStyle.devLab_primaryColor,
                  ),
                  Radio(
                    value: 1,
                    groupValue: 1,
                    onChanged: (_) {},
                    activeColor: DevLabAppStyle.devLab_primaryColor,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
