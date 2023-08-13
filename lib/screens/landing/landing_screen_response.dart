class LandingScreenResponse {

  List<RelatedTopics>? relatedTopics;


  LandingScreenResponse({this.relatedTopics});

  LandingScreenResponse.fromJson(Map<String, dynamic> json) {
    if (json['RelatedTopics'] != null) {
      relatedTopics = <RelatedTopics>[];
      json['RelatedTopics'].forEach((v) {
        relatedTopics!.add(new RelatedTopics.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};

    if (this.relatedTopics != null) {
      data['RelatedTopics'] =
          this.relatedTopics!.map((v) => v.toJson()).toList();
    }

    return data;

  }
}

class RelatedTopics {
  String? firstURL;
  Icon? icon;
  String? result;
  String? text;

  RelatedTopics({this.firstURL, this.icon, this.result, this.text});

  RelatedTopics.fromJson(Map<String, dynamic> json) {
    firstURL = json['FirstURL'];
    icon = json['Icon'] != null ? new Icon.fromJson(json['Icon']) : null;
    result = json['Result'];
    text = json['Text'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['FirstURL'] = this.firstURL;
    if (this.icon != null) {
      data['Icon'] = this.icon!.toJson();
    }
    data['Result'] = this.result;
    data['Text'] = this.text;
    return data;
  }
}

class Icon {
  String? height;
  String? uRL;
  String? width;

  Icon({this.height, this.uRL, this.width});

  Icon.fromJson(Map<String, dynamic> json) {
    try{
      height = json['Height'];
      uRL = json['URL'];
      width = json['Width'];
    }catch(e){
      print("in catch ===> $e");
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Height'] = this.height;
    data['URL'] = this.uRL;
    data['Width'] = this.width;
    return data;
  }
}

