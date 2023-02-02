/*
* Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
*
* Licensed under the Apache License, Version 2.0 (the "License").
* You may not use this file except in compliance with the License.
* A copy of the License is located at
*
*  http://aws.amazon.com/apache2.0
*
* or in the "license" file accompanying this file. This file is distributed
* on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
* express or implied. See the License for the specific language governing
* permissions and limitations under the License.
*/

// NOTE: This file is generated and may not follow lint rules defined in your app
// Generated files can be excluded from analysis in analysis_options.yaml
// For more info, see: https://dart.dev/guides/language/analysis-options#excluding-code-from-analysis

// ignore_for_file: public_member_api_docs, annotate_overrides, dead_code, dead_codepublic_member_api_docs, depend_on_referenced_packages, file_names, library_private_types_in_public_api, no_leading_underscores_for_library_prefixes, no_leading_underscores_for_local_identifiers, non_constant_identifier_names, null_check_on_nullable_type_parameter, prefer_adjacent_string_concatenation, prefer_const_constructors, prefer_if_null_operators, prefer_interpolation_to_compose_strings, slash_for_doc_comments, sort_child_properties_last, unnecessary_const, unnecessary_constructor_name, unnecessary_late, unnecessary_new, unnecessary_null_aware_assignments, unnecessary_nullable_for_final_variable_declarations, unnecessary_string_interpolations, use_build_context_synchronously

import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:flutter/foundation.dart';


/** This is an auto generated class representing the Attendee type in your schema. */
@immutable
class Attendee extends Model {
  static const classType = const _AttendeeModelType();
  final String? _attendeeId;
  final String? _name;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => modelIdentifier.serializeAsString();
  
  AttendeeModelIdentifier get modelIdentifier {
    try {
      return AttendeeModelIdentifier(
        attendeeId: _attendeeId!
      );
    } catch(e) {
      throw new DataStoreException(
          DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get attendeeId {
    try {
      return _attendeeId!;
    } catch(e) {
      throw new DataStoreException(
          DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get name {
    try {
      return _name!;
    } catch(e) {
      throw new DataStoreException(
          DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  const Attendee._internal({required attendeeId, required name}): _attendeeId = attendeeId, _name = name;
  
  factory Attendee({required String attendeeId, required String name}) {
    return Attendee._internal(
      attendeeId: attendeeId,
      name: name);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Attendee &&
      _attendeeId == other._attendeeId &&
      _name == other._name;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Attendee {");
    buffer.write("attendeeId=" + "$_attendeeId" + ", ");
    buffer.write("name=" + "$_name");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Attendee copyWith({String? name}) {
    return Attendee(
      attendeeId: attendeeId,
      name: name ?? this.name);
  }
  
  Attendee.fromJson(Map<String, dynamic> json)  
    : _attendeeId = json['attendeeId'],
      _name = json['name'];
  
  Map<String, dynamic> toJson() => {
    'attendeeId': _attendeeId, 'name': _name
  };
  
  Map<String, Object?> toMap() => {
    'attendeeId': _attendeeId, 'name': _name
  };

  static final QueryModelIdentifier<AttendeeModelIdentifier> MODEL_IDENTIFIER = QueryModelIdentifier<AttendeeModelIdentifier>();
  static final QueryField ATTENDEEID = QueryField(fieldName: "attendeeId");
  static final QueryField NAME = QueryField(fieldName: "name");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Attendee";
    modelSchemaDefinition.pluralName = "Attendees";
    
    modelSchemaDefinition.authRules = [
      AuthRule(
        authStrategy: AuthStrategy.PUBLIC,
        operations: [
          ModelOperation.CREATE,
          ModelOperation.UPDATE,
          ModelOperation.DELETE,
          ModelOperation.READ
        ])
    ];
    
    modelSchemaDefinition.indexes = [
      ModelIndex(fields: const ["attendeeId"], name: null)
    ];
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Attendee.ATTENDEEID,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Attendee.NAME,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
  });
}

class _AttendeeModelType extends ModelType<Attendee> {
  const _AttendeeModelType();
  
  @override
  Attendee fromJson(Map<String, dynamic> jsonData) {
    return Attendee.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'Attendee';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [Attendee] in your schema.
 */
@immutable
class AttendeeModelIdentifier implements ModelIdentifier<Attendee> {
  final String attendeeId;

  /** Create an instance of AttendeeModelIdentifier using [attendeeId] the primary key. */
  const AttendeeModelIdentifier({
    required this.attendeeId});
  
  @override
  Map<String, dynamic> serializeAsMap() => (<String, dynamic>{
    'attendeeId': attendeeId
  });
  
  @override
  List<Map<String, dynamic>> serializeAsList() => serializeAsMap()
    .entries
    .map((entry) => (<String, dynamic>{ entry.key: entry.value }))
    .toList();
  
  @override
  String serializeAsString() => serializeAsMap().values.join('#');
  
  @override
  String toString() => 'AttendeeModelIdentifier(attendeeId: $attendeeId)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is AttendeeModelIdentifier &&
      attendeeId == other.attendeeId;
  }
  
  @override
  int get hashCode =>
    attendeeId.hashCode;
}