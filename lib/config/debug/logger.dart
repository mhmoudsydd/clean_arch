import 'package:flutter/material.dart';

extension OB on Object {
  // Green Color Success or Event
  get debug => debugPrint('✔️ \x1B[32m${toString()}\x1B[0m');
  // Yellow Color Warning
  get warning => debugPrint('📍 \x1B[33m${toString()}\x1B[0m');
  // Red Color Error
  get error => debugPrint('❌ \x1B[31m${toString()}\x1B[0m');
  // Purple color for testing info
  get info => debugPrint('\x1B[35m${toString()}\x1B[0m');

  get wtf => debugPrint('🖕🏼 \x1B[31m${toString()}\x1B[0m');
}

extension OdNull on Object? {
  // Green Color Success or Event
  get debug => debugPrint('✔️ \x1B[32m${toString()}\x1B[0m');
  // Yellow Color Warning
  get warning => debugPrint('📍 \x1B[33m${toString()}\x1B[0m');
  // Red Color Error
  get error => debugPrint('❌ \x1B[31m${toString()}\x1B[0m');
  // Purple color for testing info
  get info => debugPrint('\x1B[35m${toString()}\x1B[0m');

  get wtf => debugPrint('🖕🏼 \x1B[31m${toString()}\x1B[0m');
}