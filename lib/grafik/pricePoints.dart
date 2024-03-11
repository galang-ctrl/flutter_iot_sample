import 'package:collection/collection.dart';
class PricePoint {
  final double x;
  final double y;
  PricePoint({required this.x, required this.y});
}
List<PricePoint> get pricePoints {
  final data = <double> [12.30 ,2,3,1,12];
  return data
      .mapIndexed(
      ((index, element) => PricePoint(x: index.toDouble(), y: element)))
      .toList();
}