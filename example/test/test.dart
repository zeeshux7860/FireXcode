import 'package:firexcode/node_js.dart';

void main() {
  var data = NodeModel('store_details', 'C:\\Users\\Zeeshan\\Desktop\\api')
      .create(lis)
      .toRoutes(
          routeName: 'add/store',
          method: 'post',
          create: true,
          read: true,
          update: true,
          delete: true);
}

List<String> lis = [
  'store_user_id'.toInteger(isRequired: true),
  'store_user_name'.toLongText(isRequired: true),
  'wp_number'.toLongText(isRequired: true),
  'store_name'.toLongText(isRequired: true),
  'store_location'.toLongText(isRequired: true),
  'store_category'.toLongText(isRequired: true),
  'city'.toLongText(isRequired: true),
  'pincode'.toLongText(isRequired: true),
  'is_verified'.toBoolean(isRequired: true),
  'is_open'.toBoolean(isRequired: true),
  'is_online_delivery'.toBoolean(isRequired: true),
  'is_whatsapp_support'.toBoolean(isRequired: true),
  'has_products'.toInteger(isRequired: true),
  'delivery_charge'.toInteger(isRequired: true),
  'free_delivery_above'.toInteger(isRequired: true),
  'minium_order_amount'.toInteger(isRequired: true),
  'cod_enable'.toBoolean(isRequired: true),
  'online_payment_enable'.toBoolean(isRequired: true),
  'status'.toInteger(isRequired: true),
];
