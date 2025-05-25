import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../view_models/service_view_model.dart';
import '../widgets/hero_section.dart';
import '../widgets/service_card.dart';
import '../widgets/bottomNavBar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<ServiceViewModel>(context, listen: false).loadServices();
    });
  }

  @override
  Widget build(BuildContext context) {
    final serviceViewModel = Provider.of<ServiceViewModel>(context);

    return Scaffold(
      backgroundColor: Colors.black,
      body: SelectionArea(
        child: SingleChildScrollView(

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HeroSection(),
              const SizedBox(height: 30),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Center(
                  child: Text(
                    'Hire hand-picked Pros for popular music services',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white70,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              if (serviceViewModel.isLoading)
                const Center(child: CircularProgressIndicator())
              else if (serviceViewModel.error != null)
                Center(
                  child: Text(
                    serviceViewModel.error!,
                    style: const TextStyle(color: Colors.red),
                  ),
                )
              else
                Column(
                  children: serviceViewModel.services.map((service) {
                    return ServiceCard(
                      service: service,
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          '/details',
                          arguments: service,
                        );
                      },
                    );
                  }).toList(),
                ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
            //  handle navigation here
          });
        },
      ),
    );
  }
}
