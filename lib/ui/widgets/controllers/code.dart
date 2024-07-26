import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:rfw/formats.dart';
import 'package:string_scanner/string_scanner.dart';

import '../code_themes.dart';

class CodeController extends TextEditingController {
  CodeController({
    this.globals = const [],
    this.types = const [],
    this.tokens = const [],
    super.text,
  });

  final List<String> tokens;
  final List<String> types;
  final List<String> globals;

  CodeTheme _codeTheme = CodeTheme.standard();
  CodeTheme get codeTheme => _codeTheme;
  set codeTheme(CodeTheme value) {
    _codeTheme = value;
    notifyListeners();
  }

  ParserException? _parserException;
  ParserException? get parserException => _parserException;
  set parserException(ParserException? value) {
    _parserException = value;
    notifyListeners();
  }

  FormatException? _formatException;
  FormatException? get formatException => _formatException;
  set formatException(FormatException? value) {
    _formatException = value;
    notifyListeners();
  }

  @override
  TextSpan buildTextSpan({
    required BuildContext context,
    TextStyle? style,
    required bool withComposing,
  }) {
    final theme = Theme.of(context);
    final syntaxTheme = CodeTheme.dynamic(theme);
    final colors = theme.colorScheme;
    TextStyle baseStyle = style ?? const TextStyle();
    baseStyle = baseStyle.merge(TextStyle(
      color: colors.onSurface,
    ));
    final composingStyle = baseStyle.merge(const TextStyle(
      decoration: TextDecoration.underline,
    ));
    final errorStyle = baseStyle.merge(TextStyle(
      decoration: TextDecoration.underline,
      color: colors.error,
    ));
    final composing = value.composing;
    final spans = <CodeHighlight>[];
    if (value.isComposingRangeValid && withComposing) {
      spans.add(CodeHighlight(
        composing.start,
        composing.end,
        value: value.text,
        style: composingStyle,
      ));
    }
    final src = value.text;
    final scanner = StringScanner(src);
    int lastLoopPosition = scanner.position;

    while (!scanner.isDone) {
      /// Skip White space
      scanner.scan(RegExp(r'\s+'));

      /// Block comments
      if (scanner.scan(RegExp('/\\*+[^*]*\\*+(?:[^/*][^*]*\\*+)*/'))) {
        final start = scanner.lastMatch!.start;
        final end = scanner.lastMatch!.end;
        spans.add(CodeHighlight(
          start,
          end,
          value: src.substring(start, end),
          style: syntaxTheme.commentStyle,
        ));
        continue;
      }

      /// Line comments
      if (scanner.scan('//')) {
        final int startComment = scanner.lastMatch!.start;
        bool eof = false;
        int endComment;
        if (scanner.scan(RegExp(r'.*'))) {
          endComment = scanner.lastMatch!.end;
        } else {
          eof = true;
          endComment = src.length;
        }
        final start = startComment;
        final end = endComment;
        spans.add(CodeHighlight(
          start,
          end,
          value: src.substring(start, end),
          style: syntaxTheme.commentStyle,
        ));
        if (eof) break;
        continue;
      }

      /// Hex number
      if (scanner.scan(RegExp(r'0[xX][0-9a-fA-F]+'))) {
        final start = scanner.lastMatch!.start;
        final end = scanner.lastMatch!.end;
        spans.add(CodeHighlight(
          start,
          end,
          value: src.substring(start, end),
          style: syntaxTheme.numberStyle,
        ));
        continue;
      }

      /// "String"
      if (scanner.scan(RegExp(r'"(?:[^"\\]|\\.)*"'))) {
        final start = scanner.lastMatch!.start;
        final end = scanner.lastMatch!.end;
        spans.add(CodeHighlight(
          start,
          end,
          value: src.substring(start, end),
          style: syntaxTheme.stringStyle,
        ));
        continue;
      }

      /// 'String'
      if (scanner.scan(RegExp(r"'(?:[^'\\]|\\.)*'"))) {
        final start = scanner.lastMatch!.start;
        final end = scanner.lastMatch!.end;
        spans.add(CodeHighlight(
          start,
          end,
          value: src.substring(start, end),
          style: syntaxTheme.stringStyle,
        ));
        continue;
      }

      /// Double
      if (scanner.scan(RegExp(r'\d+\.\d+'))) {
        final start = scanner.lastMatch!.start;
        final end = scanner.lastMatch!.end;
        spans.add(CodeHighlight(
          start,
          end,
          value: src.substring(start, end),
          style: syntaxTheme.numberStyle,
        ));
        continue;
      }

      /// Integer
      if (scanner.scan(RegExp(r'\d+'))) {
        final start = scanner.lastMatch!.start;
        final end = scanner.lastMatch!.end;
        spans.add(CodeHighlight(
          start,
          end,
          value: src.substring(start, end),
          style: syntaxTheme.numberStyle,
        ));
        continue;
      }

      /// Punctuation
      if (scanner.scan(RegExp(r'[\[\]{}().!=<>&\|\?\+\-\*/%\^~;:,]'))) {
        final start = scanner.lastMatch!.start;
        final end = scanner.lastMatch!.end;
        spans.add(CodeHighlight(
          start,
          end,
          value: src.substring(start, end),
          style: syntaxTheme.punctuationStyle,
        ));
        continue;
      }

      /// Words
      if (scanner.scan(RegExp(r'\w+'))) {
        final raw = scanner.lastMatch![0]!;
        String word = raw;
        if (word.startsWith('_')) word = word.substring(1);
        if (word.startsWith('0xFF')) {
          final start = scanner.lastMatch!.start;
          final end = scanner.lastMatch!.end;
          spans.add(CodeHighlight(
            start,
            end,
            value: src.substring(start, end),
            style: syntaxTheme.numberStyle,
          ));
        } else if (tokens.contains(word)) {
          final start = scanner.lastMatch!.start;
          final end = scanner.lastMatch!.end;
          spans.add(CodeHighlight(
            start,
            end,
            value: src.substring(start, end),
            style: syntaxTheme.keywordStyle,
          ));
        } else if (types.contains(word)) {
          final start = scanner.lastMatch!.start;
          final end = scanner.lastMatch!.end;
          spans.add(CodeHighlight(
            start,
            end,
            value: src.substring(start, end),
            style: syntaxTheme.classStyle,
          ));
        } else if (globals.contains(word)) {
          final start = scanner.lastMatch!.start;
          final end = scanner.lastMatch!.end;
          spans.add(CodeHighlight(
            start,
            end,
            value: src.substring(start, end),
            style: syntaxTheme.constantStyle,
          ));
        }
      }

      /// Check if this loop did anything
      if (lastLoopPosition == scanner.position) {
        /// Failed to parse this file, abort gracefully
        return TextSpan(style: syntaxTheme.baseStyle, text: src);
      }
      lastLoopPosition = scanner.position;
    }

    if (parserException != null) {
      var line = 0;
      var start = 0, end = 1;
      var column = 0;
      for (var c = 0; c < src.length; c++) {
        final char = src[c];
        final runes = char.runes.toList();
        for (final rune in runes) {
          if (rune == 0x0A) {
            line++;
            column = 0;
            continue;
          }
          column++;
          if (line == parserException!.line - 1) {
            if (column == parserException!.column) {
              start = c;
              end = c + 1;
              break;
            }
          }
        }
      }

      spans.add(CodeHighlight(
        start,
        end,
        value: parserException!.message,
        style: errorStyle,
        recognizer: TapGestureRecognizer()
          ..onTap = () {
            CodeSelection<String>(value: parserException!.message)
                .dispatch(context);
          },
      ));
    }

    if (formatException != null) {
      spans.add(CodeHighlight(
        formatException!.offset ?? 0,
         formatException!.offset ?? 1,
        value: formatException!.message,
        style: errorStyle,
        recognizer: TapGestureRecognizer()
          ..onTap = () {
            CodeSelection<String>(value: formatException!.message)
                .dispatch(context);
          },
      ));
    }

    final List<InlineSpan> formattedText = <InlineSpan>[];
    // var newLine = true;
    // int lineNum = 0;
    for (var i = 0; i <= src.length; i++) {
      final endOfFile = i == src.length;
      // if (newLine) {
      //   formattedText.add(TextSpan(
      //     style: TextStyle(
      //       color: colors.onSurface.withOpacity(0.6),
      //     ),
      //     text: (lineNum + 1).toString().padRight(5, ' '),
      //   ));
      //   newLine = false;
      // }
      TextStyle base = baseStyle;
      GestureRecognizer? recognizer;
      final filtered = spans.where((e) => i >= e.start && i <= e.end);
      for (final span in filtered) {
        base = base.merge(span.style);
        recognizer = span.recognizer ?? recognizer;
      }
      formattedText.add(TextSpan(
        style: base,
        text: endOfFile ? ' ' : src[i],
        recognizer: recognizer,
      ));
      // if (!endOfFile) {
      //   final char = src[i];
      //   final runes = char.runes.toList();
      //   for (final rune in runes) {
      //     if (rune == 0x0A) {
      //       newLine = true;
      //       lineNum++;
      //       break;
      //     }
      //   }
      // }
    }

    return TextSpan(
      style: syntaxTheme.baseStyle.merge(style),
      children: formattedText,
    );

    // return super.buildTextSpan(
    //   context: context,
    //   withComposing: withComposing,
    // );
  }
}

extension StringUtils on String {
  bool get firstLetterIsUpperCase {
    if (isNotEmpty) {
      final String first = substring(0, 1);
      return first == first.toUpperCase();
    }
    return false;
  }
}

class CodeHighlight {
  CodeHighlight(
    this.start,
    this.end, {
    required this.value,
    required this.style,
    this.recognizer,
  });
  final TextStyle style;
  final int start, end;
  final String value;
  GestureRecognizer? recognizer;
}

class CodeSelection<T> extends Notification {
  CodeSelection({
    required this.value,
  });
  final T value;
}
