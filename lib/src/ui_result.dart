import 'dart:ui';

import 'package:flutter_box_transform/src/box_transform/result.dart';


/// A convenient type alias for a [ResizeResult] with Flutter's [Rect], [Offset]
/// and [Size] types.
typedef UIMoveResult = MoveResult<Rect, Offset, Size>;

/// A convenient type alias for a [MoveResult] with Flutter's [Rect], [Offset]
/// and [Size] types.
typedef UIResizeResult = ResizeResult<Rect, Offset, Size>;

/// A convenient type alias for a [TransformResult] with Flutter's [Rect],
/// [Offset] and [Size] types.
typedef UITransformResult = TransformResult<Rect, Offset, Size>;
