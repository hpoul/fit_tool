// ignore_for_file: constant_identifier_names
import 'dart:typed_data';

import 'data_message.dart';
import 'definition_message.dart';
import 'field.dart';

class GenericMessage extends DataMessage {
  GenericMessage({
    super.definitionMessage,
    super.developerFields,
  }) : super(
            name: GenericMessage.NAME,
            globalId: definitionMessage?.globalId ?? 0,
            localId: definitionMessage?.localId ?? 0,
            endian: definitionMessage?.endian ?? Endian.little,
            fields: definitionMessage?.fieldDefinitions
                .map<Field>((fieldDefinition) =>
                    Field.fromFieldDefinition(fieldDefinition))
                .toList());

  static const NAME = 'generic';

  static GenericMessage fromBytes(
      DefinitionMessage definitionMessage, Uint8List bytes) {
    final message = GenericMessage(definitionMessage: definitionMessage);
    message.readFromBytes(bytes);
    return message;
  }
}
