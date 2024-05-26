import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RegistroRetornoRecord extends FirestoreRecord {
  RegistroRetornoRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "km_retorno" field.
  int? _kmRetorno;
  int get kmRetorno => _kmRetorno ?? 0;
  bool hasKmRetorno() => _kmRetorno != null;

  // "hora_retorno" field.
  DateTime? _horaRetorno;
  DateTime? get horaRetorno => _horaRetorno;
  bool hasHoraRetorno() => _horaRetorno != null;

  // "id_funcionario" field.
  String? _idFuncionario;
  String get idFuncionario => _idFuncionario ?? '';
  bool hasIdFuncionario() => _idFuncionario != null;

  // "id_veiculo" field.
  String? _idVeiculo;
  String get idVeiculo => _idVeiculo ?? '';
  bool hasIdVeiculo() => _idVeiculo != null;

  void _initializeFields() {
    _kmRetorno = castToType<int>(snapshotData['km_retorno']);
    _horaRetorno = snapshotData['hora_retorno'] as DateTime?;
    _idFuncionario = snapshotData['id_funcionario'] as String?;
    _idVeiculo = snapshotData['id_veiculo'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('registroRetorno');

  static Stream<RegistroRetornoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RegistroRetornoRecord.fromSnapshot(s));

  static Future<RegistroRetornoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RegistroRetornoRecord.fromSnapshot(s));

  static RegistroRetornoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RegistroRetornoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RegistroRetornoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RegistroRetornoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RegistroRetornoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RegistroRetornoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRegistroRetornoRecordData({
  int? kmRetorno,
  DateTime? horaRetorno,
  String? idFuncionario,
  String? idVeiculo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'km_retorno': kmRetorno,
      'hora_retorno': horaRetorno,
      'id_funcionario': idFuncionario,
      'id_veiculo': idVeiculo,
    }.withoutNulls,
  );

  return firestoreData;
}

class RegistroRetornoRecordDocumentEquality
    implements Equality<RegistroRetornoRecord> {
  const RegistroRetornoRecordDocumentEquality();

  @override
  bool equals(RegistroRetornoRecord? e1, RegistroRetornoRecord? e2) {
    return e1?.kmRetorno == e2?.kmRetorno &&
        e1?.horaRetorno == e2?.horaRetorno &&
        e1?.idFuncionario == e2?.idFuncionario &&
        e1?.idVeiculo == e2?.idVeiculo;
  }

  @override
  int hash(RegistroRetornoRecord? e) => const ListEquality()
      .hash([e?.kmRetorno, e?.horaRetorno, e?.idFuncionario, e?.idVeiculo]);

  @override
  bool isValidKey(Object? o) => o is RegistroRetornoRecord;
}
