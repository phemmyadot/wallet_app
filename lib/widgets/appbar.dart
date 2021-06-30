import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:livecom/utils/app_colors.dart';

class Appbar extends StatelessWidget implements PreferredSizeWidget {
  const Appbar({Key key}) : super(key: key);
  @override
  Size get preferredSize => Size.fromHeight(100);
  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: preferredSize,
      child: AppBar(
        automaticallyImplyLeading: false,
        flexibleSpace: Container(
          height: 100,
          color: AppColors.background,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 40,
                  width: 40,
                  child: Neumorphic(
                      style: NeumorphicStyle(
                          shape: NeumorphicShape.convex,
                          boxShape: NeumorphicBoxShape.roundRect(
                              BorderRadius.circular(40)),
                          depth: 20,
                          intensity: 0.9,
                          surfaceIntensity: 0.4,
                          shadowDarkColor: AppColors.background,
                          shadowLightColor: AppColors.background,
                          lightSource: LightSource.top,
                          shadowLightColorEmboss: AppColors.background,
                          shadowDarkColorEmboss: AppColors.background,
                          color: AppColors.background),
                      child: Stack(
                        children: [
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xff505d75),
                                  offset: Offset(0.0, 1.0),
                                  blurRadius: 10.0,
                                ),
                              ],
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  // Color(0xff505D75),
                                  // Color(0xff181E28),
                                  Color(0xff181E28).withOpacity(0.36),
                                  Color(0xff181E28).withOpacity(0.56),
                                  Color(0xff181E28).withOpacity(0.96),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            top: 12,
                            left: 10,
                            child: Container(
                                margin: EdgeInsets.only(left: 5),
                                child: Image.asset(
                                  'assets/images/back.png',
                                  fit: BoxFit.contain,
                                )),
                          ),
                        ],
                      )),
                ),
                Text(
                  'LiveWallet',
                  style: TextStyle(
                    color: Color(0xffD7DDE8),
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 40,
                  width: 40,
                )
              ],
            ),
          ),
        ),
        centerTitle: true,
        elevation: 0,
        bottomOpacity: 0.0,
      ),
    );
  }
}
