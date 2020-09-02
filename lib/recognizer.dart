import 'dart:async';
import 'package:flutter/services.dart';

const MethodChannel _speech_channel =
    const MethodChannel("bz.rxla.flutter/recognizer");

class SpeechRecognizer {

  static Future activate() {
    return _speech_channel.invokeMethod("activate");
  }

  static Future cancel() {
    return _speech_channel.invokeMethod("cancel");
  }

  static void setMethodCallHandler(handler) {
    _speech_channel.setMethodCallHandler(handler);
  }

  static Future start(String lang) {
    return _speech_channel.invokeMethod("start", lang);
  }

  static Future stop() {
    return _speech_channel.invokeMethod("stop");
  }
}
