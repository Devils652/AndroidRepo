import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AgendaElectricoRecord extends FirestoreRecord {
  AgendaElectricoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "TipoServicio" field.
  String? _tipoServicio;
  String get tipoServicio => _tipoServicio ?? '';
  bool hasTipoServicio() => _tipoServicio != null;

  // "Descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "Nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "Contacto" field.
  String? _contacto;
  String get contacto => _contacto ?? '';
  bool hasContacto() => _contacto != null;

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
    _tipoServicio = snapshotData['TipoServicio'] as String?;
    _descripcion = snapshotData['Descripcion'] as String?;
    _nombre = snapshotData['Nombre'] as String?;
    _contacto = snapshotData['Contacto'] as String?;
    _direccion = snapshotData['Direccion'] as String?;
    _fecha = snapshotData['Fecha'] as DateTime?;
    _horario = snapshotData['Horario'] as String?;
    _adicional = snapshotData['Adicional'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('AgendaElectrico');

  static Stream<AgendaElectricoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AgendaElectricoRecord.fromSnapshot(s));

  static Future<AgendaElectricoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AgendaElectricoRecord.fromSnapshot(s));

  static AgendaElectricoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AgendaElectricoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AgendaElectricoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AgendaElectricoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AgendaElectricoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AgendaElectricoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAgendaElectricoRecordData({
  String? tipoServicio,
  String? descripcion,
  String? nombre,
  String? contacto,
  String? direccion,
  DateTime? fecha,
  String? horario,
  String? adicional,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'TipoServicio': tipoServicio,
      'Descripcion': descripcion,
      'Nombre': nombre,
      'Contacto': contacto,
      'Direccion': direccion,
      'Fecha': fecha,
      'Horario': horario,
      'Adicional': adicional,
    }.withoutNulls,
  );

  return firestoreData;
}

class AgendaElectricoRecordDocumentEquality
    implements Equality<AgendaElectricoRecord> {
  const AgendaElectricoRecordDocumentEquality();

  @override
  bool equals(AgendaElectricoRecord? e1, AgendaElectricoRecord? e2) {
    return e1?.tipoServicio == e2?.tipoServicio &&
        e1?.descripcion == e2?.descripcion &&
        e1?.nombre == e2?.nombre &&
        e1?.contacto == e2?.contacto &&
        e1?.direccion == e2?.direccion &&
        e1?.fecha == e2?.fecha &&
        e1?.horario == e2?.horario &&
        e1?.adicional == e2?.adicional;
  }

  @override
  int hash(AgendaElectricoRecord? e) => const ListEquality().hash([
        e?.tipoServicio,
        e?.descripcion,
        e?.nombre,
        e?.contacto,
        e?.direccion,
        e?.fecha,
        e?.horario,
        e?.adicional
      ]);

  @override
  bool isValidKey(Object? o) => o is AgendaElectricoRecord;
}
