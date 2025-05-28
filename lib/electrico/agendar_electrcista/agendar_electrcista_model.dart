import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'agendar_electrcista_widget.dart' show AgendarElectrcistaWidget;
import 'package:flutter/material.dart';

class AgendarElectrcistaModel
    extends FlutterFlowModel<AgendarElectrcistaWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Tipo widget.
  String? tipoValue;
  FormFieldController<String>? tipoValueController;
  // State field(s) for Descripcion widget.
  FocusNode? descripcionFocusNode;
  TextEditingController? descripcionTextController;
  String? Function(BuildContext, String?)? descripcionTextControllerValidator;
  // State field(s) for Nombre widget.
  FocusNode? nombreFocusNode;
  TextEditingController? nombreTextController;
  String? Function(BuildContext, String?)? nombreTextControllerValidator;
  // State field(s) for Telefono widget.
  FocusNode? telefonoFocusNode;
  TextEditingController? telefonoTextController;
  String? Function(BuildContext, String?)? telefonoTextControllerValidator;
  // State field(s) for Direccion widget.
  FocusNode? direccionFocusNode;
  TextEditingController? direccionTextController;
  String? Function(BuildContext, String?)? direccionTextControllerValidator;
  // State field(s) for Calendario widget.
  DateTimeRange? calendarioSelectedDay;
  // State field(s) for Horario widget.
  String? horarioValue;
  FormFieldController<String>? horarioValueController;
  // State field(s) for Adiccional widget.
  FocusNode? adiccionalFocusNode;
  TextEditingController? adiccionalTextController;
  String? Function(BuildContext, String?)? adiccionalTextControllerValidator;

  @override
  void initState(BuildContext context) {
    calendarioSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
  }

  @override
  void dispose() {
    descripcionFocusNode?.dispose();
    descripcionTextController?.dispose();

    nombreFocusNode?.dispose();
    nombreTextController?.dispose();

    telefonoFocusNode?.dispose();
    telefonoTextController?.dispose();

    direccionFocusNode?.dispose();
    direccionTextController?.dispose();

    adiccionalFocusNode?.dispose();
    adiccionalTextController?.dispose();
  }
}
