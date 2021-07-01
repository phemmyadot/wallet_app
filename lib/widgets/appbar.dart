import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class LCAppbar extends StatelessWidget implements PreferredSizeWidget {
  const LCAppbar({Key key}) : super(key: key);
  @override
  Size get preferredSize => Size.fromHeight(100);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          "assets/images/account_icon.png",
          fit: BoxFit.cover,
          width: 30.0,
          height: 30.0,
          colorBlendMode: BlendMode.dstATop,
        ),
        Row(
          children: [
            Image.asset(
              "assets/images/search.png",
              fit: BoxFit.cover,
              width: 18.5,
              height: 18.5,
              colorBlendMode: BlendMode.dstATop,
            ),
            SizedBox(width: 18.07),
            Image.asset(
              "assets/images/notification.png",
              fit: BoxFit.cover,
              width: 15.18,
              height: 18.5,
              colorBlendMode: BlendMode.dstATop,
            ),
            SizedBox(width: 17.21),
            Image.asset(
              "assets/images/cart.png",
              fit: BoxFit.cover,
              width: 19.9,
              height: 18.5,
              colorBlendMode: BlendMode.dstATop,
            ),
          ],
        )
      ],
    );
    //  PreferredSize(
    //   preferredSize: preferredSize,
    //   child: AppBar(
    //     automaticallyImplyLeading: false,
    //     flexibleSpace: Container(
    //       height: 100,
    //       color: AppColors.primary,
    //       child: Padding(
    //         padding: const EdgeInsets.all(20.0),
    //         child: Row(
    //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //           crossAxisAlignment: CrossAxisAlignment.center,
    //           children: <Widget>[
    //             SizedBox(
    //               height: 40,
    //               width: 40,
    //               child: Neumorphic(
    //                   style: NeumorphicStyle(
    //                       shape: NeumorphicShape.convex,
    //                       boxShape: NeumorphicBoxShape.roundRect(
    //                           BorderRadius.circular(40)),
    //                       depth: 20,
    //                       intensity: 0.9,
    //                       surfaceIntensity: 0.4,
    //                       shadowDarkColor: AppColors.primary,
    //                       shadowLightColor: AppColors.primary,
    //                       lightSource: LightSource.top,
    //                       shadowLightColorEmboss: AppColors.primary,
    //                       shadowDarkColorEmboss: AppColors.primary,
    //                       color: AppColors.primary),
    //                   child: Stack(
    //                     children: [
    //                       Container(
    //                         width: double.infinity,
    //                         decoration: BoxDecoration(
    //                           boxShadow: [
    //                             BoxShadow(
    //                               color: Color(0xff505d75),
    //                               offset: Offset(0.0, 1.0),
    //                               blurRadius: 10.0,
    //                             ),
    //                           ],
    //                           gradient: LinearGradient(
    //                             begin: Alignment.topLeft,
    //                             end: Alignment.bottomRight,
    //                             colors: [
    //                               // Color(0xff505D75),
    //                               // Color(0xff181E28),
    //                               Color(0xff181E28).withOpacity(0.36),
    //                               Color(0xff181E28).withOpacity(0.56),
    //                               Color(0xff181E28).withOpacity(0.96),
    //                             ],
    //                           ),
    //                         ),
    //                       ),
    //                       Positioned(
    //                         top: 12,
    //                         left: 10,
    //                         child: Container(
    //                             margin: EdgeInsets.only(left: 5),
    //                             child: Image.asset(
    //                               'assets/images/back.png',
    //                               fit: BoxFit.contain,
    //                             )),
    //                       ),
    //                     ],
    //                   )),
    //             ),
    //             Text(
    //               'LiveWallet',
    //               style: TextStyle(
    //                 color: Color(0xffD7DDE8),
    //                 fontSize: 20,
    //                 fontWeight: FontWeight.w600,
    //               ),
    //             ),
    //             SizedBox(
    //               height: 40,
    //               width: 40,
    //             )
    //           ],
    //         ),
    //       ),
    //     ),
    //     centerTitle: true,
    //     elevation: 0,
    //     bottomOpacity: 0.0,
    //   ),
    // );
  }
}
