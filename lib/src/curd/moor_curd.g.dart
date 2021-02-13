// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moor_curd.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Dish extends DataClass implements Insertable<Dish> {
  final int id;
  final String dishName;
  final int quantity;
  final String discription;
  final String image;
  final int price1;
  final int price2;
  final int portions;
  final int catId;
  final int sCatId;
  final bool isVeg;
  Dish(
      {@required this.id,
      this.dishName,
      @required this.quantity,
      this.discription,
      this.image,
      this.price1,
      this.price2,
      this.portions,
      this.catId,
      this.sCatId,
      this.isVeg});
  factory Dish.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final boolType = db.typeSystem.forDartType<bool>();
    return Dish(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      dishName: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}dish_name']),
      quantity:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}quantity']),
      discription: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}discription']),
      image:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}image']),
      price1: intType.mapFromDatabaseResponse(data['${effectivePrefix}price1']),
      price2: intType.mapFromDatabaseResponse(data['${effectivePrefix}price2']),
      portions:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}portions']),
      catId: intType.mapFromDatabaseResponse(data['${effectivePrefix}cat_id']),
      sCatId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}s_cat_id']),
      isVeg: boolType.mapFromDatabaseResponse(data['${effectivePrefix}is_veg']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || dishName != null) {
      map['dish_name'] = Variable<String>(dishName);
    }
    if (!nullToAbsent || quantity != null) {
      map['quantity'] = Variable<int>(quantity);
    }
    if (!nullToAbsent || discription != null) {
      map['discription'] = Variable<String>(discription);
    }
    if (!nullToAbsent || image != null) {
      map['image'] = Variable<String>(image);
    }
    if (!nullToAbsent || price1 != null) {
      map['price1'] = Variable<int>(price1);
    }
    if (!nullToAbsent || price2 != null) {
      map['price2'] = Variable<int>(price2);
    }
    if (!nullToAbsent || portions != null) {
      map['portions'] = Variable<int>(portions);
    }
    if (!nullToAbsent || catId != null) {
      map['cat_id'] = Variable<int>(catId);
    }
    if (!nullToAbsent || sCatId != null) {
      map['s_cat_id'] = Variable<int>(sCatId);
    }
    if (!nullToAbsent || isVeg != null) {
      map['is_veg'] = Variable<bool>(isVeg);
    }
    return map;
  }

  DishsCompanion toCompanion(bool nullToAbsent) {
    return DishsCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      dishName: dishName == null && nullToAbsent
          ? const Value.absent()
          : Value(dishName),
      quantity: quantity == null && nullToAbsent
          ? const Value.absent()
          : Value(quantity),
      discription: discription == null && nullToAbsent
          ? const Value.absent()
          : Value(discription),
      image:
          image == null && nullToAbsent ? const Value.absent() : Value(image),
      price1:
          price1 == null && nullToAbsent ? const Value.absent() : Value(price1),
      price2:
          price2 == null && nullToAbsent ? const Value.absent() : Value(price2),
      portions: portions == null && nullToAbsent
          ? const Value.absent()
          : Value(portions),
      catId:
          catId == null && nullToAbsent ? const Value.absent() : Value(catId),
      sCatId:
          sCatId == null && nullToAbsent ? const Value.absent() : Value(sCatId),
      isVeg:
          isVeg == null && nullToAbsent ? const Value.absent() : Value(isVeg),
    );
  }

  factory Dish.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Dish(
      id: serializer.fromJson<int>(json['id']),
      dishName: serializer.fromJson<String>(json['dishName']),
      quantity: serializer.fromJson<int>(json['quantity']),
      discription: serializer.fromJson<String>(json['discription']),
      image: serializer.fromJson<String>(json['image']),
      price1: serializer.fromJson<int>(json['price1']),
      price2: serializer.fromJson<int>(json['price2']),
      portions: serializer.fromJson<int>(json['portions']),
      catId: serializer.fromJson<int>(json['catId']),
      sCatId: serializer.fromJson<int>(json['sCatId']),
      isVeg: serializer.fromJson<bool>(json['isVeg']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'dishName': serializer.toJson<String>(dishName),
      'quantity': serializer.toJson<int>(quantity),
      'discription': serializer.toJson<String>(discription),
      'image': serializer.toJson<String>(image),
      'price1': serializer.toJson<int>(price1),
      'price2': serializer.toJson<int>(price2),
      'portions': serializer.toJson<int>(portions),
      'catId': serializer.toJson<int>(catId),
      'sCatId': serializer.toJson<int>(sCatId),
      'isVeg': serializer.toJson<bool>(isVeg),
    };
  }

  Dish copyWith(
          {int id,
          String dishName,
          int quantity,
          String discription,
          String image,
          int price1,
          int price2,
          int portions,
          int catId,
          int sCatId,
          bool isVeg}) =>
      Dish(
        id: id ?? this.id,
        dishName: dishName ?? this.dishName,
        quantity: quantity ?? this.quantity,
        discription: discription ?? this.discription,
        image: image ?? this.image,
        price1: price1 ?? this.price1,
        price2: price2 ?? this.price2,
        portions: portions ?? this.portions,
        catId: catId ?? this.catId,
        sCatId: sCatId ?? this.sCatId,
        isVeg: isVeg ?? this.isVeg,
      );
  @override
  String toString() {
    return (StringBuffer('Dish(')
          ..write('id: $id, ')
          ..write('dishName: $dishName, ')
          ..write('quantity: $quantity, ')
          ..write('discription: $discription, ')
          ..write('image: $image, ')
          ..write('price1: $price1, ')
          ..write('price2: $price2, ')
          ..write('portions: $portions, ')
          ..write('catId: $catId, ')
          ..write('sCatId: $sCatId, ')
          ..write('isVeg: $isVeg')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          dishName.hashCode,
          $mrjc(
              quantity.hashCode,
              $mrjc(
                  discription.hashCode,
                  $mrjc(
                      image.hashCode,
                      $mrjc(
                          price1.hashCode,
                          $mrjc(
                              price2.hashCode,
                              $mrjc(
                                  portions.hashCode,
                                  $mrjc(
                                      catId.hashCode,
                                      $mrjc(sCatId.hashCode,
                                          isVeg.hashCode)))))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Dish &&
          other.id == this.id &&
          other.dishName == this.dishName &&
          other.quantity == this.quantity &&
          other.discription == this.discription &&
          other.image == this.image &&
          other.price1 == this.price1 &&
          other.price2 == this.price2 &&
          other.portions == this.portions &&
          other.catId == this.catId &&
          other.sCatId == this.sCatId &&
          other.isVeg == this.isVeg);
}

class DishsCompanion extends UpdateCompanion<Dish> {
  final Value<int> id;
  final Value<String> dishName;
  final Value<int> quantity;
  final Value<String> discription;
  final Value<String> image;
  final Value<int> price1;
  final Value<int> price2;
  final Value<int> portions;
  final Value<int> catId;
  final Value<int> sCatId;
  final Value<bool> isVeg;
  const DishsCompanion({
    this.id = const Value.absent(),
    this.dishName = const Value.absent(),
    this.quantity = const Value.absent(),
    this.discription = const Value.absent(),
    this.image = const Value.absent(),
    this.price1 = const Value.absent(),
    this.price2 = const Value.absent(),
    this.portions = const Value.absent(),
    this.catId = const Value.absent(),
    this.sCatId = const Value.absent(),
    this.isVeg = const Value.absent(),
  });
  DishsCompanion.insert({
    this.id = const Value.absent(),
    this.dishName = const Value.absent(),
    this.quantity = const Value.absent(),
    this.discription = const Value.absent(),
    this.image = const Value.absent(),
    this.price1 = const Value.absent(),
    this.price2 = const Value.absent(),
    this.portions = const Value.absent(),
    this.catId = const Value.absent(),
    this.sCatId = const Value.absent(),
    this.isVeg = const Value.absent(),
  });
  static Insertable<Dish> custom({
    Expression<int> id,
    Expression<String> dishName,
    Expression<int> quantity,
    Expression<String> discription,
    Expression<String> image,
    Expression<int> price1,
    Expression<int> price2,
    Expression<int> portions,
    Expression<int> catId,
    Expression<int> sCatId,
    Expression<bool> isVeg,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (dishName != null) 'dish_name': dishName,
      if (quantity != null) 'quantity': quantity,
      if (discription != null) 'discription': discription,
      if (image != null) 'image': image,
      if (price1 != null) 'price1': price1,
      if (price2 != null) 'price2': price2,
      if (portions != null) 'portions': portions,
      if (catId != null) 'cat_id': catId,
      if (sCatId != null) 's_cat_id': sCatId,
      if (isVeg != null) 'is_veg': isVeg,
    });
  }

  DishsCompanion copyWith(
      {Value<int> id,
      Value<String> dishName,
      Value<int> quantity,
      Value<String> discription,
      Value<String> image,
      Value<int> price1,
      Value<int> price2,
      Value<int> portions,
      Value<int> catId,
      Value<int> sCatId,
      Value<bool> isVeg}) {
    return DishsCompanion(
      id: id ?? this.id,
      dishName: dishName ?? this.dishName,
      quantity: quantity ?? this.quantity,
      discription: discription ?? this.discription,
      image: image ?? this.image,
      price1: price1 ?? this.price1,
      price2: price2 ?? this.price2,
      portions: portions ?? this.portions,
      catId: catId ?? this.catId,
      sCatId: sCatId ?? this.sCatId,
      isVeg: isVeg ?? this.isVeg,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (dishName.present) {
      map['dish_name'] = Variable<String>(dishName.value);
    }
    if (quantity.present) {
      map['quantity'] = Variable<int>(quantity.value);
    }
    if (discription.present) {
      map['discription'] = Variable<String>(discription.value);
    }
    if (image.present) {
      map['image'] = Variable<String>(image.value);
    }
    if (price1.present) {
      map['price1'] = Variable<int>(price1.value);
    }
    if (price2.present) {
      map['price2'] = Variable<int>(price2.value);
    }
    if (portions.present) {
      map['portions'] = Variable<int>(portions.value);
    }
    if (catId.present) {
      map['cat_id'] = Variable<int>(catId.value);
    }
    if (sCatId.present) {
      map['s_cat_id'] = Variable<int>(sCatId.value);
    }
    if (isVeg.present) {
      map['is_veg'] = Variable<bool>(isVeg.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DishsCompanion(')
          ..write('id: $id, ')
          ..write('dishName: $dishName, ')
          ..write('quantity: $quantity, ')
          ..write('discription: $discription, ')
          ..write('image: $image, ')
          ..write('price1: $price1, ')
          ..write('price2: $price2, ')
          ..write('portions: $portions, ')
          ..write('catId: $catId, ')
          ..write('sCatId: $sCatId, ')
          ..write('isVeg: $isVeg')
          ..write(')'))
        .toString();
  }
}

class $DishsTable extends Dishs with TableInfo<$DishsTable, Dish> {
  final GeneratedDatabase _db;
  final String _alias;
  $DishsTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn(
      'id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _dishNameMeta = const VerificationMeta('dishName');
  GeneratedTextColumn _dishName;
  @override
  GeneratedTextColumn get dishName => _dishName ??= _constructDishName();
  GeneratedTextColumn _constructDishName() {
    return GeneratedTextColumn(
      'dish_name',
      $tableName,
      true,
    );
  }

  final VerificationMeta _quantityMeta = const VerificationMeta('quantity');
  GeneratedIntColumn _quantity;
  @override
  GeneratedIntColumn get quantity => _quantity ??= _constructQuantity();
  GeneratedIntColumn _constructQuantity() {
    return GeneratedIntColumn('quantity', $tableName, false,
        defaultValue: Constant(0));
  }

  final VerificationMeta _discriptionMeta =
      const VerificationMeta('discription');
  GeneratedTextColumn _discription;
  @override
  GeneratedTextColumn get discription =>
      _discription ??= _constructDiscription();
  GeneratedTextColumn _constructDiscription() {
    return GeneratedTextColumn(
      'discription',
      $tableName,
      true,
    );
  }

  final VerificationMeta _imageMeta = const VerificationMeta('image');
  GeneratedTextColumn _image;
  @override
  GeneratedTextColumn get image => _image ??= _constructImage();
  GeneratedTextColumn _constructImage() {
    return GeneratedTextColumn(
      'image',
      $tableName,
      true,
    );
  }

  final VerificationMeta _price1Meta = const VerificationMeta('price1');
  GeneratedIntColumn _price1;
  @override
  GeneratedIntColumn get price1 => _price1 ??= _constructPrice1();
  GeneratedIntColumn _constructPrice1() {
    return GeneratedIntColumn(
      'price1',
      $tableName,
      true,
    );
  }

  final VerificationMeta _price2Meta = const VerificationMeta('price2');
  GeneratedIntColumn _price2;
  @override
  GeneratedIntColumn get price2 => _price2 ??= _constructPrice2();
  GeneratedIntColumn _constructPrice2() {
    return GeneratedIntColumn(
      'price2',
      $tableName,
      true,
    );
  }

  final VerificationMeta _portionsMeta = const VerificationMeta('portions');
  GeneratedIntColumn _portions;
  @override
  GeneratedIntColumn get portions => _portions ??= _constructPortions();
  GeneratedIntColumn _constructPortions() {
    return GeneratedIntColumn(
      'portions',
      $tableName,
      true,
    );
  }

  final VerificationMeta _catIdMeta = const VerificationMeta('catId');
  GeneratedIntColumn _catId;
  @override
  GeneratedIntColumn get catId => _catId ??= _constructCatId();
  GeneratedIntColumn _constructCatId() {
    return GeneratedIntColumn(
      'cat_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _sCatIdMeta = const VerificationMeta('sCatId');
  GeneratedIntColumn _sCatId;
  @override
  GeneratedIntColumn get sCatId => _sCatId ??= _constructSCatId();
  GeneratedIntColumn _constructSCatId() {
    return GeneratedIntColumn(
      's_cat_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _isVegMeta = const VerificationMeta('isVeg');
  GeneratedBoolColumn _isVeg;
  @override
  GeneratedBoolColumn get isVeg => _isVeg ??= _constructIsVeg();
  GeneratedBoolColumn _constructIsVeg() {
    return GeneratedBoolColumn(
      'is_veg',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        id,
        dishName,
        quantity,
        discription,
        image,
        price1,
        price2,
        portions,
        catId,
        sCatId,
        isVeg
      ];
  @override
  $DishsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'dishs';
  @override
  final String actualTableName = 'dishs';
  @override
  VerificationContext validateIntegrity(Insertable<Dish> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('dish_name')) {
      context.handle(_dishNameMeta,
          dishName.isAcceptableOrUnknown(data['dish_name'], _dishNameMeta));
    }
    if (data.containsKey('quantity')) {
      context.handle(_quantityMeta,
          quantity.isAcceptableOrUnknown(data['quantity'], _quantityMeta));
    }
    if (data.containsKey('discription')) {
      context.handle(
          _discriptionMeta,
          discription.isAcceptableOrUnknown(
              data['discription'], _discriptionMeta));
    }
    if (data.containsKey('image')) {
      context.handle(
          _imageMeta, image.isAcceptableOrUnknown(data['image'], _imageMeta));
    }
    if (data.containsKey('price1')) {
      context.handle(_price1Meta,
          price1.isAcceptableOrUnknown(data['price1'], _price1Meta));
    }
    if (data.containsKey('price2')) {
      context.handle(_price2Meta,
          price2.isAcceptableOrUnknown(data['price2'], _price2Meta));
    }
    if (data.containsKey('portions')) {
      context.handle(_portionsMeta,
          portions.isAcceptableOrUnknown(data['portions'], _portionsMeta));
    }
    if (data.containsKey('cat_id')) {
      context.handle(
          _catIdMeta, catId.isAcceptableOrUnknown(data['cat_id'], _catIdMeta));
    }
    if (data.containsKey('s_cat_id')) {
      context.handle(_sCatIdMeta,
          sCatId.isAcceptableOrUnknown(data['s_cat_id'], _sCatIdMeta));
    }
    if (data.containsKey('is_veg')) {
      context.handle(
          _isVegMeta, isVeg.isAcceptableOrUnknown(data['is_veg'], _isVegMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Dish map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Dish.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $DishsTable createAlias(String alias) {
    return $DishsTable(_db, alias);
  }
}

class Menu extends DataClass implements Insertable<Menu> {
  final int id;
  final String catName;
  final bool hasSc;
  Menu({@required this.id, this.catName, this.hasSc});
  factory Menu.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final boolType = db.typeSystem.forDartType<bool>();
    return Menu(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      catName: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}cat_name']),
      hasSc: boolType.mapFromDatabaseResponse(data['${effectivePrefix}has_sc']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || catName != null) {
      map['cat_name'] = Variable<String>(catName);
    }
    if (!nullToAbsent || hasSc != null) {
      map['has_sc'] = Variable<bool>(hasSc);
    }
    return map;
  }

  MenusCompanion toCompanion(bool nullToAbsent) {
    return MenusCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      catName: catName == null && nullToAbsent
          ? const Value.absent()
          : Value(catName),
      hasSc:
          hasSc == null && nullToAbsent ? const Value.absent() : Value(hasSc),
    );
  }

  factory Menu.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Menu(
      id: serializer.fromJson<int>(json['id']),
      catName: serializer.fromJson<String>(json['catName']),
      hasSc: serializer.fromJson<bool>(json['hasSc']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'catName': serializer.toJson<String>(catName),
      'hasSc': serializer.toJson<bool>(hasSc),
    };
  }

  Menu copyWith({int id, String catName, bool hasSc}) => Menu(
        id: id ?? this.id,
        catName: catName ?? this.catName,
        hasSc: hasSc ?? this.hasSc,
      );
  @override
  String toString() {
    return (StringBuffer('Menu(')
          ..write('id: $id, ')
          ..write('catName: $catName, ')
          ..write('hasSc: $hasSc')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      $mrjf($mrjc(id.hashCode, $mrjc(catName.hashCode, hasSc.hashCode)));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Menu &&
          other.id == this.id &&
          other.catName == this.catName &&
          other.hasSc == this.hasSc);
}

class MenusCompanion extends UpdateCompanion<Menu> {
  final Value<int> id;
  final Value<String> catName;
  final Value<bool> hasSc;
  const MenusCompanion({
    this.id = const Value.absent(),
    this.catName = const Value.absent(),
    this.hasSc = const Value.absent(),
  });
  MenusCompanion.insert({
    this.id = const Value.absent(),
    this.catName = const Value.absent(),
    this.hasSc = const Value.absent(),
  });
  static Insertable<Menu> custom({
    Expression<int> id,
    Expression<String> catName,
    Expression<bool> hasSc,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (catName != null) 'cat_name': catName,
      if (hasSc != null) 'has_sc': hasSc,
    });
  }

  MenusCompanion copyWith(
      {Value<int> id, Value<String> catName, Value<bool> hasSc}) {
    return MenusCompanion(
      id: id ?? this.id,
      catName: catName ?? this.catName,
      hasSc: hasSc ?? this.hasSc,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (catName.present) {
      map['cat_name'] = Variable<String>(catName.value);
    }
    if (hasSc.present) {
      map['has_sc'] = Variable<bool>(hasSc.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MenusCompanion(')
          ..write('id: $id, ')
          ..write('catName: $catName, ')
          ..write('hasSc: $hasSc')
          ..write(')'))
        .toString();
  }
}

class $MenusTable extends Menus with TableInfo<$MenusTable, Menu> {
  final GeneratedDatabase _db;
  final String _alias;
  $MenusTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn(
      'id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _catNameMeta = const VerificationMeta('catName');
  GeneratedTextColumn _catName;
  @override
  GeneratedTextColumn get catName => _catName ??= _constructCatName();
  GeneratedTextColumn _constructCatName() {
    return GeneratedTextColumn(
      'cat_name',
      $tableName,
      true,
    );
  }

  final VerificationMeta _hasScMeta = const VerificationMeta('hasSc');
  GeneratedBoolColumn _hasSc;
  @override
  GeneratedBoolColumn get hasSc => _hasSc ??= _constructHasSc();
  GeneratedBoolColumn _constructHasSc() {
    return GeneratedBoolColumn(
      'has_sc',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [id, catName, hasSc];
  @override
  $MenusTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'menus';
  @override
  final String actualTableName = 'menus';
  @override
  VerificationContext validateIntegrity(Insertable<Menu> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('cat_name')) {
      context.handle(_catNameMeta,
          catName.isAcceptableOrUnknown(data['cat_name'], _catNameMeta));
    }
    if (data.containsKey('has_sc')) {
      context.handle(
          _hasScMeta, hasSc.isAcceptableOrUnknown(data['has_sc'], _hasScMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Menu map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Menu.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $MenusTable createAlias(String alias) {
    return $MenusTable(_db, alias);
  }
}

class Order extends DataClass implements Insertable<Order> {
  final int id;
  final String dishName;
  final int price;
  final int portions;
  final int noDishes;
  final int dishId;
  final DateTime time;
  Order(
      {@required this.id,
      this.dishName,
      this.price,
      this.portions,
      this.noDishes,
      this.dishId,
      this.time});
  factory Order.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return Order(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      dishName: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}dish_name']),
      price: intType.mapFromDatabaseResponse(data['${effectivePrefix}price']),
      portions:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}portions']),
      noDishes:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}no_dishes']),
      dishId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}dish_id']),
      time:
          dateTimeType.mapFromDatabaseResponse(data['${effectivePrefix}time']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || dishName != null) {
      map['dish_name'] = Variable<String>(dishName);
    }
    if (!nullToAbsent || price != null) {
      map['price'] = Variable<int>(price);
    }
    if (!nullToAbsent || portions != null) {
      map['portions'] = Variable<int>(portions);
    }
    if (!nullToAbsent || noDishes != null) {
      map['no_dishes'] = Variable<int>(noDishes);
    }
    if (!nullToAbsent || dishId != null) {
      map['dish_id'] = Variable<int>(dishId);
    }
    if (!nullToAbsent || time != null) {
      map['time'] = Variable<DateTime>(time);
    }
    return map;
  }

  OrdersCompanion toCompanion(bool nullToAbsent) {
    return OrdersCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      dishName: dishName == null && nullToAbsent
          ? const Value.absent()
          : Value(dishName),
      price:
          price == null && nullToAbsent ? const Value.absent() : Value(price),
      portions: portions == null && nullToAbsent
          ? const Value.absent()
          : Value(portions),
      noDishes: noDishes == null && nullToAbsent
          ? const Value.absent()
          : Value(noDishes),
      dishId:
          dishId == null && nullToAbsent ? const Value.absent() : Value(dishId),
      time: time == null && nullToAbsent ? const Value.absent() : Value(time),
    );
  }

  factory Order.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Order(
      id: serializer.fromJson<int>(json['id']),
      dishName: serializer.fromJson<String>(json['dishName']),
      price: serializer.fromJson<int>(json['price']),
      portions: serializer.fromJson<int>(json['portions']),
      noDishes: serializer.fromJson<int>(json['noDishes']),
      dishId: serializer.fromJson<int>(json['dishId']),
      time: serializer.fromJson<DateTime>(json['time']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'dishName': serializer.toJson<String>(dishName),
      'price': serializer.toJson<int>(price),
      'portions': serializer.toJson<int>(portions),
      'noDishes': serializer.toJson<int>(noDishes),
      'dishId': serializer.toJson<int>(dishId),
      'time': serializer.toJson<DateTime>(time),
    };
  }

  Order copyWith(
          {int id,
          String dishName,
          int price,
          int portions,
          int noDishes,
          int dishId,
          DateTime time}) =>
      Order(
        id: id ?? this.id,
        dishName: dishName ?? this.dishName,
        price: price ?? this.price,
        portions: portions ?? this.portions,
        noDishes: noDishes ?? this.noDishes,
        dishId: dishId ?? this.dishId,
        time: time ?? this.time,
      );
  @override
  String toString() {
    return (StringBuffer('Order(')
          ..write('id: $id, ')
          ..write('dishName: $dishName, ')
          ..write('price: $price, ')
          ..write('portions: $portions, ')
          ..write('noDishes: $noDishes, ')
          ..write('dishId: $dishId, ')
          ..write('time: $time')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          dishName.hashCode,
          $mrjc(
              price.hashCode,
              $mrjc(
                  portions.hashCode,
                  $mrjc(noDishes.hashCode,
                      $mrjc(dishId.hashCode, time.hashCode)))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Order &&
          other.id == this.id &&
          other.dishName == this.dishName &&
          other.price == this.price &&
          other.portions == this.portions &&
          other.noDishes == this.noDishes &&
          other.dishId == this.dishId &&
          other.time == this.time);
}

class OrdersCompanion extends UpdateCompanion<Order> {
  final Value<int> id;
  final Value<String> dishName;
  final Value<int> price;
  final Value<int> portions;
  final Value<int> noDishes;
  final Value<int> dishId;
  final Value<DateTime> time;
  const OrdersCompanion({
    this.id = const Value.absent(),
    this.dishName = const Value.absent(),
    this.price = const Value.absent(),
    this.portions = const Value.absent(),
    this.noDishes = const Value.absent(),
    this.dishId = const Value.absent(),
    this.time = const Value.absent(),
  });
  OrdersCompanion.insert({
    this.id = const Value.absent(),
    this.dishName = const Value.absent(),
    this.price = const Value.absent(),
    this.portions = const Value.absent(),
    this.noDishes = const Value.absent(),
    this.dishId = const Value.absent(),
    this.time = const Value.absent(),
  });
  static Insertable<Order> custom({
    Expression<int> id,
    Expression<String> dishName,
    Expression<int> price,
    Expression<int> portions,
    Expression<int> noDishes,
    Expression<int> dishId,
    Expression<DateTime> time,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (dishName != null) 'dish_name': dishName,
      if (price != null) 'price': price,
      if (portions != null) 'portions': portions,
      if (noDishes != null) 'no_dishes': noDishes,
      if (dishId != null) 'dish_id': dishId,
      if (time != null) 'time': time,
    });
  }

  OrdersCompanion copyWith(
      {Value<int> id,
      Value<String> dishName,
      Value<int> price,
      Value<int> portions,
      Value<int> noDishes,
      Value<int> dishId,
      Value<DateTime> time}) {
    return OrdersCompanion(
      id: id ?? this.id,
      dishName: dishName ?? this.dishName,
      price: price ?? this.price,
      portions: portions ?? this.portions,
      noDishes: noDishes ?? this.noDishes,
      dishId: dishId ?? this.dishId,
      time: time ?? this.time,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (dishName.present) {
      map['dish_name'] = Variable<String>(dishName.value);
    }
    if (price.present) {
      map['price'] = Variable<int>(price.value);
    }
    if (portions.present) {
      map['portions'] = Variable<int>(portions.value);
    }
    if (noDishes.present) {
      map['no_dishes'] = Variable<int>(noDishes.value);
    }
    if (dishId.present) {
      map['dish_id'] = Variable<int>(dishId.value);
    }
    if (time.present) {
      map['time'] = Variable<DateTime>(time.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('OrdersCompanion(')
          ..write('id: $id, ')
          ..write('dishName: $dishName, ')
          ..write('price: $price, ')
          ..write('portions: $portions, ')
          ..write('noDishes: $noDishes, ')
          ..write('dishId: $dishId, ')
          ..write('time: $time')
          ..write(')'))
        .toString();
  }
}

class $OrdersTable extends Orders with TableInfo<$OrdersTable, Order> {
  final GeneratedDatabase _db;
  final String _alias;
  $OrdersTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn(
      'id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _dishNameMeta = const VerificationMeta('dishName');
  GeneratedTextColumn _dishName;
  @override
  GeneratedTextColumn get dishName => _dishName ??= _constructDishName();
  GeneratedTextColumn _constructDishName() {
    return GeneratedTextColumn(
      'dish_name',
      $tableName,
      true,
    );
  }

  final VerificationMeta _priceMeta = const VerificationMeta('price');
  GeneratedIntColumn _price;
  @override
  GeneratedIntColumn get price => _price ??= _constructPrice();
  GeneratedIntColumn _constructPrice() {
    return GeneratedIntColumn(
      'price',
      $tableName,
      true,
    );
  }

  final VerificationMeta _portionsMeta = const VerificationMeta('portions');
  GeneratedIntColumn _portions;
  @override
  GeneratedIntColumn get portions => _portions ??= _constructPortions();
  GeneratedIntColumn _constructPortions() {
    return GeneratedIntColumn(
      'portions',
      $tableName,
      true,
    );
  }

  final VerificationMeta _noDishesMeta = const VerificationMeta('noDishes');
  GeneratedIntColumn _noDishes;
  @override
  GeneratedIntColumn get noDishes => _noDishes ??= _constructNoDishes();
  GeneratedIntColumn _constructNoDishes() {
    return GeneratedIntColumn(
      'no_dishes',
      $tableName,
      true,
    );
  }

  final VerificationMeta _dishIdMeta = const VerificationMeta('dishId');
  GeneratedIntColumn _dishId;
  @override
  GeneratedIntColumn get dishId => _dishId ??= _constructDishId();
  GeneratedIntColumn _constructDishId() {
    return GeneratedIntColumn(
      'dish_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _timeMeta = const VerificationMeta('time');
  GeneratedDateTimeColumn _time;
  @override
  GeneratedDateTimeColumn get time => _time ??= _constructTime();
  GeneratedDateTimeColumn _constructTime() {
    return GeneratedDateTimeColumn(
      'time',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [id, dishName, price, portions, noDishes, dishId, time];
  @override
  $OrdersTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'orders';
  @override
  final String actualTableName = 'orders';
  @override
  VerificationContext validateIntegrity(Insertable<Order> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('dish_name')) {
      context.handle(_dishNameMeta,
          dishName.isAcceptableOrUnknown(data['dish_name'], _dishNameMeta));
    }
    if (data.containsKey('price')) {
      context.handle(
          _priceMeta, price.isAcceptableOrUnknown(data['price'], _priceMeta));
    }
    if (data.containsKey('portions')) {
      context.handle(_portionsMeta,
          portions.isAcceptableOrUnknown(data['portions'], _portionsMeta));
    }
    if (data.containsKey('no_dishes')) {
      context.handle(_noDishesMeta,
          noDishes.isAcceptableOrUnknown(data['no_dishes'], _noDishesMeta));
    }
    if (data.containsKey('dish_id')) {
      context.handle(_dishIdMeta,
          dishId.isAcceptableOrUnknown(data['dish_id'], _dishIdMeta));
    }
    if (data.containsKey('time')) {
      context.handle(
          _timeMeta, time.isAcceptableOrUnknown(data['time'], _timeMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Order map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Order.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $OrdersTable createAlias(String alias) {
    return $OrdersTable(_db, alias);
  }
}

class SubCategory extends DataClass implements Insertable<SubCategory> {
  final int id;
  final String sCatName;
  final int catId;
  SubCategory({@required this.id, this.sCatName, this.catId});
  factory SubCategory.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return SubCategory(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      sCatName: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}s_cat_name']),
      catId: intType.mapFromDatabaseResponse(data['${effectivePrefix}cat_id']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || sCatName != null) {
      map['s_cat_name'] = Variable<String>(sCatName);
    }
    if (!nullToAbsent || catId != null) {
      map['cat_id'] = Variable<int>(catId);
    }
    return map;
  }

  SubCategorysCompanion toCompanion(bool nullToAbsent) {
    return SubCategorysCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      sCatName: sCatName == null && nullToAbsent
          ? const Value.absent()
          : Value(sCatName),
      catId:
          catId == null && nullToAbsent ? const Value.absent() : Value(catId),
    );
  }

  factory SubCategory.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return SubCategory(
      id: serializer.fromJson<int>(json['id']),
      sCatName: serializer.fromJson<String>(json['sCatName']),
      catId: serializer.fromJson<int>(json['catId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'sCatName': serializer.toJson<String>(sCatName),
      'catId': serializer.toJson<int>(catId),
    };
  }

  SubCategory copyWith({int id, String sCatName, int catId}) => SubCategory(
        id: id ?? this.id,
        sCatName: sCatName ?? this.sCatName,
        catId: catId ?? this.catId,
      );
  @override
  String toString() {
    return (StringBuffer('SubCategory(')
          ..write('id: $id, ')
          ..write('sCatName: $sCatName, ')
          ..write('catId: $catId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      $mrjf($mrjc(id.hashCode, $mrjc(sCatName.hashCode, catId.hashCode)));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is SubCategory &&
          other.id == this.id &&
          other.sCatName == this.sCatName &&
          other.catId == this.catId);
}

class SubCategorysCompanion extends UpdateCompanion<SubCategory> {
  final Value<int> id;
  final Value<String> sCatName;
  final Value<int> catId;
  const SubCategorysCompanion({
    this.id = const Value.absent(),
    this.sCatName = const Value.absent(),
    this.catId = const Value.absent(),
  });
  SubCategorysCompanion.insert({
    this.id = const Value.absent(),
    this.sCatName = const Value.absent(),
    this.catId = const Value.absent(),
  });
  static Insertable<SubCategory> custom({
    Expression<int> id,
    Expression<String> sCatName,
    Expression<int> catId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (sCatName != null) 's_cat_name': sCatName,
      if (catId != null) 'cat_id': catId,
    });
  }

  SubCategorysCompanion copyWith(
      {Value<int> id, Value<String> sCatName, Value<int> catId}) {
    return SubCategorysCompanion(
      id: id ?? this.id,
      sCatName: sCatName ?? this.sCatName,
      catId: catId ?? this.catId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (sCatName.present) {
      map['s_cat_name'] = Variable<String>(sCatName.value);
    }
    if (catId.present) {
      map['cat_id'] = Variable<int>(catId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SubCategorysCompanion(')
          ..write('id: $id, ')
          ..write('sCatName: $sCatName, ')
          ..write('catId: $catId')
          ..write(')'))
        .toString();
  }
}

class $SubCategorysTable extends SubCategorys
    with TableInfo<$SubCategorysTable, SubCategory> {
  final GeneratedDatabase _db;
  final String _alias;
  $SubCategorysTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn(
      'id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _sCatNameMeta = const VerificationMeta('sCatName');
  GeneratedTextColumn _sCatName;
  @override
  GeneratedTextColumn get sCatName => _sCatName ??= _constructSCatName();
  GeneratedTextColumn _constructSCatName() {
    return GeneratedTextColumn(
      's_cat_name',
      $tableName,
      true,
    );
  }

  final VerificationMeta _catIdMeta = const VerificationMeta('catId');
  GeneratedIntColumn _catId;
  @override
  GeneratedIntColumn get catId => _catId ??= _constructCatId();
  GeneratedIntColumn _constructCatId() {
    return GeneratedIntColumn(
      'cat_id',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [id, sCatName, catId];
  @override
  $SubCategorysTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'sub_categorys';
  @override
  final String actualTableName = 'sub_categorys';
  @override
  VerificationContext validateIntegrity(Insertable<SubCategory> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('s_cat_name')) {
      context.handle(_sCatNameMeta,
          sCatName.isAcceptableOrUnknown(data['s_cat_name'], _sCatNameMeta));
    }
    if (data.containsKey('cat_id')) {
      context.handle(
          _catIdMeta, catId.isAcceptableOrUnknown(data['cat_id'], _catIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SubCategory map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return SubCategory.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $SubCategorysTable createAlias(String alias) {
    return $SubCategorysTable(_db, alias);
  }
}

class Temporder extends DataClass implements Insertable<Temporder> {
  final int id;
  final String dishName;
  final int price;
  final int quantity;
  final int noDishes;
  final int dishId;
  Temporder(
      {@required this.id,
      this.dishName,
      this.price,
      this.quantity,
      this.noDishes,
      this.dishId});
  factory Temporder.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return Temporder(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      dishName: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}dish_name']),
      price: intType.mapFromDatabaseResponse(data['${effectivePrefix}price']),
      quantity:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}quantity']),
      noDishes:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}no_dishes']),
      dishId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}dish_id']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || dishName != null) {
      map['dish_name'] = Variable<String>(dishName);
    }
    if (!nullToAbsent || price != null) {
      map['price'] = Variable<int>(price);
    }
    if (!nullToAbsent || quantity != null) {
      map['quantity'] = Variable<int>(quantity);
    }
    if (!nullToAbsent || noDishes != null) {
      map['no_dishes'] = Variable<int>(noDishes);
    }
    if (!nullToAbsent || dishId != null) {
      map['dish_id'] = Variable<int>(dishId);
    }
    return map;
  }

  TempordersCompanion toCompanion(bool nullToAbsent) {
    return TempordersCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      dishName: dishName == null && nullToAbsent
          ? const Value.absent()
          : Value(dishName),
      price:
          price == null && nullToAbsent ? const Value.absent() : Value(price),
      quantity: quantity == null && nullToAbsent
          ? const Value.absent()
          : Value(quantity),
      noDishes: noDishes == null && nullToAbsent
          ? const Value.absent()
          : Value(noDishes),
      dishId:
          dishId == null && nullToAbsent ? const Value.absent() : Value(dishId),
    );
  }

  factory Temporder.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Temporder(
      id: serializer.fromJson<int>(json['id']),
      dishName: serializer.fromJson<String>(json['dishName']),
      price: serializer.fromJson<int>(json['price']),
      quantity: serializer.fromJson<int>(json['quantity']),
      noDishes: serializer.fromJson<int>(json['noDishes']),
      dishId: serializer.fromJson<int>(json['dishId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'dishName': serializer.toJson<String>(dishName),
      'price': serializer.toJson<int>(price),
      'quantity': serializer.toJson<int>(quantity),
      'noDishes': serializer.toJson<int>(noDishes),
      'dishId': serializer.toJson<int>(dishId),
    };
  }

  Temporder copyWith(
          {int id,
          String dishName,
          int price,
          int quantity,
          int noDishes,
          int dishId}) =>
      Temporder(
        id: id ?? this.id,
        dishName: dishName ?? this.dishName,
        price: price ?? this.price,
        quantity: quantity ?? this.quantity,
        noDishes: noDishes ?? this.noDishes,
        dishId: dishId ?? this.dishId,
      );
  @override
  String toString() {
    return (StringBuffer('Temporder(')
          ..write('id: $id, ')
          ..write('dishName: $dishName, ')
          ..write('price: $price, ')
          ..write('quantity: $quantity, ')
          ..write('noDishes: $noDishes, ')
          ..write('dishId: $dishId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          dishName.hashCode,
          $mrjc(
              price.hashCode,
              $mrjc(quantity.hashCode,
                  $mrjc(noDishes.hashCode, dishId.hashCode))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Temporder &&
          other.id == this.id &&
          other.dishName == this.dishName &&
          other.price == this.price &&
          other.quantity == this.quantity &&
          other.noDishes == this.noDishes &&
          other.dishId == this.dishId);
}

class TempordersCompanion extends UpdateCompanion<Temporder> {
  final Value<int> id;
  final Value<String> dishName;
  final Value<int> price;
  final Value<int> quantity;
  final Value<int> noDishes;
  final Value<int> dishId;
  const TempordersCompanion({
    this.id = const Value.absent(),
    this.dishName = const Value.absent(),
    this.price = const Value.absent(),
    this.quantity = const Value.absent(),
    this.noDishes = const Value.absent(),
    this.dishId = const Value.absent(),
  });
  TempordersCompanion.insert({
    this.id = const Value.absent(),
    this.dishName = const Value.absent(),
    this.price = const Value.absent(),
    this.quantity = const Value.absent(),
    this.noDishes = const Value.absent(),
    this.dishId = const Value.absent(),
  });
  static Insertable<Temporder> custom({
    Expression<int> id,
    Expression<String> dishName,
    Expression<int> price,
    Expression<int> quantity,
    Expression<int> noDishes,
    Expression<int> dishId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (dishName != null) 'dish_name': dishName,
      if (price != null) 'price': price,
      if (quantity != null) 'quantity': quantity,
      if (noDishes != null) 'no_dishes': noDishes,
      if (dishId != null) 'dish_id': dishId,
    });
  }

  TempordersCompanion copyWith(
      {Value<int> id,
      Value<String> dishName,
      Value<int> price,
      Value<int> quantity,
      Value<int> noDishes,
      Value<int> dishId}) {
    return TempordersCompanion(
      id: id ?? this.id,
      dishName: dishName ?? this.dishName,
      price: price ?? this.price,
      quantity: quantity ?? this.quantity,
      noDishes: noDishes ?? this.noDishes,
      dishId: dishId ?? this.dishId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (dishName.present) {
      map['dish_name'] = Variable<String>(dishName.value);
    }
    if (price.present) {
      map['price'] = Variable<int>(price.value);
    }
    if (quantity.present) {
      map['quantity'] = Variable<int>(quantity.value);
    }
    if (noDishes.present) {
      map['no_dishes'] = Variable<int>(noDishes.value);
    }
    if (dishId.present) {
      map['dish_id'] = Variable<int>(dishId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TempordersCompanion(')
          ..write('id: $id, ')
          ..write('dishName: $dishName, ')
          ..write('price: $price, ')
          ..write('quantity: $quantity, ')
          ..write('noDishes: $noDishes, ')
          ..write('dishId: $dishId')
          ..write(')'))
        .toString();
  }
}

class $TempordersTable extends Temporders
    with TableInfo<$TempordersTable, Temporder> {
  final GeneratedDatabase _db;
  final String _alias;
  $TempordersTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn(
      'id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _dishNameMeta = const VerificationMeta('dishName');
  GeneratedTextColumn _dishName;
  @override
  GeneratedTextColumn get dishName => _dishName ??= _constructDishName();
  GeneratedTextColumn _constructDishName() {
    return GeneratedTextColumn(
      'dish_name',
      $tableName,
      true,
    );
  }

  final VerificationMeta _priceMeta = const VerificationMeta('price');
  GeneratedIntColumn _price;
  @override
  GeneratedIntColumn get price => _price ??= _constructPrice();
  GeneratedIntColumn _constructPrice() {
    return GeneratedIntColumn(
      'price',
      $tableName,
      true,
    );
  }

  final VerificationMeta _quantityMeta = const VerificationMeta('quantity');
  GeneratedIntColumn _quantity;
  @override
  GeneratedIntColumn get quantity => _quantity ??= _constructQuantity();
  GeneratedIntColumn _constructQuantity() {
    return GeneratedIntColumn(
      'quantity',
      $tableName,
      true,
    );
  }

  final VerificationMeta _noDishesMeta = const VerificationMeta('noDishes');
  GeneratedIntColumn _noDishes;
  @override
  GeneratedIntColumn get noDishes => _noDishes ??= _constructNoDishes();
  GeneratedIntColumn _constructNoDishes() {
    return GeneratedIntColumn(
      'no_dishes',
      $tableName,
      true,
    );
  }

  final VerificationMeta _dishIdMeta = const VerificationMeta('dishId');
  GeneratedIntColumn _dishId;
  @override
  GeneratedIntColumn get dishId => _dishId ??= _constructDishId();
  GeneratedIntColumn _constructDishId() {
    return GeneratedIntColumn(
      'dish_id',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [id, dishName, price, quantity, noDishes, dishId];
  @override
  $TempordersTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'temporders';
  @override
  final String actualTableName = 'temporders';
  @override
  VerificationContext validateIntegrity(Insertable<Temporder> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('dish_name')) {
      context.handle(_dishNameMeta,
          dishName.isAcceptableOrUnknown(data['dish_name'], _dishNameMeta));
    }
    if (data.containsKey('price')) {
      context.handle(
          _priceMeta, price.isAcceptableOrUnknown(data['price'], _priceMeta));
    }
    if (data.containsKey('quantity')) {
      context.handle(_quantityMeta,
          quantity.isAcceptableOrUnknown(data['quantity'], _quantityMeta));
    }
    if (data.containsKey('no_dishes')) {
      context.handle(_noDishesMeta,
          noDishes.isAcceptableOrUnknown(data['no_dishes'], _noDishesMeta));
    }
    if (data.containsKey('dish_id')) {
      context.handle(_dishIdMeta,
          dishId.isAcceptableOrUnknown(data['dish_id'], _dishIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Temporder map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Temporder.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $TempordersTable createAlias(String alias) {
    return $TempordersTable(_db, alias);
  }
}

class AutoFetch extends DataClass implements Insertable<AutoFetch> {
  final bool autoFetch;
  AutoFetch({@required this.autoFetch});
  factory AutoFetch.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final boolType = db.typeSystem.forDartType<bool>();
    return AutoFetch(
      autoFetch: boolType
          .mapFromDatabaseResponse(data['${effectivePrefix}auto_fetch']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || autoFetch != null) {
      map['auto_fetch'] = Variable<bool>(autoFetch);
    }
    return map;
  }

  AutoFetchsCompanion toCompanion(bool nullToAbsent) {
    return AutoFetchsCompanion(
      autoFetch: autoFetch == null && nullToAbsent
          ? const Value.absent()
          : Value(autoFetch),
    );
  }

  factory AutoFetch.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return AutoFetch(
      autoFetch: serializer.fromJson<bool>(json['autoFetch']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'autoFetch': serializer.toJson<bool>(autoFetch),
    };
  }

  AutoFetch copyWith({bool autoFetch}) => AutoFetch(
        autoFetch: autoFetch ?? this.autoFetch,
      );
  @override
  String toString() {
    return (StringBuffer('AutoFetch(')
          ..write('autoFetch: $autoFetch')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf(autoFetch.hashCode);
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is AutoFetch && other.autoFetch == this.autoFetch);
}

class AutoFetchsCompanion extends UpdateCompanion<AutoFetch> {
  final Value<bool> autoFetch;
  const AutoFetchsCompanion({
    this.autoFetch = const Value.absent(),
  });
  AutoFetchsCompanion.insert({
    this.autoFetch = const Value.absent(),
  });
  static Insertable<AutoFetch> custom({
    Expression<bool> autoFetch,
  }) {
    return RawValuesInsertable({
      if (autoFetch != null) 'auto_fetch': autoFetch,
    });
  }

  AutoFetchsCompanion copyWith({Value<bool> autoFetch}) {
    return AutoFetchsCompanion(
      autoFetch: autoFetch ?? this.autoFetch,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (autoFetch.present) {
      map['auto_fetch'] = Variable<bool>(autoFetch.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AutoFetchsCompanion(')
          ..write('autoFetch: $autoFetch')
          ..write(')'))
        .toString();
  }
}

class $AutoFetchsTable extends AutoFetchs
    with TableInfo<$AutoFetchsTable, AutoFetch> {
  final GeneratedDatabase _db;
  final String _alias;
  $AutoFetchsTable(this._db, [this._alias]);
  final VerificationMeta _autoFetchMeta = const VerificationMeta('autoFetch');
  GeneratedBoolColumn _autoFetch;
  @override
  GeneratedBoolColumn get autoFetch => _autoFetch ??= _constructAutoFetch();
  GeneratedBoolColumn _constructAutoFetch() {
    return GeneratedBoolColumn('auto_fetch', $tableName, false,
        defaultValue: Constant(false));
  }

  @override
  List<GeneratedColumn> get $columns => [autoFetch];
  @override
  $AutoFetchsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'auto_fetchs';
  @override
  final String actualTableName = 'auto_fetchs';
  @override
  VerificationContext validateIntegrity(Insertable<AutoFetch> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('auto_fetch')) {
      context.handle(_autoFetchMeta,
          autoFetch.isAcceptableOrUnknown(data['auto_fetch'], _autoFetchMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  AutoFetch map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return AutoFetch.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $AutoFetchsTable createAlias(String alias) {
    return $AutoFetchsTable(_db, alias);
  }
}

class Photo extends DataClass implements Insertable<Photo> {
  final int id;
  final String image;
  Photo({@required this.id, this.image});
  factory Photo.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return Photo(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      image:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}image']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || image != null) {
      map['image'] = Variable<String>(image);
    }
    return map;
  }

  PhotosCompanion toCompanion(bool nullToAbsent) {
    return PhotosCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      image:
          image == null && nullToAbsent ? const Value.absent() : Value(image),
    );
  }

  factory Photo.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Photo(
      id: serializer.fromJson<int>(json['id']),
      image: serializer.fromJson<String>(json['image']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'image': serializer.toJson<String>(image),
    };
  }

  Photo copyWith({int id, String image}) => Photo(
        id: id ?? this.id,
        image: image ?? this.image,
      );
  @override
  String toString() {
    return (StringBuffer('Photo(')
          ..write('id: $id, ')
          ..write('image: $image')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(id.hashCode, image.hashCode));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Photo && other.id == this.id && other.image == this.image);
}

class PhotosCompanion extends UpdateCompanion<Photo> {
  final Value<int> id;
  final Value<String> image;
  const PhotosCompanion({
    this.id = const Value.absent(),
    this.image = const Value.absent(),
  });
  PhotosCompanion.insert({
    this.id = const Value.absent(),
    this.image = const Value.absent(),
  });
  static Insertable<Photo> custom({
    Expression<int> id,
    Expression<String> image,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (image != null) 'image': image,
    });
  }

  PhotosCompanion copyWith({Value<int> id, Value<String> image}) {
    return PhotosCompanion(
      id: id ?? this.id,
      image: image ?? this.image,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (image.present) {
      map['image'] = Variable<String>(image.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PhotosCompanion(')
          ..write('id: $id, ')
          ..write('image: $image')
          ..write(')'))
        .toString();
  }
}

class $PhotosTable extends Photos with TableInfo<$PhotosTable, Photo> {
  final GeneratedDatabase _db;
  final String _alias;
  $PhotosTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn(
      'id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _imageMeta = const VerificationMeta('image');
  GeneratedTextColumn _image;
  @override
  GeneratedTextColumn get image => _image ??= _constructImage();
  GeneratedTextColumn _constructImage() {
    return GeneratedTextColumn(
      'image',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [id, image];
  @override
  $PhotosTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'photos';
  @override
  final String actualTableName = 'photos';
  @override
  VerificationContext validateIntegrity(Insertable<Photo> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('image')) {
      context.handle(
          _imageMeta, image.isAcceptableOrUnknown(data['image'], _imageMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Photo map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Photo.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $PhotosTable createAlias(String alias) {
    return $PhotosTable(_db, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $DishsTable _dishs;
  $DishsTable get dishs => _dishs ??= $DishsTable(this);
  $MenusTable _menus;
  $MenusTable get menus => _menus ??= $MenusTable(this);
  $OrdersTable _orders;
  $OrdersTable get orders => _orders ??= $OrdersTable(this);
  $SubCategorysTable _subCategorys;
  $SubCategorysTable get subCategorys =>
      _subCategorys ??= $SubCategorysTable(this);
  $TempordersTable _temporders;
  $TempordersTable get temporders => _temporders ??= $TempordersTable(this);
  $AutoFetchsTable _autoFetchs;
  $AutoFetchsTable get autoFetchs => _autoFetchs ??= $AutoFetchsTable(this);
  $PhotosTable _photos;
  $PhotosTable get photos => _photos ??= $PhotosTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [dishs, menus, orders, subCategorys, temporders, autoFetchs, photos];
}
