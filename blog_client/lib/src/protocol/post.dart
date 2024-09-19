/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class Post implements _i1.SerializableModel {
  Post._({
    this.id,
    required this.title,
    required this.content,
    DateTime? created,
  }) : created = created ?? DateTime.now();

  factory Post({
    int? id,
    required String title,
    required String content,
    DateTime? created,
  }) = _PostImpl;

  factory Post.fromJson(Map<String, dynamic> jsonSerialization) {
    return Post(
      id: jsonSerialization['id'] as int?,
      title: jsonSerialization['title'] as String,
      content: jsonSerialization['content'] as String,
      created: _i1.DateTimeJsonExtension.fromJson(jsonSerialization['created']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String title;

  String content;

  DateTime created;

  Post copyWith({
    int? id,
    String? title,
    String? content,
    DateTime? created,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'title': title,
      'content': content,
      'created': created.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _PostImpl extends Post {
  _PostImpl({
    int? id,
    required String title,
    required String content,
    DateTime? created,
  }) : super._(
          id: id,
          title: title,
          content: content,
          created: created,
        );

  @override
  Post copyWith({
    Object? id = _Undefined,
    String? title,
    String? content,
    DateTime? created,
  }) {
    return Post(
      id: id is int? ? id : this.id,
      title: title ?? this.title,
      content: content ?? this.content,
      created: created ?? this.created,
    );
  }
}
