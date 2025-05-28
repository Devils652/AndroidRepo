import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'agendar_fontaneria_widget.dart' show AgendarFontaneriaWidget;
import 'package:flutter/material.dart';

class AgendarFontaneriaModel extends FlutterFlowModel<AgendarFontaneriaWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TipoProblema widget.
  String? tipoProblemaValue;
  FormFieldController<String>? tipoProblemaValueController;
  // State field(s) for Descripcion widget.
  FocusNode? descripcionFocusNode;
  TextEditingController? descripcionTextController;
  String? Function(BuildContext, String?)? descripcionTextControllerValidator;
  // State field(s) for Nombre widget.
  FocusNode? nombreFocusNode;
  TextEditingController? nombreTextController;
  String? Function(BuildContext, String?)? nombreTextControllerValidator;
  // State field(s) for Contacto widget.
  FocusNode? contactoFocusNode;
  TextEditingController? contactoTextController;
  String? Function(BuildContext, String?)? contactoTextControllerValidator;
  // State field(s) for Direccion widget.
  FocusNode? direccionFocusNode;
  TextEditingController? direccionTextController;
  String? Function(BuildContext, String?)? direccionTextControllerValidator;
  // State field(s) for Calendario widget.
  DateTimeRange? calendarioSelectedDay;
  // State field(s) for Horario widget.
  String? horarioValue;
  FormFieldController<String>? horarioValueController;
  // State field(s) for Adicional widget.
  FocusNode? adicionalFocusNode;
  TextEditingController? adicionalTextController;
  String? Function(BuildContext, String?)? adicionalTextControllerValidator;

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

    contactoFocusNode?.dispose();
    contactoTextController?.dispose();

    direccionFocusNode?.dispose();
    direccionTextController?.dispose();

    adicionalFocusNode?.dispose();
    adicionalTextController?.dispose();
  }
}
