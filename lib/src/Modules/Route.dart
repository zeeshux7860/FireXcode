import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firexcode/src/Modules/SizeTransition.dart';
import 'package:firexcode/src/Modules/Trasition/ExitRoute.dart';
import 'package:firexcode/src/Modules/Trasition/FadeRoute.dart';
import 'package:firexcode/src/Modules/Trasition/RotationRoute.dart';
import 'package:firexcode/src/Modules/Trasition/ScaleRoute.dart';
import 'package:firexcode/src/Modules/Trasition/SlideRoute.dart';

class XRoutePage {
  final BuildContext context;
  final Widget child;

  XRoutePage(this.context, this.child);

  sizeTransitionPush() {
    Navigator.push(context, XSizeRoute(page: child));
  }

  cupertinoPagePush() {
    Navigator.push(context, CupertinoPageRoute(builder: (context) => child));
  }

  materialPagePush() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => child));
  }

  slideRightPush() {
    Navigator.push(context, XRightRoute(page: child));
  }

  slideLeftPush() {
    Navigator.push(context, XLeftRoute(page: child));
  }

  slideTopPush() {
    Navigator.push(context, XTopRoute(page: child));
  }

  slideLBottomPush() {
    Navigator.push(context, XBottomRoute(page: child));
  }

  scalePush() {
    Navigator.push(context, XScaleRoute(page: child));
  }

  rotationPush() {
    Navigator.push(context, XRotationRoute(page: child));
  }

  fadePush() {
    Navigator.push(context, XFadeRoute(page: child));
  }

  exitPush(exitPageChild) {
    Navigator.push(
        context, XEnterExitRoute(enterPage: child, exitPage: exitPageChild));
    print("20");
  }
}
