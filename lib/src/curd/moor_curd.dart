import 'dart:io';

import 'package:arc360menu/src/models/auto_fetch.dart';
import 'package:arc360menu/src/models/dish.dart';
import 'package:arc360menu/src/models/image.dart';
import 'package:arc360menu/src/models/menu.dart';
import 'package:arc360menu/src/models/order.dart';
import 'package:arc360menu/src/models/subcategory.dart';
import 'package:arc360menu/src/models/temporder.dart';
import 'package:moor_flutter/moor_flutter.dart';

import 'package:moor/moor.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart' as paths;
 
part 'moor_curd.g.dart';

@UseMoor(tables: [Dishs, Menus, Orders, SubCategorys,Temporders,AutoFetchs,Photos])
class AppDatabase extends _$AppDatabase {
  static AppDatabase _db = _constructDb();

  factory AppDatabase() {
    return _db;
  }

  AppDatabase._internal(QueryExecutor e) : super(e);

  @override
  int get schemaVersion => 3;

  static AppDatabase _constructDb({bool logStatements8 = false}) {
    final executor = LazyDatabase(() async {
      final dataDir = await paths.getApplicationDocumentsDirectory();
      final dbFile = File(p.join(dataDir.path, 'db.sqlite'));
      return FlutterQueryExecutor.inDatabaseFolder(
          path: dbFile.path, logStatements: true);
    });
    return AppDatabase._internal(executor);
  }
}
