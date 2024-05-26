import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class RelatorioProblemasRecord extends FirestoreRecord {
  RelatorioProblemasRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "id_veiculo" field.
  String? _idVeiculo;
  String get idVeiculo => _idVeiculo ?? '';
  bool hasIdVeiculo() => _idVeiculo != null;

  // "descricaoproblema" field.
  String? _descricaoproblema;
  String get descricaoproblema => _descricaoproblema ?? '';
  bool hasDescricaoproblema() => _descricaoproblema != null;

  void _initializeFields() {
    _idVeiculo = snapshotData['id_veiculo'] as String?;
    _descricaoproblema = snapshotData['descricaoproblema'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('relatorio_problemas');

  static Stream<RelatorioProblemasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RelatorioProblemasRecord.fromSnapshot(s));

  static Future<RelatorioProblemasRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => RelatorioProblemasRecord.fromSnapshot(s));

  static RelatorioProblemasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RelatorioProblemasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RelatorioProblemasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RelatorioProblemasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RelatorioProblemasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RelatorioProblemasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRelatorioProblemasRecordData({
  String? idVeiculo,
  String? descricaoproblema,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id_veiculo': idVeiculo,
      'descricaoproblema': descricaoproblema,
    }.withoutNulls,
  );

  return firestoreData;
}

class RelatorioProblemasRecordDocumentEquality
    implements Equality<RelatorioProblemasRecord> {
  const RelatorioProblemasRecordDocumentEquality();

  @override
  bool equals(RelatorioProblemasRecord? e1, RelatorioProblemasRecord? e2) {
    return e1?.idVeiculo == e2?.idVeiculo &&
        e1?.descricaoproblema == e2?.descricaoproblema;
  }

  @override
  int hash(RelatorioProblemasRecord? e) =>
      const ListEquality().hash([e?.idVeiculo, e?.descricaoproblema]);

  @override
  bool isValidKey(Object? o) => o is RelatorioProblemasRecord;
}
