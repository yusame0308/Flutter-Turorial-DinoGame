import 'dart:ui';

import 'package:dino_game/sprite.dart';
import 'constants.dart';
import 'game-object.dart';
import 'package:flutter/widgets.dart';

Sprite groundSprite = Sprite()
  ..imagePath = 'assets/images/ground.png'
  ..imageWidth = 2399
  ..imageHeight = 24;

class Ground extends GameObject {
  Ground({this.worldLocation});

  final Offset worldLocation;

  @override
  Rect getRect(Size screenSize, double runDistance) {
    return Rect.fromLTWH(
      (worldLocation.dx - runDistance) * WORLD_TO_PIXEL_RATIO,
      screenSize.height / 2 - groundSprite.imageHeight,
      groundSprite.imageWidth.toDouble(),
      groundSprite.imageHeight.toDouble(),
    );
  }

  @override
  Widget render() {
    return Image.asset(groundSprite.imagePath);
  }
}
