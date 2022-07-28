/// Autogenerated. Do not modify.
///
/// Profile: 21.60
import 'dart:typed_data';

import '../../base_type.dart';
import '../../data_message.dart';
import '../../definition_message.dart';
import '../../errors.dart';
import '../../field.dart';
import '../profile_type.dart';

class SegmentIdMessage extends DataMessage {
  SegmentIdMessage(
      {definitionMessage,
      developerFields,
      int localId = 0,
      Endian endian = Endian.little})
      : growable = definitionMessage == null,
        super(
            name: SegmentIdMessage.NAME,
            globalId: SegmentIdMessage.ID,
            localId: definitionMessage?.localId ?? localId,
            endian: definitionMessage?.endian ?? endian,
            definitionMessage: definitionMessage,
            developerFields: developerFields,
            fields: [
              SegmentIdNameField(
                  size: definitionMessage
                          ?.getFieldDefinition(SegmentIdNameField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              SegmentIdUuidField(
                  size: definitionMessage
                          ?.getFieldDefinition(SegmentIdUuidField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              SegmentIdSportField(
                  size: definitionMessage
                          ?.getFieldDefinition(SegmentIdSportField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              SegmentIdEnabledField(
                  size: definitionMessage
                          ?.getFieldDefinition(SegmentIdEnabledField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              SegmentIdUserProfilePrimaryKeyField(
                  size: definitionMessage
                          ?.getFieldDefinition(
                              SegmentIdUserProfilePrimaryKeyField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              SegmentIdDeviceIdField(
                  size: definitionMessage
                          ?.getFieldDefinition(SegmentIdDeviceIdField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              SegmentIdDefaultRaceLeaderField(
                  size: definitionMessage
                          ?.getFieldDefinition(
                              SegmentIdDefaultRaceLeaderField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              SegmentIdDeleteStatusField(
                  size: definitionMessage
                          ?.getFieldDefinition(SegmentIdDeleteStatusField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              SegmentIdSelectionTypeField(
                  size: definitionMessage
                          ?.getFieldDefinition(SegmentIdSelectionTypeField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null)
            ]);

  /// The Global ID of the message. In the FIT documentation this is referred to as the "Global Message Number".
  static const ID = 148;
  static const NAME = 'segment_id';

  final bool growable;

  /// Returns an instance of SegmentIdMessage from a bytes list.
  static SegmentIdMessage fromBytes(
      DefinitionMessage definitionMessage, Uint8List bytes) {
    final message = SegmentIdMessage(definitionMessage: definitionMessage);
    message.readFromBytes(bytes);
    return message;
  }

  /// Returns the value of the segmentIdName field. Returns null if the field is not defined in the message.
  String? get segmentIdName {
    final field = getField(SegmentIdNameField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the segmentIdName field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set segmentIdName(String? value) {
    final field = getField(SegmentIdNameField.ID);

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

  /// Returns the value of the uuid field. Returns null if the field is not defined in the message.
  String? get uuid {
    final field = getField(SegmentIdUuidField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the uuid field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set uuid(String? value) {
    final field = getField(SegmentIdUuidField.ID);

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

  /// Returns the value of the sport field. Returns null if the field is not defined in the message.
  Sport? get sport {
    final field = getField(SegmentIdSportField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      final value = field.getValue(subField: subField);
      if (value == null) {
        return null;
      }
      return SportExt.fromValue(value);
    } else {
      return null;
    }
  }

  /// Sets the sport field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set sport(Sport? value) {
    final field = getField(SegmentIdSportField.ID);

    if (field != null) {
      if (value == null) {
        field.clear();
      } else {
        var subField = field.getValidSubField(fields);
        field.setValue(0, value.value, subField);
      }
    } else {
      throw FieldNotDefinedError('${field!.name}');
    }
  }

  /// Returns the value of the enabled field. Returns null if the field is not defined in the message.
  bool? get enabled {
    final field = getField(SegmentIdEnabledField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the enabled field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set enabled(bool? value) {
    final field = getField(SegmentIdEnabledField.ID);

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

  /// Returns the value of the userProfilePrimaryKey field. Returns null if the field is not defined in the message.
  int? get userProfilePrimaryKey {
    final field = getField(SegmentIdUserProfilePrimaryKeyField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the userProfilePrimaryKey field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set userProfilePrimaryKey(int? value) {
    final field = getField(SegmentIdUserProfilePrimaryKeyField.ID);

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

  /// Returns the value of the deviceId field. Returns null if the field is not defined in the message.
  int? get deviceId {
    final field = getField(SegmentIdDeviceIdField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the deviceId field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set deviceId(int? value) {
    final field = getField(SegmentIdDeviceIdField.ID);

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

  /// Returns the value of the defaultRaceLeader field. Returns null if the field is not defined in the message.
  int? get defaultRaceLeader {
    final field = getField(SegmentIdDefaultRaceLeaderField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the defaultRaceLeader field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set defaultRaceLeader(int? value) {
    final field = getField(SegmentIdDefaultRaceLeaderField.ID);

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

  /// Returns the value of the deleteStatus field. Returns null if the field is not defined in the message.
  SegmentDeleteStatus? get deleteStatus {
    final field = getField(SegmentIdDeleteStatusField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      final value = field.getValue(subField: subField);
      if (value == null) {
        return null;
      }
      return SegmentDeleteStatusExt.fromValue(value);
    } else {
      return null;
    }
  }

  /// Sets the deleteStatus field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set deleteStatus(SegmentDeleteStatus? value) {
    final field = getField(SegmentIdDeleteStatusField.ID);

    if (field != null) {
      if (value == null) {
        field.clear();
      } else {
        var subField = field.getValidSubField(fields);
        field.setValue(0, value.value, subField);
      }
    } else {
      throw FieldNotDefinedError('${field!.name}');
    }
  }

  /// Returns the value of the selectionType field. Returns null if the field is not defined in the message.
  SegmentSelectionType? get selectionType {
    final field = getField(SegmentIdSelectionTypeField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      final value = field.getValue(subField: subField);
      if (value == null) {
        return null;
      }
      return SegmentSelectionTypeExt.fromValue(value);
    } else {
      return null;
    }
  }

  /// Sets the selectionType field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set selectionType(SegmentSelectionType? value) {
    final field = getField(SegmentIdSelectionTypeField.ID);

    if (field != null) {
      if (value == null) {
        field.clear();
      } else {
        var subField = field.getValidSubField(fields);
        field.setValue(0, value.value, subField);
      }
    } else {
      throw FieldNotDefinedError('${field!.name}');
    }
  }
}

class SegmentIdNameField extends Field {
  SegmentIdNameField({int size = 0, bool growable = true})
      : super(
            name: 'name',
            id: ID,
            type: BaseType.STRING,
            offset: 0,
            scale: 1,
            size: size,
            growable: growable,
            subFields: []);

  static const ID = 0;
}

class SegmentIdUuidField extends Field {
  SegmentIdUuidField({int size = 0, bool growable = true})
      : super(
            name: 'uuid',
            id: ID,
            type: BaseType.STRING,
            offset: 0,
            scale: 1,
            size: size,
            growable: growable,
            subFields: []);

  static const ID = 1;
}

class SegmentIdSportField extends Field {
  SegmentIdSportField({int size = 0, bool growable = true})
      : super(
            name: 'sport',
            id: ID,
            type: BaseType.ENUM,
            offset: 0,
            scale: 1,
            size: size,
            growable: growable,
            subFields: []);

  static const ID = 2;
}

class SegmentIdEnabledField extends Field {
  SegmentIdEnabledField({int size = 0, bool growable = true})
      : super(
            name: 'enabled',
            id: ID,
            type: BaseType.UINT8,
            offset: 0,
            scale: 1,
            size: size,
            growable: growable,
            subFields: []);

  static const ID = 3;
}

class SegmentIdUserProfilePrimaryKeyField extends Field {
  SegmentIdUserProfilePrimaryKeyField({int size = 0, bool growable = true})
      : super(
            name: 'user_profile_primary_key',
            id: ID,
            type: BaseType.UINT32,
            offset: 0,
            scale: 1,
            size: size,
            growable: growable,
            subFields: []);

  static const ID = 4;
}

class SegmentIdDeviceIdField extends Field {
  SegmentIdDeviceIdField({int size = 0, bool growable = true})
      : super(
            name: 'device_id',
            id: ID,
            type: BaseType.UINT32,
            offset: 0,
            scale: 1,
            size: size,
            growable: growable,
            subFields: []);

  static const ID = 5;
}

class SegmentIdDefaultRaceLeaderField extends Field {
  SegmentIdDefaultRaceLeaderField({int size = 0, bool growable = true})
      : super(
            name: 'default_race_leader',
            id: ID,
            type: BaseType.UINT8,
            offset: 0,
            scale: 1,
            size: size,
            growable: growable,
            subFields: []);

  static const ID = 6;
}

class SegmentIdDeleteStatusField extends Field {
  SegmentIdDeleteStatusField({int size = 0, bool growable = true})
      : super(
            name: 'delete_status',
            id: ID,
            type: BaseType.ENUM,
            offset: 0,
            scale: 1,
            size: size,
            growable: growable,
            subFields: []);

  static const ID = 7;
}

class SegmentIdSelectionTypeField extends Field {
  SegmentIdSelectionTypeField({int size = 0, bool growable = true})
      : super(
            name: 'selection_type',
            id: ID,
            type: BaseType.ENUM,
            offset: 0,
            scale: 1,
            size: size,
            growable: growable,
            subFields: []);

  static const ID = 8;
}
