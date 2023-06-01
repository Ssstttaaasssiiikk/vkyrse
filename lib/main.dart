import 'package:flutter/material.dart';
import 'package:vkyrse/login/login.dart';

void main() => runApp(MaterialApp(initialRoute: '/', routes: {
      '/': (context) => const Login(),
    }));
