// ignore_for_file: must_be_immutable

import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:octo_image/octo_image.dart';

class CustomImageWidget extends StatelessWidget {
  String imageUrl;
  final Size? size;
  final double? height, radius;
  final BorderRadius? borderRadius;
  final Color? color;
  final BoxFit? fit;
  final bool? isFile;
  final bool canShowHash;

  CustomImageWidget({
    Key? key,
    required this.imageUrl,
    this.size,
    this.radius,
    this.borderRadius,
    this.color,
    this.height,
    this.fit,
    this.isFile,
    this.canShowHash = true,
  })  : assert(
          borderRadius == null || radius == null,
          'Cannot provide both a borderRadius and a radius\n',
        ),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return (radius != null || borderRadius != null)
        ? ClipRRect(
            borderRadius: borderRadius ?? BorderRadius.circular(radius ?? 0),
            child: child,
          )
        : child;
  }

  Widget get child => (imageUrl.isEmpty)
      ? placeholder
      : (Uri.tryParse(imageUrl)?.hasAbsolutePath ?? false) ||
              imageUrl.startsWith('http') ||
              (!imageUrl.startsWith('asset') && kIsWeb)
          ? (isFile ?? false)
              ? fileImage
              : OctoImage(
                  image: CachedNetworkImageProvider(imageUrl),
                  placeholderBuilder: canShowHash
                      ? OctoPlaceholder.blurHash("LEHV6nWB2yk8pyo0adR*.7kCMdnj")
                      : (ctx) => const SizedBox(),
                  errorBuilder: (context, error, stackTrace) {
                    return placeholder;
                  },
                  fit: fit ?? BoxFit.cover,
                  color: color,
                  height: height,
                )
          : fileImage;

  Widget get placeholder => Icon(
        Icons.error,
        size: size?.width,
      );

  Widget get fileImage => File(imageUrl).existsSync()
      ? Image.file(
          File(imageUrl),
          width: size?.width,
          height: height ?? size?.height,
          fit: BoxFit.cover,
        )
      : placeholder;
}
