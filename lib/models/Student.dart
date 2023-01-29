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


/** This is an auto generated class representing the Student type in your schema. */
@immutable
class Student extends Model {
  static const classType = const _StudentModelType();
  final String id;
  final String? _firstName;
  final String? _middleName;
  final String? _lastName;
  final String? _email;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;
  final String? _phone;
  final bool? _isArchived;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  StudentModelIdentifier get modelIdentifier {
      return StudentModelIdentifier(
        id: id
      );
  }
  
  String get firstName {
    try {
      return _firstName!;
    } catch(e) {
      throw new DataStoreException(
          DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String? get middleName {
    return _middleName;
  }
  
  String get lastName {
    try {
      return _lastName!;
    } catch(e) {
      throw new DataStoreException(
          DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get email {
    try {
      return _email!;
    } catch(e) {
      throw new DataStoreException(
          DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  String? get phone {
    return _phone;
  }
  
  bool? get isArchived {
    return _isArchived;
  }
  
  const Student._internal({required this.id, required firstName, middleName, required lastName, required email, createdAt, updatedAt, phone, isArchived}): _firstName = firstName, _middleName = middleName, _lastName = lastName, _email = email, _createdAt = createdAt, _updatedAt = updatedAt, _phone = phone, _isArchived = isArchived;
  
  factory Student({String? id, required String firstName, String? middleName, required String lastName, required String email, TemporalDateTime? createdAt, TemporalDateTime? updatedAt, String? phone, bool? isArchived}) {
    return Student._internal(
      id: id == null ? UUID.getUUID() : id,
      firstName: firstName,
      middleName: middleName,
      lastName: lastName,
      email: email,
      createdAt: createdAt,
      updatedAt: updatedAt,
      phone: phone,
      isArchived: isArchived);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Student &&
      id == other.id &&
      _firstName == other._firstName &&
      _middleName == other._middleName &&
      _lastName == other._lastName &&
      _email == other._email &&
      _createdAt == other._createdAt &&
      _updatedAt == other._updatedAt &&
      _phone == other._phone &&
      _isArchived == other._isArchived;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Student {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("firstName=" + "$_firstName" + ", ");
    buffer.write("middleName=" + "$_middleName" + ", ");
    buffer.write("lastName=" + "$_lastName" + ", ");
    buffer.write("email=" + "$_email" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null") + ", ");
    buffer.write("phone=" + "$_phone" + ", ");
    buffer.write("isArchived=" + (_isArchived != null ? _isArchived!.toString() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Student copyWith({String? firstName, String? middleName, String? lastName, String? email, TemporalDateTime? createdAt, TemporalDateTime? updatedAt, String? phone, bool? isArchived}) {
    return Student(
      id: id,
      firstName: firstName ?? this.firstName,
      middleName: middleName ?? this.middleName,
      lastName: lastName ?? this.lastName,
      email: email ?? this.email,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      phone: phone ?? this.phone,
      isArchived: isArchived ?? this.isArchived);
  }
  
  Student.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _firstName = json['firstName'],
      _middleName = json['middleName'],
      _lastName = json['lastName'],
      _email = json['email'],
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null,
      _phone = json['phone'],
      _isArchived = json['isArchived'];
  
  Map<String, dynamic> toJson() => {
    'id': id, 'firstName': _firstName, 'middleName': _middleName, 'lastName': _lastName, 'email': _email, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format(), 'phone': _phone, 'isArchived': _isArchived
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'firstName': _firstName, 'middleName': _middleName, 'lastName': _lastName, 'email': _email, 'createdAt': _createdAt, 'updatedAt': _updatedAt, 'phone': _phone, 'isArchived': _isArchived
  };

  static final QueryModelIdentifier<StudentModelIdentifier> MODEL_IDENTIFIER = QueryModelIdentifier<StudentModelIdentifier>();
  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField FIRSTNAME = QueryField(fieldName: "firstName");
  static final QueryField MIDDLENAME = QueryField(fieldName: "middleName");
  static final QueryField LASTNAME = QueryField(fieldName: "lastName");
  static final QueryField EMAIL = QueryField(fieldName: "email");
  static final QueryField CREATEDAT = QueryField(fieldName: "createdAt");
  static final QueryField UPDATEDAT = QueryField(fieldName: "updatedAt");
  static final QueryField PHONE = QueryField(fieldName: "phone");
  static final QueryField ISARCHIVED = QueryField(fieldName: "isArchived");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Student";
    modelSchemaDefinition.pluralName = "Students";
    
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
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Student.FIRSTNAME,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Student.MIDDLENAME,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Student.LASTNAME,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Student.EMAIL,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Student.CREATEDAT,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Student.UPDATEDAT,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Student.PHONE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Student.ISARCHIVED,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.bool)
    ));
  });
}

class _StudentModelType extends ModelType<Student> {
  const _StudentModelType();
  
  @override
  Student fromJson(Map<String, dynamic> jsonData) {
    return Student.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'Student';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [Student] in your schema.
 */
@immutable
class StudentModelIdentifier implements ModelIdentifier<Student> {
  final String id;

  /** Create an instance of StudentModelIdentifier using [id] the primary key. */
  const StudentModelIdentifier({
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
  String toString() => 'StudentModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is StudentModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}