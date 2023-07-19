// ignore_for_file: unnecessary_getters_setters
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DatasetStruct extends FFFirebaseStruct {
  DatasetStruct({
    String? email,
    String? password,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _email = email,
        _password = password,
        super(firestoreUtilData);

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;
  bool hasEmail() => _email != null;

  // "password" field.
  String? _password;
  String get password => _password ?? '';
  set password(String? val) => _password = val;
  bool hasPassword() => _password != null;

  static DatasetStruct fromMap(Map<String, dynamic> data) => DatasetStruct(
        email: data['email'] as String?,
        password: data['password'] as String?,
      );

  static DatasetStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? DatasetStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'email': _email,
        'password': _password,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'password': serializeParam(
          _password,
          ParamType.String,
        ),
      }.withoutNulls;

  static DatasetStruct fromSerializableMap(Map<String, dynamic> data) =>
      DatasetStruct(
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        password: deserializeParam(
          data['password'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DatasetStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DatasetStruct &&
        email == other.email &&
        password == other.password;
  }

  @override
  int get hashCode => const ListEquality().hash([email, password]);
}

DatasetStruct createDatasetStruct({
  String? email,
  String? password,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    DatasetStruct(
      email: email,
      password: password,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

DatasetStruct? updateDatasetStruct(
  DatasetStruct? dataset, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    dataset
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addDatasetStructData(
  Map<String, dynamic> firestoreData,
  DatasetStruct? dataset,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (dataset == null) {
    return;
  }
  if (dataset.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && dataset.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final datasetData = getDatasetFirestoreData(dataset, forFieldValue);
  final nestedData = datasetData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = dataset.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getDatasetFirestoreData(
  DatasetStruct? dataset, [
  bool forFieldValue = false,
]) {
  if (dataset == null) {
    return {};
  }
  final firestoreData = mapToFirestore(dataset.toMap());

  // Add any Firestore field values
  dataset.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getDatasetListFirestoreData(
  List<DatasetStruct>? datasets,
) =>
    datasets?.map((e) => getDatasetFirestoreData(e, true)).toList() ?? [];
