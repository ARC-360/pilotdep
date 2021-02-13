

import 'package:arc360menu/src/models/menu.dart';
import 'package:moor/moor.dart';

import '../moor_curd.dart';

part 'menu_curd.g.dart';

@UseDao(
  tables: [Menus],
)
class  MenuDao extends DatabaseAccessor<AppDatabase> with _$MenuDaoMixin {
  final AppDatabase db;

  MenuDao(this.db) : super(db);
  Future updateMenu(Menu menu) => update(menus).replace(menu);
  Future insertMenu(Menu menu) => into(menus).insert(menu);
  Future deleteMenu(Menu menu) => delete(menus).delete(menu);
   Future deleteAllMenu() =>delete(menus).go();
  Stream<List<Menu>> watchAllIMenu() {
    return (select(db.menus).watch());
  }
  Future<List<Menu>> getAllIMenu() {
    return (select(db.menus).get());
  }
}