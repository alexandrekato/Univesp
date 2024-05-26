import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VeiculoRecord extends FirestoreRecord {
  VeiculoRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "tombamento" field.
  int? _tombamento;
  int get tombamento => _tombamento ?? 0;
  bool hasTombamento() => _tombamento != null;

  // "tipo" field.
  List<String>? _tipo;
  List<String> get tipo => _tipo ?? const [];
  bool hasTipo() => _tipo != null;

  void _initializeFields() {
    _tombamento = castToType<int>(snapshotData['tombamento']);
    _tipo = getDataList(snapshotData['tipo']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('veiculo');

  static Stream<VeiculoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => VeiculoRecord.fromSnapshot(s));

  static Future<VeiculoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => VeiculoRecord.fromSnapshot(s));

  static VeiculoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      VeiculoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static VeiculoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      VeiculoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'VeiculoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is VeiculoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createVeiculoRecordData({
  int? tombamento,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'tombamento': tombamento,
    }.withoutNulls,
  );

  return firestoreData;
}

class VeiculoRecordDocumentEquality implements Equality<VeiculoRecord> {
  const VeiculoRecordDocumentEquality();

  @override
  bool equals(VeiculoRecord? e1, VeiculoRecord? e2) {
    const listEquality = ListEquality();
    return e1?.tombamento == e2?.tombamento &&
        listEquality.equals(e1?.tipo, e2?.tipo);
  }

  @override
  int hash(VeiculoRecord? e) =>
      const ListEquality().hash([e?.tombamento, e?.tipo]);

  @override
  bool isValidKey(Object? o) => o is VeiculoRecord;
}
