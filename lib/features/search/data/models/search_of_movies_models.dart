import '../../domain/entities/search_of_movies_entity.dart';

class SearchOfMoviesModel extends SearchOfMoviesEntity {
  SearchOfMoviesModel({
    this.score,
    super.show,
  });

  SearchOfMoviesModel.fromJson(dynamic json) {
    score = json['score'];
    show = json['show'] != null ? Show.fromJson(json['show']) : null;
  }

  num? score;
}

class Show extends ShowEntity {
  Show({
    super.id,
    super.url,
    super.name,
    this.type,
    this.language,
    this.genres,
    this.status,
    this.runtime,
    this.averageRuntime,
    this.premiered,
    this.ended,
    this.officialSite,
    this.schedule,
    this.rating,
    this.weight,
    this.network,
    this.webChannel,
    this.dvdCountry,
    this.externals,
    super.image,
    super.summary,
    this.updated,
    super.links,
  });

  Show.fromJson(dynamic json) {
    id = json['id'];
    url = json['url'];
    name = json['name'];
    type = json['type'];
    language = json['language'];
    genres = json['genres'] != null ? json['genres'].cast<String>() : [];
    status = json['status'];
    runtime = json['runtime'];
    averageRuntime = json['averageRuntime'];
    premiered = json['premiered'];
    ended = json['ended'];
    officialSite = json['officialSite'];
    schedule =
        json['schedule'] != null ? Schedule.fromJson(json['schedule']) : null;
    rating = json['rating'] != null ? Rating.fromJson(json['rating']) : null;
    weight = json['weight'];
    network =
        json['network'] != null ? Network.fromJson(json['network']) : null;
    webChannel = json['webChannel'];
    dvdCountry = json['dvdCountry'];
    externals = json['externals'] != null
        ? Externals.fromJson(json['externals'])
        : null;
    image = json['image'] != null ? Image.fromJson(json['image']) : null;
    summary = json['summary'];
    updated = json['updated'];
    links = json['_links'] != null ? Links.fromJson(json['_links']) : null;
  }


  String? type;
  String? language;
  List<String>? genres;
  String? status;
  num? runtime;
  num? averageRuntime;
  String? premiered;
  dynamic ended;
  String? officialSite;
  Schedule? schedule;
  Rating? rating;
  num? weight;
  Network? network;
  dynamic webChannel;
  dynamic dvdCountry;
  Externals? externals;
  num? updated;
}

class Links extends LinksEntity {
  Links({
    super.self,
    this.previousepisode,
    this.nextepisode,
  });

  Links.fromJson(dynamic json) {
    self = json['self'] != null ? Self.fromJson(json['self']) : null;
    previousepisode = json['previousepisode'] != null
        ? Previousepisode.fromJson(json['previousepisode'])
        : null;
    nextepisode = json['nextepisode'] != null
        ? Nextepisode.fromJson(json['nextepisode'])
        : null;
  }

  Previousepisode? previousepisode;
  Nextepisode? nextepisode;
}

class Nextepisode {
  Nextepisode({
    this.href,
    this.name,
  });

  Nextepisode.fromJson(dynamic json) {
    href = json['href'];
    name = json['name'];
  }

  String? href;
  String? name;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['href'] = href;
    map['name'] = name;
    return map;
  }
}

class Previousepisode {
  Previousepisode({
    this.href,
    this.name,
  });

  Previousepisode.fromJson(dynamic json) {
    href = json['href'];
    name = json['name'];
  }

  String? href;
  String? name;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['href'] = href;
    map['name'] = name;
    return map;
  }
}

class Self extends SelfEntity {
  Self({
    super.href,
  });

  Self.fromJson(dynamic json) {
    href = json['href'];
  }
}

class Image extends ImageEntity {
  Image({
    super.medium,
    super.original,
  });

  Image.fromJson(dynamic json) {
    medium = json['medium'];
    original = json['original'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['medium'] = medium;
    map['original'] = original;
    return map;
  }
}

class Externals {
  Externals({
    this.tvrage,
    this.thetvdb,
    this.imdb,
  });

  Externals.fromJson(dynamic json) {
    tvrage = json['tvrage'];
    thetvdb = json['thetvdb'];
    imdb = json['imdb'];
  }

  dynamic tvrage;
  num? thetvdb;
  String? imdb;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['tvrage'] = tvrage;
    map['thetvdb'] = thetvdb;
    map['imdb'] = imdb;
    return map;
  }
}

class Network {
  Network({
    this.id,
    this.name,
    this.country,
    this.officialSite,
  });

  Network.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    country =
        json['country'] != null ? Country.fromJson(json['country']) : null;
    officialSite = json['officialSite'];
  }

  num? id;
  String? name;
  Country? country;
  String? officialSite;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    if (country != null) {
      map['country'] = country?.toJson();
    }
    map['officialSite'] = officialSite;
    return map;
  }
}

class Country {
  Country({
    this.name,
    this.code,
    this.timezone,
  });

  Country.fromJson(dynamic json) {
    name = json['name'];
    code = json['code'];
    timezone = json['timezone'];
  }

  String? name;
  String? code;
  String? timezone;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['code'] = code;
    map['timezone'] = timezone;
    return map;
  }
}

class Rating {
  Rating({
    this.average,
  });

  Rating.fromJson(dynamic json) {
    average = json['average'];
  }

  num? average;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['average'] = average;
    return map;
  }
}

class Schedule {
  Schedule({
    this.time,
    this.days,
  });

  Schedule.fromJson(dynamic json) {
    time = json['time'];
    days = json['days'] != null ? json['days'].cast<String>() : [];
  }

  String? time;
  List<String>? days;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['time'] = time;
    map['days'] = days;
    return map;
  }
}
