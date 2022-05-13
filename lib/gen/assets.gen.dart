/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// ignore_for_file: directives_ordering,unnecessary_import

import 'package:flutter/widgets.dart';

class $AssetsFontsGen {
  const $AssetsFontsGen();

  /// File path: assets/fonts/AvenirLTProBlack.otf
  String get avenirLTProBlack => 'assets/fonts/AvenirLTProBlack.otf';

  /// File path: assets/fonts/AvenirLTProBook.otf
  String get avenirLTProBook => 'assets/fonts/AvenirLTProBook.otf';

  /// File path: assets/fonts/AvenirLTProHeavy.otf
  String get avenirLTProHeavy => 'assets/fonts/AvenirLTProHeavy.otf';

  /// File path: assets/fonts/AvenirLTProLight.otf
  String get avenirLTProLight => 'assets/fonts/AvenirLTProLight.otf';

  /// File path: assets/fonts/AvenirLTProMedium.otf
  String get avenirLTProMedium => 'assets/fonts/AvenirLTProMedium.otf';

  /// File path: assets/fonts/AvenirLTProRoman.otf
  String get avenirLTProRoman => 'assets/fonts/AvenirLTProRoman.otf';
}

class Assets {
  static var image;

  Assets._();

  static const $AssetsFontsGen fonts = $AssetsFontsGen();
}

class AssetGenImage extends AssetImage {
  const AssetGenImage(String assetName) : super(assetName);

  Image image({
    Key? key,
    ImageFrameBuilder? frameBuilder,
    ImageLoadingBuilder? loadingBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? width,
    double? height,
    Color? color,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    FilterQuality filterQuality = FilterQuality.low,
  }) {
    return Image(
      key: key,
      image: this,
      frameBuilder: frameBuilder,
      loadingBuilder: loadingBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      width: width,
      height: height,
      color: color,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      filterQuality: filterQuality,
    );
  }

  String get path => assetName;
}
