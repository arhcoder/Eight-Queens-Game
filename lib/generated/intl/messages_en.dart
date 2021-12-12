// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "about_button" : MessageLookupByLibrary.simpleMessage("Got it!"),
    "about_description" : MessageLookupByLibrary.simpleMessage("Developed by Alejandro Ramos | @arhcoder.\n\n• Special thanks to Sriram Thiagarajan.\n• Icons taken from Flaticon.com.\n• Made with Flutter 💙"),
    "about_title" : MessageLookupByLibrary.simpleMessage("About..."),
    "app_title" : MessageLookupByLibrary.simpleMessage("EIGHT QUEENS GAME"),
    "button_about" : MessageLookupByLibrary.simpleMessage("About..."),
    "button_github" : MessageLookupByLibrary.simpleMessage("Source code"),
    "button_howToPlay" : MessageLookupByLibrary.simpleMessage("How to play"),
    "button_reset" : MessageLookupByLibrary.simpleMessage("Reset"),
    "button_solve" : MessageLookupByLibrary.simpleMessage("Solve"),
    "github_description" : MessageLookupByLibrary.simpleMessage("Want to check out the Dart/Flutter source code for this project?\n"),
    "github_noButton" : MessageLookupByLibrary.simpleMessage("No"),
    "github_title" : MessageLookupByLibrary.simpleMessage("Source code"),
    "github_yesButton" : MessageLookupByLibrary.simpleMessage("View code."),
    "howToPlay_button" : MessageLookupByLibrary.simpleMessage("Got it!"),
    "howToPlay_description" : MessageLookupByLibrary.simpleMessage("Put EIGHT queens in the chessboard.\n\n• Queens must not attack each other.\n• Queens attack cross and diagonal.\n• Click on a square to place a queen."),
    "howToPlay_title" : MessageLookupByLibrary.simpleMessage("How to play"),
    "winMessage" : MessageLookupByLibrary.simpleMessage("Congratulations! You won the game...")
  };
}
