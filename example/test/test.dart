import 'package:firexcode/node_js.dart';

void main() {
  NodeModel('stories_template_filter', 'C:\\Users\\Zeeshan\\Documents\\Apowersoft')
      .create(lis)
      .toRoutes(
          routeName: 'stories/template/filter',
          method: 'post',
          //   update: true,
          create: true,
          read: true,
          delete: true);
}

List<String> lis = [
  'title'.toObject(
    list: [
      'a'.toLongText(
        defaults: '5',
        isIndex: true
      )
    ]
  ),
];
