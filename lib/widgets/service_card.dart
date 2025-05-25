import 'dart:ui';
import 'package:flutter/material.dart';
import '../models/service_model.dart';

class ServiceCard extends StatelessWidget {
  final ServiceModel service;
  final VoidCallback onTap;

  const ServiceCard({
    super.key,
    required this.service,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);
    final screenWidth = mq.size.width;
    final screenHeight = mq.size.height;


    const baseWidth = 375.0;
    const baseHeight = 812.0;


    final scaleW = screenWidth / baseWidth;
    final scaleH = screenHeight / baseHeight;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16 * scaleW, vertical: 8 * scaleH),
      child: GestureDetector(
        onTap: onTap,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(24 * scaleW),
          child: Stack(
            children: [
              // Background Image with dark overlay
              Positioned.fill(
                child: Image.asset(
                  service.bgImage,
                  fit: BoxFit.cover,
                  alignment: service.bgAlignment,
                  color: const Color.fromRGBO(21, 21, 25, 0.87),
                  colorBlendMode: BlendMode.srcATop,
                ),
              ),

              // Content layer
              Container(
                height: 72 * scaleH,
                padding: EdgeInsets.symmetric(horizontal: 16 * scaleW),
                child: Row(
                  children: [
                    // Icon container
                    Container(
                      width: 48 * scaleW,
                      height: 48 * scaleW,

                      child: Center(
                        child: Image.asset(
                          service.icon,
                          width: 48 * scaleW,
                          height: 48 * scaleW,
                        ),
                      ),
                    ),
                    SizedBox(width: 16 * scaleW),

                    // Texts
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            service.title,
                            style: TextStyle(
                              fontFamily: 'Syne',
                              color: Colors.white,
                              fontSize: 16 * scaleW,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 4 * scaleH),
                          Text(
                            service.description,
                            style: TextStyle(
                              fontFamily: 'Syne',
                              color: Colors.white70,
                              fontSize: 14 * scaleW,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Arrow
                    Icon(
                      Icons.arrow_right,
                      size: 33 * scaleW,
                      color: Colors.white70,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
