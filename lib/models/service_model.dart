import 'package:flutter/material.dart';

class ServiceModel {
  final String title;
  final String description;
  final String icon;
  final String bgImage;
  final Alignment bgAlignment;

  ServiceModel({
    required this.title,
    required this.description,
    required this.icon,
    required this.bgImage,
    this.bgAlignment = Alignment.center,
  });

  factory ServiceModel.fromMap(Map<String, dynamic> map) {
    return ServiceModel(
      title: map['title'] ?? '',
      description: map['description'] ?? '',
      icon: map['icon'] ?? '',
      bgImage: map['bgImage'] ?? '',
      bgAlignment: _parseAlignment(map['bgAlignment']),
    );
  }

  static Alignment _parseAlignment(String? alignmentStr) {
    switch (alignmentStr) {
      case 'topLeft':
        return Alignment.topLeft;
      case 'topRight':
        return Alignment.topRight;
      case 'bottomLeft':
        return Alignment.bottomLeft;
      case 'bottomRight':
        return Alignment.bottomRight;
      case 'topCenter':
        return Alignment.topCenter;
      case 'bottomCenter':
        return Alignment.bottomCenter;
      case 'centerRight':
        return Alignment.centerRight;
      case 'centerLeft':
        return Alignment.centerLeft;
      default:
        return Alignment.center;
    }
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'description': description,
      'icon': icon,
      'bgImage': bgImage,
      'bgAlignment': _alignmentToString(bgAlignment),
    };
  }

  static String _alignmentToString(Alignment alignment) {
    if (alignment == Alignment.topLeft) return 'topLeft';
    if (alignment == Alignment.topRight) return 'topRight';
    if (alignment == Alignment.bottomLeft) return 'bottomLeft';
    if (alignment == Alignment.bottomRight) return 'bottomRight';
    if (alignment == Alignment.topCenter) return 'topCenter';
    if (alignment == Alignment.bottomCenter) return 'bottomCenter';
    if (alignment == Alignment.centerRight) return 'centerRight';
    if (alignment == Alignment.centerLeft) return 'centerLeft';
    return 'center';
  }
}
