import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'agendar_mecanico_widget.dart' show AgendarMecanicoWidget;
import 'package:flutter/material.dart';

class AgendarMecanicoModel extends FlutterFlowModel<AgendarMecanicoWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Servicio widget.
  String? servicioValue;
  FormFieldController<String>? servicioValueController;
  // State field(s) for MarcaModelo widget.
  FocusNode? marcaModeloFocusNode;
  TextEditingController? marcaModeloTextController;
  String? Function(BuildContext, String?)? marcaModeloTextControllerValidator;
  // State field(s) for Ano widget.
  FocusNode? anoFocusNode;
  TextEditingController? anoTextController;
  String? Function(BuildContext, String?)? anoTextControllerValidator;
  // State field(s) for Placa widget.
  FocusNode? placaFocusNode;
  TextEditingController? placaTextController;
  String? Function(BuildContext, String?)? placaTextControllerValidator;
  // State field(s) for Calendario widget.
  DateTimeRange? calendarioSelectedDay;
  // State field(s) for Horario widget.
  String? horarioValue;
  FormFieldController<String>? horarioValueController;
  // State field(s) for Adiccional widget.
  FocusNode? adiccionalFocusNode;
  TextEditingController? adiccionalTextController;
  String? Function(BuildContext, String?)? adiccionalTextControllerValidator;
  // State field(s) for Direccion widget.
  FocusNode? direccionFocusNode;
  TextEditingController? direccionTextController;
  String? Function(BuildContext, String?)? direccionTextControllerValidator;

  @override
  void initState(BuildContext context) {
    calendarioSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
  }

  @override
  void dispose() {
    marcaModeloFocusNode?.dispose();
    marcaModeloTextController?.dispose();

    anoFocusNode?.dispose();
    anoTextController?.dispose();

    placaFocusNode?.dispose();
    placaTextController?.dispose();

    adiccionalFocusNode?.dispose();
    adiccionalTextController?.dispose();

    direccionFocusNode?.dispose();
    direccionTextController?.dispose();
  }
}
