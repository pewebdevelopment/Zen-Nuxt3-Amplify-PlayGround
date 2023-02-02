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


/** This is an auto generated class representing the Educator type in your schema. */
@immutable
class Educator extends Model {
  static const classType = const _EducatorModelType();
  final String id;
  final String? _firstNam;
  final String? _lastName;
  final String? _email;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;
  final String? _middleName;
  final String? _phone;
  final bool? _isArchive;
  final String? _subjects;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  EducatorModelIdentifier get modelIdentifier {
      return EducatorModelIdentifier(
        id: id
      );
  }
  
  String? get firstNam {
    return _firstNam;
  }
  
  String? get lastName {
    return _lastName;
  }
  
  String? get email {
    return _email;
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  String? get middleName {
    return _middleName;
  }
  
  String? get phone {
    return _phone;
  }
  
  bool? get isArchive {
    return _isArchive;
  }
  
  String? get subjects {
    return _subjects;
  }
  
  const Educator._internal({required this.id, firstNam, lastName, email, createdAt, updatedAt, middleName, phone, isArchive, subjects}): _firstNam = firstNam, _lastName = lastName, _email = email, _createdAt = createdAt, _updatedAt = updatedAt, _middleName = middleName, _phone = phone, _isArchive = isArchive, _subjects = subjects;
  
  factory Educator({String? id, String? firstNam, String? lastName, String? email, TemporalDateTime? createdAt, TemporalDateTime? updatedAt, String? middleName, String? phone, bool? isArchive, String? subjects}) {
    return Educator._internal(
      id: id == null ? UUID.getUUID() : id,
      firstNam: firstNam,
      lastName: lastName,
      email: email,
      createdAt: createdAt,
      updatedAt: updatedAt,
      middleName: middleName,
      phone: phone,
      isArchive: isArchive,
      subjects: subjects);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Educator &&
      id == other.id &&
      _firstNam == other._firstNam &&
      _lastName == other._lastName &&
      _email == other._email &&
      _createdAt == other._createdAt &&
      _updatedAt == other._updatedAt &&
      _middleName == other._middleName &&
      _phone == other._phone &&
      _isArchive == other._isArchive &&
      _subjects == other._subjects;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Educator {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("firstNam=" + "$_firstNam" + ", ");
    buffer.write("lastName=" + "$_lastName" + ", ");
    buffer.write("email=" + "$_email" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null") + ", ");
    buffer.write("middleName=" + "$_middleName" + ", ");
    buffer.write("phone=" + "$_phone" + ", ");
    buffer.write("isArchive=" + (_isArchive != null ? _isArchive!.toString() : "null") + ", ");
    buffer.write("subjects=" + "$_subjects");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Educator copyWith({String? firstNam, String? lastName, String? email, TemporalDateTime? createdAt, TemporalDateTime? updatedAt, String? middleName, String? phone, bool? isArchive, String? subjects}) {
    return Educator(
      id: id,
      firstNam: firstNam ?? this.firstNam,
      lastName: lastName ?? this.lastName,
      email: email ?? this.email,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      middleName: middleName ?? this.middleName,
      phone: phone ?? this.phone,
      isArchive: isArchive ?? this.isArchive,
      subjects: subjects ?? this.subjects);
  }
  
  Educator.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _firstNam = json['firstNam'],
      _lastName = json['lastName'],
      _email = json['email'],
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null,
      _middleName = json['middleName'],
      _phone = json['phone'],
      _isArchive = json['isArchive'],
      _subjects = json['subjects'];
  
  Map<String, dynamic> toJson() => {
    'id': id, 'firstNam': _firstNam, 'lastName': _lastName, 'email': _email, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format(), 'middleName': _middleName, 'phone': _phone, 'isArchive': _isArchive, 'subjects': _subjects
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'firstNam': _firstNam, 'lastName': _lastName, 'email': _email, 'createdAt': _createdAt, 'updatedAt': _updatedAt, 'middleName': _middleName, 'phone': _phone, 'isArchive': _isArchive, 'subjects': _subjects
  };

  static final QueryModelIdentifier<EducatorModelIdentifier> MODEL_IDENTIFIER = QueryModelIdentifier<EducatorModelIdentifier>();
  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField FIRSTNAM = QueryField(fieldName: "firstNam");
  static final QueryField LASTNAME = QueryField(fieldName: "lastName");
  static final QueryField EMAIL = QueryField(fieldName: "email");
  static final QueryField CREATEDAT = QueryField(fieldName: "createdAt");
  static final QueryField UPDATEDAT = QueryField(fieldName: "updatedAt");
  static final QueryField MIDDLENAME = QueryField(fieldName: "middleName");
  static final QueryField PHONE = QueryField(fieldName: "phone");
  static final QueryField ISARCHIVE = QueryField(fieldName: "isArchive");
  static final QueryField SUBJECTS = QueryField(fieldName: "subjects");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Educator";
    modelSchemaDefinition.pluralName = "Educators";
    
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
      key: Educator.FIRSTNAM,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Educator.LASTNAME,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Educator.EMAIL,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Educator.CREATEDAT,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Educator.UPDATEDAT,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Educator.MIDDLENAME,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Educator.PHONE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Educator.ISARCHIVE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.bool)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Educator.SUBJECTS,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
  });
}

class _EducatorModelType extends ModelType<Educator> {
  const _EducatorModelType();
  
  @override
  Educator fromJson(Map<String, dynamic> jsonData) {
    return Educator.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'Educator';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [Educator] in your schema.
 */
@immutable
class EducatorModelIdentifier implements ModelIdentifier<Educator> {
  final String id;

  /** Create an instance of EducatorModelIdentifier using [id] the primary key. */
  const EducatorModelIdentifier({
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
  String toString() => 'EducatorModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is EducatorModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}