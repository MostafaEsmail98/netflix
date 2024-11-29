class AllMoviesEntity {
  ShowEntity? show;

  AllMoviesEntity({this.show});
}
class ShowEntity {
  String? name ;
  ImageEntity? image;
  String? summary ;
  LinksEntity? links;
  String? url;

  ShowEntity({this.name, this.image, this.summary,this.links,this.url});
}

class ImageEntity{
  String? medium ;
  String? original ;

  ImageEntity({this.medium, this.original});
}

class LinksEntity{
  SelfEntity? self;

  LinksEntity({this.self});
}

class SelfEntity{
  String? href;

  SelfEntity({this.href});
}