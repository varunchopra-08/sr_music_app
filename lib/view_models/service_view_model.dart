import 'package:flutter/material.dart';
import '../models/service_model.dart';

import '../repository/service_repository.dart';

class ServiceViewModel extends ChangeNotifier {
  final ServiceRepository _repository = ServiceRepository();

  List<ServiceModel> _services = [];
  List<ServiceModel> get services => _services;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  String? _error;
  String? get error => _error;

  Future<void> loadServices() async {
    _isLoading = true;
    notifyListeners();

    try {
      _services = await _repository.fetchServices();
      _error = null;
    } catch (e) {
      _error = e.toString();
    }

    _isLoading = false;
    notifyListeners();
  }
}
