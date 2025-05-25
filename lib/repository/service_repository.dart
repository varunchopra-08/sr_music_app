import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/service_model.dart';

class ServiceRepository {
  final _serviceRef = FirebaseFirestore.instance.collection('services');

  Future<List<ServiceModel>> fetchServices() async {
    final snapshot = await _serviceRef.get();
    return snapshot.docs
        .map((doc) => ServiceModel.fromMap(doc.data()))
        .toList();
  }
}
