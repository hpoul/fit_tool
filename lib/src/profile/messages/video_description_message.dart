/// Autogenerated. Do not modify.
///
/// Profile: 21.60
import 'dart:typed_data';

import '../../base_type.dart';
import '../../data_message.dart';
import '../../definition_message.dart';
import '../../errors.dart';
import '../../field.dart';
import 'common_fields.dart';

class VideoDescriptionMessage extends DataMessage {
  VideoDescriptionMessage(
      {definitionMessage,
      developerFields,
      int localId = 0,
      Endian endian = Endian.little})
      : growable = definitionMessage == null,
        super(
            name: VideoDescriptionMessage.NAME,
            globalId: VideoDescriptionMessage.ID,
            localId: definitionMessage?.localId ?? localId,
            endian: definitionMessage?.endian ?? endian,
            definitionMessage: definitionMessage,
            developerFields: developerFields,
            fields: [
              MessageIndexField(
                  size: definitionMessage
                          ?.getFieldDefinition(MessageIndexField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              VideoDescriptionMessageCountField(
                  size: definitionMessage
                          ?.getFieldDefinition(
                              VideoDescriptionMessageCountField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              VideoDescriptionTextField(
                  size: definitionMessage
                          ?.getFieldDefinition(VideoDescriptionTextField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null)
            ]);

  /// The Global ID of the message. In the FIT documentation this is referred to as the "Global Message Number".
  static const ID = 186;
  static const NAME = 'video_description';

  final bool growable;

  /// Returns an instance of VideoDescriptionMessage from a bytes list.
  static VideoDescriptionMessage fromBytes(
      DefinitionMessage definitionMessage, Uint8List bytes) {
    final message =
        VideoDescriptionMessage(definitionMessage: definitionMessage);
    message.readFromBytes(bytes);
    return message;
  }

  /// Returns the value of the messageIndex field. Returns null if the field is not defined in the message.
  int? get messageIndex {
    final field = getField(MessageIndexField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the messageIndex field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set messageIndex(int? value) {
    final field = getField(MessageIndexField.ID);

    if (field != null) {
      if (value == null) {
        field.clear();
      } else {
        var subField = field.getValidSubField(fields);
        field.setValue(0, value, subField);
      }
    } else {
      throw FieldNotDefinedError('${field!.name}');
    }
  }

  /// Returns the value of the messageCount field. Returns null if the field is not defined in the message.
  int? get messageCount {
    final field = getField(VideoDescriptionMessageCountField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the messageCount field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set messageCount(int? value) {
    final field = getField(VideoDescriptionMessageCountField.ID);

    if (field != null) {
      if (value == null) {
        field.clear();
      } else {
        var subField = field.getValidSubField(fields);
        field.setValue(0, value, subField);
      }
    } else {
      throw FieldNotDefinedError('${field!.name}');
    }
  }

  /// Returns the value of the text field. Returns null if the field is not defined in the message.
  String? get text {
    final field = getField(VideoDescriptionTextField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the text field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set text(String? value) {
    final field = getField(VideoDescriptionTextField.ID);

    if (field != null) {
      if (value == null) {
        field.clear();
      } else {
        var subField = field.getValidSubField(fields);
        field.setValue(0, value, subField);
      }
    } else {
      throw FieldNotDefinedError('${field!.name}');
    }
  }
}

class VideoDescriptionMessageCountField extends Field {
  VideoDescriptionMessageCountField({int size = 0, bool growable = true})
      : super(
            name: 'message_count',
            id: ID,
            type: BaseType.UINT16,
            offset: 0,
            scale: 1,
            size: size,
            growable: growable,
            subFields: []);

  static const ID = 0;
}

class VideoDescriptionTextField extends Field {
  VideoDescriptionTextField({int size = 0, bool growable = true})
      : super(
            name: 'text',
            id: ID,
            type: BaseType.STRING,
            offset: 0,
            scale: 1,
            size: size,
            growable: growable,
            subFields: []);

  static const ID = 1;
}
