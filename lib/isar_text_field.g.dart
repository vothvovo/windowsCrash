// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'isar_text_field.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetIsarTextFieldCollection on Isar {
  IsarCollection<IsarTextField> get isarTextFields => this.collection();
}

const IsarTextFieldSchema = CollectionSchema(
  name: r'IsarTextField',
  id: -3373904307997446341,
  properties: {
    r'textFieldString': PropertySchema(
      id: 0,
      name: r'textFieldString',
      type: IsarType.string,
    )
  },
  estimateSize: _isarTextFieldEstimateSize,
  serialize: _isarTextFieldSerialize,
  deserialize: _isarTextFieldDeserialize,
  deserializeProp: _isarTextFieldDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _isarTextFieldGetId,
  getLinks: _isarTextFieldGetLinks,
  attach: _isarTextFieldAttach,
  version: '3.0.0',
);

int _isarTextFieldEstimateSize(
  IsarTextField object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.textFieldString.length * 3;
  return bytesCount;
}

void _isarTextFieldSerialize(
  IsarTextField object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.textFieldString);
}

IsarTextField _isarTextFieldDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = IsarTextField(
    id: id,
    textFieldString: reader.readStringOrNull(offsets[0]) ?? '',
  );
  return object;
}

P _isarTextFieldDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset) ?? '') as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _isarTextFieldGetId(IsarTextField object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _isarTextFieldGetLinks(IsarTextField object) {
  return [];
}

void _isarTextFieldAttach(
    IsarCollection<dynamic> col, Id id, IsarTextField object) {}

extension IsarTextFieldQueryWhereSort
    on QueryBuilder<IsarTextField, IsarTextField, QWhere> {
  QueryBuilder<IsarTextField, IsarTextField, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension IsarTextFieldQueryWhere
    on QueryBuilder<IsarTextField, IsarTextField, QWhereClause> {
  QueryBuilder<IsarTextField, IsarTextField, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<IsarTextField, IsarTextField, QAfterWhereClause> idNotEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<IsarTextField, IsarTextField, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<IsarTextField, IsarTextField, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<IsarTextField, IsarTextField, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension IsarTextFieldQueryFilter
    on QueryBuilder<IsarTextField, IsarTextField, QFilterCondition> {
  QueryBuilder<IsarTextField, IsarTextField, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarTextField, IsarTextField, QAfterFilterCondition>
      idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarTextField, IsarTextField, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarTextField, IsarTextField, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IsarTextField, IsarTextField, QAfterFilterCondition>
      textFieldStringEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'textFieldString',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTextField, IsarTextField, QAfterFilterCondition>
      textFieldStringGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'textFieldString',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTextField, IsarTextField, QAfterFilterCondition>
      textFieldStringLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'textFieldString',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTextField, IsarTextField, QAfterFilterCondition>
      textFieldStringBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'textFieldString',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTextField, IsarTextField, QAfterFilterCondition>
      textFieldStringStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'textFieldString',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTextField, IsarTextField, QAfterFilterCondition>
      textFieldStringEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'textFieldString',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTextField, IsarTextField, QAfterFilterCondition>
      textFieldStringContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'textFieldString',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTextField, IsarTextField, QAfterFilterCondition>
      textFieldStringMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'textFieldString',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTextField, IsarTextField, QAfterFilterCondition>
      textFieldStringIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'textFieldString',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarTextField, IsarTextField, QAfterFilterCondition>
      textFieldStringIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'textFieldString',
        value: '',
      ));
    });
  }
}

extension IsarTextFieldQueryObject
    on QueryBuilder<IsarTextField, IsarTextField, QFilterCondition> {}

extension IsarTextFieldQueryLinks
    on QueryBuilder<IsarTextField, IsarTextField, QFilterCondition> {}

extension IsarTextFieldQuerySortBy
    on QueryBuilder<IsarTextField, IsarTextField, QSortBy> {
  QueryBuilder<IsarTextField, IsarTextField, QAfterSortBy>
      sortByTextFieldString() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'textFieldString', Sort.asc);
    });
  }

  QueryBuilder<IsarTextField, IsarTextField, QAfterSortBy>
      sortByTextFieldStringDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'textFieldString', Sort.desc);
    });
  }
}

extension IsarTextFieldQuerySortThenBy
    on QueryBuilder<IsarTextField, IsarTextField, QSortThenBy> {
  QueryBuilder<IsarTextField, IsarTextField, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<IsarTextField, IsarTextField, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<IsarTextField, IsarTextField, QAfterSortBy>
      thenByTextFieldString() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'textFieldString', Sort.asc);
    });
  }

  QueryBuilder<IsarTextField, IsarTextField, QAfterSortBy>
      thenByTextFieldStringDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'textFieldString', Sort.desc);
    });
  }
}

extension IsarTextFieldQueryWhereDistinct
    on QueryBuilder<IsarTextField, IsarTextField, QDistinct> {
  QueryBuilder<IsarTextField, IsarTextField, QDistinct>
      distinctByTextFieldString({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'textFieldString',
          caseSensitive: caseSensitive);
    });
  }
}

extension IsarTextFieldQueryProperty
    on QueryBuilder<IsarTextField, IsarTextField, QQueryProperty> {
  QueryBuilder<IsarTextField, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<IsarTextField, String, QQueryOperations>
      textFieldStringProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'textFieldString');
    });
  }
}
