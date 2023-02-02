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


/** This is an auto generated class representing the Meeting type in your schema. */
@immutable
class Meeting extends Model {
  static const classType = const _MeetingModelType();
  final String? _meetingId;
  final String? _title;
  final String? _data;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => modelIdentifier.serializeAsString();
  
  MeetingModelIdentifier get modelIdentifier {
    try {
      return MeetingModelIdentifier(
        title: _title!
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
  
  String get meetingId {
    try {
      return _meetingId!;
    } catch(e) {
      throw new DataStoreException(
          DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get title {
    try {
      return _title!;
    } catch(e) {
      throw new DataStoreException(
          DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get data {
    try {
      return _data!;
    } catch(e) {
      throw new DataStoreException(
          DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  const Meeting._internal({required meetingId, required title, required data}): _meetingId = meetingId, _title = title, _data = data;
  
  factory Meeting({required String meetingId, required String title, required String data}) {
    return Meeting._internal(
      meetingId: meetingId,
      title: title,
      data: data);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Meeting &&
      _meetingId == other._meetingId &&
      _title == other._title &&
      _data == other._data;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Meeting {");
    buffer.write("meetingId=" + "$_meetingId" + ", ");
    buffer.write("title=" + "$_title" + ", ");
    buffer.write("data=" + "$_data");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Meeting copyWith({String? meetingId, String? data}) {
    return Meeting(
      meetingId: meetingId ?? this.meetingId,
      title: title,
      data: data ?? this.data);
  }
  
  Meeting.fromJson(Map<String, dynamic> json)  
    : _meetingId = json['meetingId'],
      _title = json['title'],
      _data = json['data'];
  
  Map<String, dynamic> toJson() => {
    'meetingId': _meetingId, 'title': _title, 'data': _data
  };
  
  Map<String, Object?> toMap() => {
    'meetingId': _meetingId, 'title': _title, 'data': _data
  };

  static final QueryModelIdentifier<MeetingModelIdentifier> MODEL_IDENTIFIER = QueryModelIdentifier<MeetingModelIdentifier>();
  static final QueryField MEETINGID = QueryField(fieldName: "meetingId");
  static final QueryField TITLE = QueryField(fieldName: "title");
  static final QueryField DATA = QueryField(fieldName: "data");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Meeting";
    modelSchemaDefinition.pluralName = "Meetings";
    
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
      ModelIndex(fields: const ["title"], name: null)
    ];
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Meeting.MEETINGID,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Meeting.TITLE,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Meeting.DATA,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
  });
}

class _MeetingModelType extends ModelType<Meeting> {
  const _MeetingModelType();
  
  @override
  Meeting fromJson(Map<String, dynamic> jsonData) {
    return Meeting.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'Meeting';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [Meeting] in your schema.
 */
@immutable
class MeetingModelIdentifier implements ModelIdentifier<Meeting> {
  final String title;

  /** Create an instance of MeetingModelIdentifier using [title] the primary key. */
  const MeetingModelIdentifier({
    required this.title});
  
  @override
  Map<String, dynamic> serializeAsMap() => (<String, dynamic>{
    'title': title
  });
  
  @override
  List<Map<String, dynamic>> serializeAsList() => serializeAsMap()
    .entries
    .map((entry) => (<String, dynamic>{ entry.key: entry.value }))
    .toList();
  
  @override
  String serializeAsString() => serializeAsMap().values.join('#');
  
  @override
  String toString() => 'MeetingModelIdentifier(title: $title)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is MeetingModelIdentifier &&
      title == other.title;
  }
  
  @override
  int get hashCode =>
    title.hashCode;
}