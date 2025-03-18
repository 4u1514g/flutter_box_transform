import 'dart:ui' as ui;
import 'package:flutter/rendering.dart' as widgets;
import 'package:flutter_box_transform/src/box_transform/enums.dart';
import 'package:flutter_box_transform/src/box_transform/transformer.dart';

import 'extensions.dart';
import 'ui_result.dart';

/// A Flutter translation of [transform.BoxTransformer].
class UIBoxTransform {
  /// A private constructor to prevent instantiation.
  const UIBoxTransform._();

  /// The Flutter wrapper for [transform.BoxTransformer.resize].
  static UIResizeResult resize(
          {required ui.Rect initialRect,
          required ui.Offset initialLocalPosition,
          required ui.Offset localPosition,
          required HandlePosition handle,
          required ResizeMode resizeMode,
          required Flip initialFlip,
          ui.Rect clampingRect = ui.Rect.largest,
          widgets.BoxConstraints constraints = const widgets.BoxConstraints(),
          bool allowFlipping = true,
          double? ratio}) =>
      BoxTransformer.resize(
              initialRect: initialRect.toBox(),
              initialLocalPosition: initialLocalPosition.toVector2(),
              localPosition: localPosition.toVector2(),
              handle: handle,
              resizeMode: resizeMode,
              initialFlip: initialFlip,
              clampingRect: clampingRect.toBox(),
              constraints: constraints.toConstraints(),
              allowFlipping: allowFlipping,
              ratio: ratio)
          .toUI();

  /// The Flutter wrapper for [transform.BoxTransformer.move].
  static UIMoveResult move({
    required ui.Rect initialRect,
    required ui.Offset initialLocalPosition,
    required ui.Offset localPosition,
    ui.Rect clampingRect = ui.Rect.largest,
  }) =>
      BoxTransformer.move(
        initialRect: initialRect.toBox(),
        initialLocalPosition: initialLocalPosition.toVector2(),
        localPosition: localPosition.toVector2(),
        clampingRect: clampingRect.toBox(),
      ).toUI();
}
