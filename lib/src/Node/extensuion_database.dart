extension NodeGenerate on String {
  String toLongText(
      {bool isRequired = false, bool isUnique = false, bool isIndex = false}) {
    return '$this: { type: String, ${isRequired ? 'required: true' : ''}${isUnique ? ',unique: true' : ''}${isIndex ? ',index: true' : ''} \n }';
  }

  String toInteger(
      {bool isRequired = false, bool isUnique = false, bool isIndex = false}) {
    return '$this: { type: Number, ${isRequired ? 'required: true' : ''}${isUnique ? ',unique: true' : ''}${isIndex ? ',index: true' : ''} \n }';
  }

  String toBoolean(
      {bool isRequired = false, bool isUnique = false, bool isIndex = false}) {
    return '$this: { type: Boolean, ${isRequired ? 'required: true' : ''}${isUnique ? ',unique: true' : ''}${isIndex ? ',index: true' : ''} \n }';
  }

  String toDouble(
      {bool isRequired = false, bool isUnique = false, bool isIndex = false}) {
    return '$this: { type: Double, ${isRequired ? 'required: true' : ''}${isUnique ? ',unique: true' : ''}${isIndex ? ',index: true' : ''} \n }';
  }

  String toArrays(
      {bool isRequired = false, bool isUnique = false, bool isIndex = false}) {
    return '$this: { type: Arrays, ${isRequired ? 'required: true' : ''}${isUnique ? ',unique: true' : ''}${isIndex ? ',index: true' : ''} \n }';
  }

  String toTimestamp(
      {bool isRequired = false, bool isUnique = false, bool isIndex = false}) {
    return '$this: { type: Timestamp, ${isRequired ? 'required: true' : ''}${isUnique ? ',unique: true' : ''}${isIndex ? ',index: true' : ''} \n }';
  }

  String toObject(
      {bool isRequired = false, bool isUnique = false, bool isIndex = false}) {
    return '$this: { type: Object, ${isRequired ? 'required: true' : ''}${isUnique ? ',unique: true' : ''}${isIndex ? ',index: true' : ''} \n }';
  }

  String toNull(
      {bool isRequired = false, bool isUnique = false, bool isIndex = false}) {
    return '$this: { type: Null, ${isRequired ? 'required: true' : ''}${isUnique ? ',unique: true' : ''}${isIndex ? ',index: true' : ''} \n }';
  }

  String toSymbol(
      {bool isRequired = false, bool isUnique = false, bool isIndex = false}) {
    return '$this: { type: Symbol, ${isRequired ? 'required: true' : ''}${isUnique ? ',unique: true' : ''}${isIndex ? ',index: true' : ''} \n }';
  }

  String toDate(
      {bool isRequired = false, bool isUnique = false, bool isIndex = false}) {
    return '$this: { type: Date, ${isRequired ? 'required: true' : ''}${isUnique ? ',unique: true' : ''}${isIndex ? ',index: true' : ''} \n }';
  }

  String toObjectID(
      {bool isRequired = false, bool isUnique = false, bool isIndex = false}) {
    return '$this: { type: Object ID, ${isRequired ? 'required: true' : ''}${isUnique ? ',unique: true' : ''}${isIndex ? ',index: true' : ''} \n }';
  }

  String toBinaryData(
      {bool isRequired = false, bool isUnique = false, bool isIndex = false}) {
    return '$this: { type: Binary data, ${isRequired ? 'required: true' : ''}${isUnique ? ',unique: true' : ''}${isIndex ? ',index: true' : ''} \n }';
  }

  String toCode(
      {bool isRequired = false, bool isUnique = false, bool isIndex = false}) {
    return '$this: { type: Code, ${isRequired ? 'required: true' : ''}${isUnique ? ',unique: true' : ''}${isIndex ? ',index: true' : ''} \n }';
  }
}
