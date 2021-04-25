import 'package:firexcode/firexcode.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HomePage().xMaterialApp();
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return xListView.list([
      true.xRadio(groupValue: true),
      10.0.sizedHeight(),
      // ['one', 'two', 'three'].xDropdownLabel(
      //     name: 'dropdown'.text(),
      //     onChanged: (v) {
      //       setState(() {});
      //     },
      //     dropdownValue: 'two'),
    ]).xScaffold(appBar: 'example Dropdown'.text().xAppBar());
  }
}
