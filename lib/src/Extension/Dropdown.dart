import 'package:firexcode/firexcode.dart';
import 'package:flutter/material.dart';

class XDropdownLab extends StatefulWidget {
  final Widget name;
  final String labelName;
  final double width;
  final double fontSize;
  final Color color;
  final double lableSize;
  final Color textColor;
  final List list;
  final void Function(String) onChanged;
  final String dropdownValue;
  final TextStyle style;
  const XDropdownLab({
    Key key,
    this.name,
    this.color,
    this.textColor,
    this.fontSize,
    this.lableSize,
    this.list,
    this.onChanged,
    this.dropdownValue,
    this.style,
    this.width,
    this.labelName,
  }) : super(key: key);

  @override
  _XDropdownLabState createState() => _XDropdownLabState();
}

class _XDropdownLabState extends State<XDropdownLab> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 10.0, top: 10.0, bottom: 5.0),
          child: Text(
            'Select ' + widget.labelName,
            style: TextStyle(
              fontSize: widget.lableSize ?? 15.0,
            ),
          ),
        ),
        Container(
            width: widget.width,
            padding: EdgeInsets.only(left: 10),
            margin: EdgeInsets.all(10.0),
            color: widget.color ?? Colors.grey[100],
            child: DropdownButton<dynamic>(
              hint: widget.name,
              value: widget.dropdownValue,
              icon: Container(),
              iconSize: 24,
              elevation: 16,
              style: widget.style,
              underline: Container(
                height: 2,
                // color: Colors.deepPurpleAccent,
              ),
              onChanged: widget.onChanged,
              items: widget.list.map<DropdownMenuItem>((value) {
                return DropdownMenuItem(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            )),
      ],
    );
  }
}

extension Dropdowns on List<String> {
  Widget xDropdownLabel({
    @required final Widget name,
    final double fontSize,
    final Color color,
    final double lableSize,
    final Color textColor,
    final Key key,
    final TextStyle style,
    final String lableName,
    @required final void Function(String) onChanged,
    @required final String dropdownValue,
  }) {
    return XDropdownLab(
      labelName: lableName,
      color: color,
      fontSize: fontSize,
      key: key,
      lableSize: lableSize,
      name: name,
      textColor: textColor,
      onChanged: onChanged,
      list: this,
      dropdownValue: dropdownValue,
      style: style,
    );
  }
}
