// import 'dart:typed_data';
//
// import 'package:flutter/material.dart';
//
//
// class WebsafeSvg {
//   static Widget asset(
//       String asset, {
//         alignment = Alignment.center,
//         Color color,
//         BoxFit fit = BoxFit.contain,
//         double height,
//         String package,
//         WidgetBuilder placeholderBuilder,
//         String semanticsLabel,
//         double width,
//       }) =>
//       svgFromAsset(
//         asset,
//         alignment: alignment,
//         color: color,
//         fit: fit,
//         height: height,
//         package: package,
//         placeholderBuilder: placeholderBuilder,
//         semanticsLabel: semanticsLabel,
//         width: width,
//       );
//
//   static Widget memory(
//       Uint8List bytes, {
//         alignment = Alignment.center,
//         Color color,
//         BoxFit fit = BoxFit.contain,
//         double height,
//         WidgetBuilder placeholderBuilder,
//         String semanticsLabel,
//         double width,
//       }) =>
//       svgFromMemory(
//         bytes,
//         alignment: alignment,
//         color: color,
//         fit: fit,
//         height: height,
//         placeholderBuilder: placeholderBuilder,
//         semanticsLabel: semanticsLabel,
//         width: width,
//       );
//
//   static Widget network(
//       String url, {
//         alignment = Alignment.center,
//         Color color,
//         BoxFit fit = BoxFit.contain,
//         Map<String, String> headers,
//         double height,
//         WidgetBuilder placeholderBuilder,
//         String semanticsLabel,
//         double width,
//       }) =>
//       svgFromNetwork(
//         url,
//         alignment: alignment,
//         color: color,
//         fit: fit,
//         headers: headers,
//         height: height,
//         placeholderBuilder: placeholderBuilder,
//         semanticsLabel: semanticsLabel,
//         width: width,
//       );
//
//   static Widget string(
//       String bytes, {
//         alignment = Alignment.center,
//         Color color,
//         BoxFit fit = BoxFit.contain,
//         double height,
//         WidgetBuilder placeholderBuilder,
//         String semanticsLabel,
//         double width,
//       }) =>
//       svgFromString(
//         bytes,
//         alignment: alignment,
//         color: color,
//         fit: fit,
//         height: height,
//         placeholderBuilder: placeholderBuilder,
//         semanticsLabel: semanticsLabel,
//         width: width,
//       );
// }
// Widget svgFromAsset(
//     String asset, {
//       alignment = Alignment.center,
//       Color color,
//       bool excludeFromSemantics = false,
//       BoxFit fit = BoxFit.contain,
//       double height,
//       Key key,
//       String package,
//       WidgetBuilder placeholderBuilder,
//       String semanticsLabel,
//       double width,
//     }) =>
//     throw UnimplementedError();
//
// Widget svgFromMemory(
//     Uint8List bytes, {
//       alignment = Alignment.center,
//       Color color,
//       bool excludeFromSemantics = false,
//       BoxFit fit = BoxFit.contain,
//       double height,
//       Key key,
//       WidgetBuilder placeholderBuilder,
//       String semanticsLabel,
//       double width,
//     }) =>
//     throw UnimplementedError();
//
// Widget svgFromNetwork(
//     String url, {
//       alignment = Alignment.center,
//       Color color,
//       bool excludeFromSemantics = false,
//       BoxFit fit = BoxFit.contain,
//       double height,
//       Map<String, String> headers,
//       Key key,
//       WidgetBuilder placeholderBuilder,
//       String semanticsLabel,
//       double width,
//     }) =>
//     throw UnimplementedError();
//
// Widget svgFromString(
//     String bytes, {
//       alignment = Alignment.center,
//       Color color,
//       bool excludeFromSemantics = false,
//       BoxFit fit = BoxFit.contain,
//       double height,
//       Key key,
//       WidgetBuilder placeholderBuilder,
//       String semanticsLabel,
//       double width,
//     }) =>
//     throw UnimplementedError();
