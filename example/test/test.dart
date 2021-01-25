import 'package:firexcode/node_js.dart';

void main() {
  NodeModel('stories_template_filter', 'C:\\Users\\Zeeshan\\Documents\\sync')
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
  'title'.toLongText(isRequired: true),
];
