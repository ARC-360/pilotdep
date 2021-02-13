import 'package:arc360menu/src/curd/moor_curd.dart';
import 'package:arc360menu/src/models/image.dart';
import 'package:moor_flutter/moor_flutter.dart';

part 'photos_curd.g.dart';

@UseDao(
  tables: [Photos],
)
class PhotosDao extends DatabaseAccessor<AppDatabase> with _$PhotosDaoMixin {
  final AppDatabase db;
  PhotosDao(this.db) : super(db);
  
 Future insertPhoto(Photo photo) => into(photos).insert(photo);
  Future<List<Photo>> getAllIPhotos() {
    return (select(db.photos).get());
    
  }
  Future deleteAllPhotos() =>delete(photos).go();

}
