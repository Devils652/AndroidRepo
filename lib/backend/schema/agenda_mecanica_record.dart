import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AgendaMecanicaRecord extends FirestoreRecord {
  AgendaMecanicaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "TipoServicio" field.
  String? _tipoServicio;
  String get tipoServicio => _tipoServicio ?? '';
  bool hasTipoServicio() => _tipoServicio != null;

  // "MarcaModelo" field.
  String? _marcaModelo;
  String get marcaModelo => _marcaModelo ?? '';
  bool hasMarcaModelo() => _marcaModelo != null;

  // "Ano" field.
  String? _ano;
  String get ano => _ano ?? '';
  bool hasAno() => _ano != null;

  // "Placa" field.
  String? _placa;
  String get placa => _placa ?? '';
  bool hasPlaca() => _placa != null;

  // "Fecha" field.
  DateTime? _fecha;
  DateTime? get fecha => _fecha;
  bool hasFecha() => _fecha != null;

  // "Hora" field.
  String? _hora;
  String get hora => _hora ?? '';
  bool hasHora() => _hora != null;

  // "Adicional" field.
  String? _adicional;
  String get adicional => _adicional ?? '';
  bool hasAdicional() => _adicional != null;

  // "Direccion" field.
  String? _direccion;
  String get direccion => _direccion ?? '';
  bool hasDireccion() => _direccion != null;

  void _initializeFields() {
    _tipoServicio = snapshotData['TipoServicio'] as String?;
    _marcaModelo = snapshotData['MarcaModelo'] as String?;
    _ano = snapshotData['Ano'] as String?;
    _placa = snapshotData['Placa'] as String?;
    _fecha = snapshotData['Fecha'] as DateTime?;
    _hora = snapshotData['Hora'] as String?;
    _adicional = snapshotData['Adicional'] as String?;
    _direccion = snapshotData['Direccion'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('AgendaMecanica');

  static Stream<AgendaMecanicaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AgendaMecanicaRecord.fromSnapshot(s));

  static Future<AgendaMecanicaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AgendaMecanicaRecord.fromSnapshot(s));

  static AgendaMecanicaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AgendaMecanicaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AgendaMecanicaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AgendaMecanicaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AgendaMecanicaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AgendaMecanicaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAgendaMecanicaRecordData({
  String? tipoServicio,
  String? marcaModelo,
  String? ano,
  String? placa,
  DateTime? fecha,
  String? hora,
  String? adicional,
  String? direccion,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'TipoServicio': tipoServicio,
      'MarcaModelo': marcaModelo,
      'Ano': ano,
      'Placa': placa,
      'Fecha': fecha,
      'Hora': hora,
      'Adicional': adicional,
      'Direccion': direccion,
    }.withoutNulls,
  );

  return firestoreData;
}

class AgendaMecanicaRecordDocumentEquality
    implements Equality<AgendaMecanicaRecord> {
  const AgendaMecanicaRecordDocumentEquality();

  @override
  bool equals(AgendaMecanicaRecord? e1, AgendaMecanicaRecord? e2) {
    return e1?.tipoServicio == e2?.tipoServicio &&
        e1?.marcaModelo == e2?.marcaModelo &&
        e1?.ano == e2?.ano &&
        e1?.placa == e2?.placa &&
        e1?.fecha == e2?.fecha &&
        e1?.hora == e2?.hora &&
        e1?.adicional == e2?.adicional &&
        e1?.direccion == e2?.direccion;
  }

  @override
  int hash(AgendaMecanicaRecord? e) => const ListEquality().hash([
        e?.tipoServicio,
        e?.marcaModelo,
        e?.ano,
        e?.placa,
        e?.fecha,
        e?.hora,
        e?.adicional,
        e?.direccion
      ]);

  @override
  bool isValidKey(Object? o) => o is AgendaMecanicaRecord;
}
