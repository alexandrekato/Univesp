import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FuncionarioRecord extends FirestoreRecord {
  FuncionarioRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "registro_funcional" field.
  int? _registroFuncional;
  int get registroFuncional => _registroFuncional ?? 0;
  bool hasRegistroFuncional() => _registroFuncional != null;

  // "departamento" field.
  String? _departamento;
  String get departamento => _departamento ?? '';
  bool hasDepartamento() => _departamento != null;

  // "setor" field.
  String? _setor;
  String get setor => _setor ?? '';
  bool hasSetor() => _setor != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  void _initializeFields() {
    _nome = snapshotData['nome'] as String?;
    _registroFuncional = castToType<int>(snapshotData['registro_funcional']);
    _departamento = snapshotData['departamento'] as String?;
    _setor = snapshotData['setor'] as String?;
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _uid = snapshotData['uid'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('funcionario');

  static Stream<FuncionarioRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FuncionarioRecord.fromSnapshot(s));

  static Future<FuncionarioRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FuncionarioRecord.fromSnapshot(s));

  static FuncionarioRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FuncionarioRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FuncionarioRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FuncionarioRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FuncionarioRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FuncionarioRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFuncionarioRecordData({
  String? nome,
  int? registroFuncional,
  String? departamento,
  String? setor,
  String? email,
  String? displayName,
  DateTime? createdTime,
  String? phoneNumber,
  String? uid,
  String? photoUrl,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nome': nome,
      'registro_funcional': registroFuncional,
      'departamento': departamento,
      'setor': setor,
      'email': email,
      'display_name': displayName,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'uid': uid,
      'photo_url': photoUrl,
    }.withoutNulls,
  );

  return firestoreData;
}

class FuncionarioRecordDocumentEquality implements Equality<FuncionarioRecord> {
  const FuncionarioRecordDocumentEquality();

  @override
  bool equals(FuncionarioRecord? e1, FuncionarioRecord? e2) {
    return e1?.nome == e2?.nome &&
        e1?.registroFuncional == e2?.registroFuncional &&
        e1?.departamento == e2?.departamento &&
        e1?.setor == e2?.setor &&
        e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.uid == e2?.uid &&
        e1?.photoUrl == e2?.photoUrl;
  }

  @override
  int hash(FuncionarioRecord? e) => const ListEquality().hash([
        e?.nome,
        e?.registroFuncional,
        e?.departamento,
        e?.setor,
        e?.email,
        e?.displayName,
        e?.createdTime,
        e?.phoneNumber,
        e?.uid,
        e?.photoUrl
      ]);

  @override
  bool isValidKey(Object? o) => o is FuncionarioRecord;
}
