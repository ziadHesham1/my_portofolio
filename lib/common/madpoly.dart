import 'dart:developer' as developer;

// import 'package:logger/logger.dart';

/// LOVELY Naming (Mr. Maaaaaaaaaaaaaaaaaaaaaaaaaaadpoly)
///
/// Use it to print anything, DO NOT FORGOT TO PASS THE [DEVELOPER] NAME
///

enum MadpolyColor { blue, green, yellow, red, purple, black }

abstract class Madpoly {
  static void print(
    Object? any, {
    String? developer,
    MadpolyColor? color,
    String? tag,
    bool? isInspect,
    bool isLog = false,
  }) {
    String message = "";
    // final Logger logger = Logger(printer: SimplePrinter());
    if (tag != null) message += "($tag) ";
    if (developer != null) message += "$developer :: ";

    message += any.toString();
    message += '\n -----------------------------------';
    /* if (isLog == true) {
      switch (color) {
        case MadpolyColor.blue:
          _logInfo(message);
          break;
        case MadpolyColor.green:
          _logSuccess(message);
          break;
        case MadpolyColor.yellow:
          _logWarning(message);
          break;
        case MadpolyColor.red:
          _logError(message);
          break;

        case MadpolyColor.purple:
          _logDebug(message);
          break;

        case MadpolyColor.black:
          _logAssert(message);
          break;

        default:
          _logWarning(message);
      }
    } else {
      debugPrint(message);
    } */
    if (color == null) {
      if (isLog == true) {
        color = MadpolyColor.yellow;
      } else {
        color = MadpolyColor.blue;
      }
    }
    /*   
    switch (color) {
      case MadpolyColor.red:
        logger.e(message);
        break;
      case MadpolyColor.yellow:
        logger.w(message);
        break;
      case MadpolyColor.green:
        logger.d(message);
        break;
      default:
        logger.i(message);
      // logger.t(message);
    } */
    switch (color) {
      case MadpolyColor.blue:
        _logInfo(message);
        break;
      case MadpolyColor.green:
        _logSuccess(message);
        break;
      case MadpolyColor.yellow:
        _logWarning(message);
        break;
      case MadpolyColor.red:
        _logError(message);
        break;

      case MadpolyColor.purple:
        _logDebug(message);
        break;

      case MadpolyColor.black:
        _logAssert(message);
        break;

      default:
        _logWarning(message);
    }
    // if (isInspect == true) inspect(any);
  }

  // Blue text
  static void _logInfo(String msg) {
    developer.log('\x1B[34m$msg\x1B[0m');
  }

  // Green text
  static void _logSuccess(String msg) {
    developer.log('\x1B[32m$msg\x1B[0m');
  }

  // Yellow text
  static void _logWarning(String msg) {
    developer.log('\x1B[33m$msg\x1B[0m');
  }

  // Red text
  static void _logError(String msg) {
    developer.log('\x1B[31m$msg\x1B[0m');
  }

  // purple text
  static void _logDebug(String msg) {
    developer.log('\x1B[35m$msg\x1B[0m');
  }

  // black with wite background
  static void _logAssert(String msg) {
    developer.log('\x1B[37;40m');
    // developer.log('\x1B[30m$msg\x1B[0m');
  }
}
