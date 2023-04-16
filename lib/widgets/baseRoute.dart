import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BaseRoute extends StatelessWidget {
  final dynamic a;
  final dynamic o;
  final String? r;

  BaseRoute({this.a , this.o ,  this.r});

  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();

  }

    Future addAnalytics() async {
      a.setCurrentScreen(screenName : r);
    }
}