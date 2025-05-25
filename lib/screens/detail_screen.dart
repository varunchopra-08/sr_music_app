import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/service_model.dart';

class ServiceDetailScreen extends StatelessWidget {
  const ServiceDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final service = ModalRoute.of(context)!.settings.arguments as ServiceModel;
    return Scaffold(
      appBar: AppBar(title: const Text("Service Details")),
      body: Center(
        child: Text(
          'You tapped on: ${service.title}',
          style: const TextStyle(fontSize: 20 , color: Colors.white),
        ),
      ),
    );
  }
}
