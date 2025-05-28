import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AgendaFontaRecord extends FirestoreRecord {
  AgendaFontaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Problema" field.
  String? _problema;
  String get problema => _problema ?? '';
  bool hasProblema() => _problema != null;

  // "Descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "Nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "Numero" field.
  String? _numero;
  String get numero => _numero ?? '';
  bool hasNumero() => _numero != null;

  // "Direccion" field.
  String? _direccion;
  String get direccion => _direccion ?? '';
  bool hasDireccion() => _direccion != null;

  // "Fecha" field.
  DateTime? _fecha;
  DateTime? get fecha => _fecha;
  bool hasFecha() => _fecha != null;

  // "Horario" field.
  String? _horario;
  String get horario => _horario ?? '';
  bool hasHorario() => _horario != null;

  // "Adicional" field.
  String? _adicional;
  String get adicional => _adicional ?? '';
  bool hasAdicional() => _adicional != null;

  void _initializeFields() {
    _problema = snapshotData['Problema'] as String?;
    _descripcion = snapshotData['Descripcion'] as String?;
    _nombre = snapshotData['Nombre'] as String?;
    _numero = snapshotData['Numero'] as String?;
    _direccion = snapshotData['Direccion'] as String?;
    _fecha = snapshotData['Fecha'] as DateTime?;
    _horario = snapshotData['Horario'] as String?;
    _adicional = snapshotData['Adicional'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('AgendaFonta');

  static Stream<AgendaFontaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AgendaFontaRecord.fromSnapshot(s));

  static Future<AgendaFontaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AgendaFontaRecord.fromSnapshot(s));

  static AgendaFontaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AgendaFontaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AgendaFontaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AgendaFontaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AgendaFontaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AgendaFontaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAgendaFontaRecordData({
  String? problema,
  String? descripcion,
  String? nombre,
  String? numero,
  String? direccion,
  DateTime? fecha,
  String? horario,
  String? adicional,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Problema': problema,
      'Descripcion': descripcion,
      'Nombre': nombre,
      'Numero': numero,
      'Direccion': direccion,
      'Fecha': fecha,
      'Horario': horario,
      'Adicional': adicional,
    }.withoutNulls,
  );

  return firestoreData;
}

class AgendaFontaRecordDocumentEquality implements Equality<AgendaFontaRecord> {
  const AgendaFontaRecordDocumentEquality();

  @override
  bool equals(AgendaFontaRecord? e1, AgendaFontaRecord? e2) {
    return e1?.problema == e2?.problema &&
        e1?.descripcion == e2?.descripcion &&
        e1?.nombre == e2?.nombre &&
        e1?.numero == e2?.numero &&
        e1?.direccion == e2?.direccion &&
        e1?.fecha == e2?.fecha &&
        e1?.horario == e2?.horario &&
        e1?.adicional == e2?.adicional;
  }

  @override
  int hash(AgendaFontaRecord? e) => const ListEquality().hash([
        e?.problema,
        e?.descripcion,
        e?.nombre,
        e?.numero,
        e?.direccion,
        e?.fecha,
        e?.horario,
        e?.adicional
      ]);

  @override
  bool isValidKey(Object? o) => o is AgendaFontaRecord;
}
