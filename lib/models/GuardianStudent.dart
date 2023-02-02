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

import 'ModelProvider.dart';
import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:flutter/foundation.dart';


/** This is an auto generated class representing the GuardianStudent type in your schema. */
@immutable
class GuardianStudent extends Model {
  static const classType = const _GuardianStudentModelType();
  final String id;
  final Guardian? _guardian;
  final Student? _student;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  GuardianStudentModelIdentifier get modelIdentifier {
      return GuardianStudentModelIdentifier(
        id: id
      );
  }
  
  Guardian get guardian {
    try {
      return _guardian!;
    } catch(e) {
      throw new DataStoreException(
          DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  Student get student {
    try {
      return _student!;
    } catch(e) {
      throw new DataStoreException(
          DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  const GuardianStudent._internal({required this.id, required guardian, required student}): _guardian = guardian, _student = student;
  
  factory GuardianStudent({String? id, required Guardian guardian, required Student student}) {
    return GuardianStudent._internal(
      id: id == null ? UUID.getUUID() : id,
      guardian: guardian,
      student: student);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GuardianStudent &&
      id == other.id &&
      _guardian == other._guardian &&
      _student == other._student;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("GuardianStudent {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("guardian=" + (_guardian != null ? _guardian!.toString() : "null") + ", ");
    buffer.write("student=" + (_student != null ? _student!.toString() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  GuardianStudent copyWith({Guardian? guardian, Student? student}) {
    return GuardianStudent(
      id: id,
      guardian: guardian ?? this.guardian,
      student: student ?? this.student);
  }
  
  GuardianStudent.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _guardian = json['guardian']?['serializedData'] != null
        ? Guardian.fromJson(new Map<String, dynamic>.from(json['guardian']['serializedData']))
        : null,
      _student = json['student']?['serializedData'] != null
        ? Student.fromJson(new Map<String, dynamic>.from(json['student']['serializedData']))
        : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'guardian': _guardian?.toJson(), 'student': _student?.toJson()
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'guardian': _guardian, 'student': _student
  };

  static final QueryModelIdentifier<GuardianStudentModelIdentifier> MODEL_IDENTIFIER = QueryModelIdentifier<GuardianStudentModelIdentifier>();
  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField GUARDIAN = QueryField(
    fieldName: "guardian",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: 'Guardian'));
  static final QueryField STUDENT = QueryField(
    fieldName: "student",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: 'Student'));
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "GuardianStudent";
    modelSchemaDefinition.pluralName = "GuardianStudents";
    
    modelSchemaDefinition.indexes = [
      ModelIndex(fields: const ["guardianId"], name: "byGuardian"),
      ModelIndex(fields: const ["studentId"], name: "byStudent")
    ];
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.belongsTo(
      key: GuardianStudent.GUARDIAN,
      isRequired: true,
      targetNames: ['guardianId'],
      ofModelName: 'Guardian'
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.belongsTo(
      key: GuardianStudent.STUDENT,
      isRequired: true,
      targetNames: ['studentId'],
      ofModelName: 'Student'
    ));
  });
}

class _GuardianStudentModelType extends ModelType<GuardianStudent> {
  const _GuardianStudentModelType();
  
  @override
  GuardianStudent fromJson(Map<String, dynamic> jsonData) {
    return GuardianStudent.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'GuardianStudent';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [GuardianStudent] in your schema.
 */
@immutable
class GuardianStudentModelIdentifier implements ModelIdentifier<GuardianStudent> {
  final String id;

  /** Create an instance of GuardianStudentModelIdentifier using [id] the primary key. */
  const GuardianStudentModelIdentifier({
    required this.id});
  
  @override
  Map<String, dynamic> serializeAsMap() => (<String, dynamic>{
    'id': id
  });
  
  @override
  List<Map<String, dynamic>> serializeAsList() => serializeAsMap()
    .entries
    .map((entry) => (<String, dynamic>{ entry.key: entry.value }))
    .toList();
  
  @override
  String serializeAsString() => serializeAsMap().values.join('#');
  
  @override
  String toString() => 'GuardianStudentModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is GuardianStudentModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}