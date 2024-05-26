import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RegistrosaidaRecord extends FirestoreRecord {
  RegistrosaidaRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "km_saida" field.
  int? _kmSaida;
  int get kmSaida => _kmSaida ?? 0;
  bool hasKmSaida() => _kmSaida != null;

  // "data_saida" field.
  DateTime? _dataSaida;
  DateTime? get dataSaida => _dataSaida;
  bool hasDataSaida() => _dataSaida != null;

  // "hora_saida" field.
  DateTime? _horaSaida;
  DateTime? get horaSaida => _horaSaida;
  bool hasHoraSaida() => _horaSaida != null;

  // "id_funcionario" field.
  String? _idFuncionario;
  String get idFuncionario => _idFuncionario ?? '';
  bool hasIdFuncionario() => _idFuncionario != null;

  // "id_veiculo" field.
  String? _idVeiculo;
  String get idVeiculo => _idVeiculo ?? '';
  bool hasIdVeiculo() => _idVeiculo != null;

  void _initializeFields() {
    _kmSaida = castToType<int>(snapshotData['km_saida']);
    _dataSaida = snapshotData['data_saida'] as DateTime?;
    _horaSaida = snapshotData['hora_saida'] as DateTime?;
    _idFuncionario = snapshotData['id_funcionario'] as String?;
    _idVeiculo = snapshotData['id_veiculo'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('registrosaida');

  static Stream<RegistrosaidaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RegistrosaidaRecord.fromSnapshot(s));

  static Future<RegistrosaidaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RegistrosaidaRecord.fromSnapshot(s));

  static RegistrosaidaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RegistrosaidaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RegistrosaidaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RegistrosaidaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RegistrosaidaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RegistrosaidaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRegistrosaidaRecordData({
  int? kmSaida,
  DateTime? dataSaida,
  DateTime? horaSaida,
  String? idFuncionario,
  String? idVeiculo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'km_saida': kmSaida,
      'data_saida': dataSaida,
      'hora_saida': horaSaida,
      'id_funcionario': idFuncionario,
      'id_veiculo': idVeiculo,
    }.withoutNulls,
  );

  return firestoreData;
}

class RegistrosaidaRecordDocumentEquality
    implements Equality<RegistrosaidaRecord> {
  const RegistrosaidaRecordDocumentEquality();

  @override
  bool equals(RegistrosaidaRecord? e1, RegistrosaidaRecord? e2) {
    return e1?.kmSaida == e2?.kmSaida &&
        e1?.dataSaida == e2?.dataSaida &&
        e1?.horaSaida == e2?.horaSaida &&
        e1?.idFuncionario == e2?.idFuncionario &&
        e1?.idVeiculo == e2?.idVeiculo;
  }

  @override
  int hash(RegistrosaidaRecord? e) => const ListEquality().hash(
      [e?.kmSaida, e?.dataSaida, e?.horaSaida, e?.idFuncionario, e?.idVeiculo]);

  @override
  bool isValidKey(Object? o) => o is RegistrosaidaRecord;
}
