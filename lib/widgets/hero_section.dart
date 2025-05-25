import 'package:flutter/material.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);
    final screenWidth = mq.size.width;
    final screenHeight = mq.size.height;

    const baseWidth = 375.0;
    const baseHeight = 812.0;

    // Scale factors
    final scaleW = screenWidth / baseWidth;
    final scaleH = screenHeight / baseHeight;

    return Container(
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(
        16 * scaleW,
        55 * scaleH,
        16 * scaleW,
        16 * scaleH,
      ),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFFB1003A), Color(0xFF5C002E)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(24),
          bottomRight: Radius.circular(24),
        ),
      ),
      child: Column(
        children: [
          // Search + Profile row
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  height: 50 * scaleH,
                  padding: EdgeInsets.symmetric(horizontal: 12 * scaleW),
                  decoration: BoxDecoration(
                    color: const Color(0xFF2D2A3A),
                    borderRadius: BorderRadius.circular(10 * scaleW),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.search, color: Colors.white60, size: 18 * scaleW),
                      SizedBox(width: 8 * scaleW),
                      Expanded(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Search “Punjabi Lyrics”',
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontFamily: 'Syne',
                              color: Colors.white60,
                              fontSize: 13 * scaleW,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Icon(Icons.mic, color: Colors.white60, size: 18 * scaleW),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 12 * scaleW),
              Container(
                width: 40 * scaleW,
                height: 40 * scaleW,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: const Color(0xFFE0D8F8),
                ),
                child: Icon(
                  Icons.person_outline,
                  size: 24 * scaleW,
                  color: const Color(0xFF7A3CFF),
                ),
              ),
            ],
          ),

          SizedBox(height: 30 * scaleH),

          // Text Section
          Text(
            'Claim your',
            style: TextStyle(
              fontFamily: 'Syne',
              color: Colors.white,
              fontSize: 16 * scaleW,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 4 * scaleH),
          Text(
            'Free Demo',
            style: TextStyle(
              color: Colors.white,
              fontSize: 45 * scaleW,
              fontFamily: 'Lobster',
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 4 * scaleH),
          Text(
            'for custom Music Production',
            style: TextStyle(
              fontFamily: 'Syne',
              color: Colors.white70,
              fontSize: 17 * scaleW,
              fontWeight: FontWeight.w400,
            ),
          ),

          SizedBox(height: 40 * scaleH),

          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: Colors.black,
              padding: EdgeInsets.symmetric(
                horizontal: 24 * scaleW,
                vertical: 12 * scaleH,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24 * scaleW),
              ),
            ),
            child: Text(
              'Book Now',
              style: TextStyle(fontSize: 16 * scaleW, fontWeight: FontWeight.w500),
            ),
          ),

          SizedBox(height: 30 * scaleH),

          // Vinyl & Keyboard decorations
          SizedBox(
            height: 10 * scaleH,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  left: -screenWidth * 0.12,
                  bottom: 0,
                  child: Transform.rotate(
                    angle: -0.2,
                    child: Image.asset(
                      'assets/images/Vinyl.png',
                      width: 135 * scaleW,
                    ),
                  ),
                ),
                Positioned(
                  right: -screenWidth * 0.15,
                  bottom: 0,
                  child: Transform.rotate(
                    angle: 0.2,
                    child: Image.asset(
                      'assets/images/Keyboard.png',
                      width: 150 * scaleW,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
