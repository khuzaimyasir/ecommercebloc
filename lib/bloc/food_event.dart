// ignore: import_of_legacy_library_into_null_safe
import 'package:equatable/equatable.dart';

abstract class FoodEvent extends Equatable {}

class FetchFoodEvent extends FoodEvent {
  @override
  List<Object> get props => [];
}
