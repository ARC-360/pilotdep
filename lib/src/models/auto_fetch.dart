 
import 'package:moor/moor.dart';

class AutoFetchs extends Table {
 
 BoolColumn get autoFetch => boolean().withDefault(Constant(false))();
 // BoolColumn get autoFetch => boolean().withDefault(Constant(true))();

}