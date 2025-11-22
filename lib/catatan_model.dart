import 'package:latlong2/latlong.dart';

class CatatanModel {
  final LatLng position;
  final String note;
  final String address;
  final String type;

  CatatanModel({
    required this.position,
    required this.note,
    required this.address,
    required this.type,
  });
  

  // no1
  Map<String, dynamic> toJson() {
    return {
      'lat': position.latitude,
      'long': position.longitude,
      'note': note,
      'address': address,
      'type': type,
    };
  }

  factory CatatanModel.fromJson(Map<String, dynamic> json) {
    return CatatanModel(
      position: LatLng(json['latitude'], json['longitude']), 
      note:json['note'], 
      address: json['address'],
      type: json['type'],
      );
  }
}