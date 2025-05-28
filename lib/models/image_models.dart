import 'package:json_annotation/json_annotation.dart';
part 'image_models.g.dart';

@JsonSerializable()
class PixelfordImage {
  String id;
  String author;
  String url;

  @JsonKey(name: 'download_url')
  String urlFullSize;

  PixelfordImage(
      {required this.author,
      required this.url,
      required this.id,
      required this.urlFullSize});

  factory PixelfordImage.fromJson(Map<String, dynamic> json) =>
      _$PixelfordImage(json as PixelfordImage);

  Map<String, dynamic> toJson() => _$PixelfordImage(this);
}

_$PixelfordImage(PixelfordImage pixelfordImage) {}
