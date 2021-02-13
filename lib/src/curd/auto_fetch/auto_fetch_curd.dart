
import 'package:arc360menu/src/models/auto_fetch.dart';
 
import 'package:moor/moor.dart';

import '../moor_curd.dart';

part 'auto_fetch_curd.g.dart';

@UseDao(
  tables: [AutoFetchs],
)
class AutoFetchDao extends DatabaseAccessor<AppDatabase> with _$AutoFetchDaoMixin {
  final AppDatabase db;

  AutoFetchDao(this.db) : super(db);
  Future updateAutoFetch(AutoFetch autoFetch) => update(autoFetchs).replace(autoFetch);
  Stream<List<AutoFetch>> getAllAutoFetch() {
    return (select(db.autoFetchs).watch());
  }
}