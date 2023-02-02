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


/** This is an auto generated class representing the Admin type in your schema. */
@immutable
class Admin extends Model {
  static const classType = const _AdminModelType();
  final String id;
  final String? _firstName;
  final String? _middleName;
  final String? _lastName;
  final String? _email;
  final String? _phone;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;
  final bool? _isArchived;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  AdminModelIdentifier get modelIdentifier {
      return AdminModelIdentifier(
        id: id
      );
  }
  
  String? get firstName {
    return _firstName;
  }
  
  String? get middleName {
    return _middleName;
  }
  
  String? get lastName {
    return _lastName;
  }
  
  String? get email {
    return _email;
  }
  
  String? get phone {
    return _phone;
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  bool? get isArchived {
    return _isArchived;
  }
  
  const Admin._internal({required this.id, firstName, middleName, lastName, email, phone, createdAt, updatedAt, isArchived}): _firstName = firstName, _middleName = middleName, _lastName = lastName, _email = email, _phone = phone, _createdAt = createdAt, _updatedAt = updatedAt, _isArchived = isArchived;
  
  factory Admin({String? id, String? firstName, String? middleName, String? lastName, String? email, String? phone, TemporalDateTime? createdAt, TemporalDateTime? updatedAt, bool? isArchived}) {
    return Admin._internal(
      id: id == null ? UUID.getUUID() : id,
      firstName: firstName,
      middleName: middleName,
      lastName: lastName,
      email: email,
      phone: phone,
      createdAt: createdAt,
      updatedAt: updatedAt,
      isArchived: isArchived);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Admin &&
      id == other.id &&
      _firstName == other._firstName &&
      _middleName == other._middleName &&
      _lastName == other._lastName &&
      _email == other._email &&
      _phone == other._phone &&
      _createdAt == other._createdAt &&
      _updatedAt == other._updatedAt &&
      _isArchived == other._isArchived;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Admin {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("firstName=" + "$_firstName" + ", ");
    buffer.write("middleName=" + "$_middleName" + ", ");
    buffer.write("lastName=" + "$_lastName" + ", ");
    buffer.write("email=" + "$_email" + ", ");
    buffer.write("phone=" + "$_phone" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null") + ", ");
    buffer.write("isArchived=" + (_isArchived != null ? _isArchived!.toString() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Admin copyWith({String? firstName, String? middleName, String? lastName, String? email, String? phone, TemporalDateTime? createdAt, TemporalDateTime? updatedAt, bool? isArchived}) {
    return Admin(
      id: id,
      firstName: firstName ?? this.firstName,
      middleName: middleName ?? this.middleName,
      lastName: lastName ?? this.lastName,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      isArchived: isArchived ?? this.isArchived);
  }
  
  Admin.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _firstName = json['firstName'],
      _middleName = json['middleName'],
      _lastName = json['lastName'],
      _email = json['email'],
      _phone = json['phone'],
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null,
      _isArchived = json['isArchived'];
  
  Map<String, dynamic> toJson() => {
    'id': id, 'firstName': _firstName, 'middleName': _middleName, 'lastName': _lastName, 'email': _email, 'phone': _phone, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format(), 'isArchived': _isArchived
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'firstName': _firstName, 'middleName': _middleName, 'lastName': _lastName, 'email': _email, 'phone': _phone, 'createdAt': _createdAt, 'updatedAt': _updatedAt, 'isArchived': _isArchived
  };

  static final QueryModelIdentifier<AdminModelIdentifier> MODEL_IDENTIFIER = QueryModelIdentifier<AdminModelIdentifier>();
  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField FIRSTNAME = QueryField(fieldName: "firstName");
  static final QueryField MIDDLENAME = QueryField(fieldName: "middleName");
  static final QueryField LASTNAME = QueryField(fieldName: "lastName");
  static final QueryField EMAIL = QueryField(fieldName: "email");
  static final QueryField PHONE = QueryField(fieldName: "phone");
  static final QueryField CREATEDAT = QueryField(fieldName: "createdAt");
  static final QueryField UPDATEDAT = QueryField(fieldName: "updatedAt");
  static final QueryField ISARCHIVED = QueryField(fieldName: "isArchived");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Admin";
    modelSchemaDefinition.pluralName = "Admins";
    
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
      key: Admin.FIRSTNAME,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Admin.MIDDLENAME,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Admin.LASTNAME,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Admin.EMAIL,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Admin.PHONE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Admin.CREATEDAT,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Admin.UPDATEDAT,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Admin.ISARCHIVED,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.bool)
    ));
  });
}

class _AdminModelType extends ModelType<Admin> {
  const _AdminModelType();
  
  @override
  Admin fromJson(Map<String, dynamic> jsonData) {
    return Admin.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'Admin';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [Admin] in your schema.
 */
@immutable
class AdminModelIdentifier implements ModelIdentifier<Admin> {
  final String id;

  /** Create an instance of AdminModelIdentifier using [id] the primary key. */
  const AdminModelIdentifier({
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
  String toString() => 'AdminModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is AdminModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}