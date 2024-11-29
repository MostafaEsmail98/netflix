class ShowEntity {
  String? name;
  num? id;

  ImageEntity? image;
  String? summary;

  LinksEntity? links;
  String? url;
  List<String>? genres;

  num? runtime;

  String? premiered;

  String? language;

  ScheduleEntity? schedule;

  RatingEntity? rating;

  ShowEntity(
      {this.id,
      this.name,
      this.image,
      this.summary,
      this.links,
      this.url,
      this.genres,
      this.language,
      this.premiered,
      this.rating,
      this.runtime,
      this.schedule});
}

class RatingEntity {
  num? average;

  RatingEntity({this.average});
}

class ScheduleEntity {
  String? time;

  List<String>? days;

  ScheduleEntity({this.time, this.days});
}

class ImageEntity {
  String? medium;

  String? original;

  ImageEntity({this.medium, this.original});
}

class LinksEntity {
  SelfEntity? self;

  LinksEntity({this.self});
}

class SelfEntity {
  String? href;

  SelfEntity({this.href});
}
