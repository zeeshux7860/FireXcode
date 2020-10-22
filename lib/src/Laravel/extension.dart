import 'package:firexcode/laravel.dart';

// -------------------------------------------------------------------------
extension LaravelValidation on LaraveRequiredValidation {
  ToValidator toValidator({String request}) {
    var text = '''Validator::make($request, ${code})''';

    return ToValidator(text);
  }
}

class ToValidatorParam<T> {
  final T text;

  ToValidatorParam(this.text);
}

class ToValidator extends ToValidatorParam<String> {
  ToValidator(String text) : super(text);
  String get code => text;
}

// -------------------------------------------------------------------------
extension LaravelToValidateName on ToValidator {
  ToValidate toValidate({String customMessage}) {
    return ToValidate(code, customMessage);
  }
}

class ToValidateParam<T> {
  final T text;
  final T customMessage;
  ToValidateParam(this.text, this.customMessage);
}

class ToValidate extends ToValidateParam<String> {
  ToValidate(String text, String customMessage) : super(text, customMessage);

  String get code => """\$validator = ${text};
    
     if (\$validator->fails()) {
            return response()->json(['response_code' => 401, 'error' => \$validator->errors(), $customMessage], 401);
        } """;
}
