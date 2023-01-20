/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/phone1.jpg
  AssetGenImage get phone1 => const AssetGenImage('assets/images/phone1.jpg');

  /// File path: assets/images/phone2.jpg
  AssetGenImage get phone2 => const AssetGenImage('assets/images/phone2.jpg');

  /// File path: assets/images/phone3.jpg
  AssetGenImage get phone3 => const AssetGenImage('assets/images/phone3.jpg');

  /// File path: assets/images/phone4.jpg
  AssetGenImage get phone4 => const AssetGenImage('assets/images/phone4.jpg');

  /// File path: assets/images/slide_1.jpg
  AssetGenImage get slide1 => const AssetGenImage('assets/images/slide_1.jpg');

  /// File path: assets/images/slide_2.jpg
  AssetGenImage get slide2 => const AssetGenImage('assets/images/slide_2.jpg');

  /// File path: assets/images/slide_3.jpg
  AssetGenImage get slide3 => const AssetGenImage('assets/images/slide_3.jpg');

  /// File path: assets/images/slide_4.jpg
  AssetGenImage get slide4 => const AssetGenImage('assets/images/slide_4.jpg');

  /// File path: assets/images/slide_5.jpg
  AssetGenImage get slide5 => const AssetGenImage('assets/images/slide_5.jpg');

  /// File path: assets/images/slide_6.jpg
  AssetGenImage get slide6 => const AssetGenImage('assets/images/slide_6.jpg');

  /// List of all assets
  List<AssetGenImage> get values => [
        phone1,
        phone2,
        phone3,
        phone4,
        slide1,
        slide2,
        slide3,
        slide4,
        slide5,
        slide6
      ];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider() => AssetImage(_assetName);

  String get path => _assetName;

  String get keyName => _assetName;
}
