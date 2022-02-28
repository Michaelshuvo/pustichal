class ConfigModel {
  Config? config;
  List<Sliders>? sliders;

  ConfigModel({this.config, this.sliders});

  ConfigModel.fromJson(Map<String, dynamic> json) {
    config =
    json['config'] != null ? new Config.fromJson(json['config']) : null;
    if (json['sliders'] != null) {
      sliders = <Sliders>[];
      json['sliders'].forEach((v) {
        sliders!.add(new Sliders.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.config != null) {
      data['config'] = this.config!.toJson();
    }
    if (this.sliders != null) {
      data['sliders'] = this.sliders!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Config {
  int? id;
  String? title;
  String? shortTitle;
  String? contactEmail;
  String? feedbackEmail;
  String? mobile1;
  String? mobile2;
  String? logo;
  Null? logoSmall;
  Null? favicon;
  String? address;
  String? developedBy;
  String? developedByUrl;
  String? web;
  Null? fb;
  Null? tw;
  Null? ln;
  Null? yt;
  Null? map;
  String? totalFactory;
  String? annualProduction;
  String? sellingPlace;
  String? totalUser;
  int? isMeta;
  Meta? meta;
  String? createdAt;
  String? updatedAt;

  Config(
      {this.id,
        this.title,
        this.shortTitle,
        this.contactEmail,
        this.feedbackEmail,
        this.mobile1,
        this.mobile2,
        this.logo,
        this.logoSmall,
        this.favicon,
        this.address,
        this.developedBy,
        this.developedByUrl,
        this.web,
        this.fb,
        this.tw,
        this.ln,
        this.yt,
        this.map,
        this.totalFactory,
        this.annualProduction,
        this.sellingPlace,
        this.totalUser,
        this.isMeta,
        this.meta,
        this.createdAt,
        this.updatedAt});

  Config.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    shortTitle = json['short_title'];
    contactEmail = json['contact_email'];
    feedbackEmail = json['feedback_email'];
    mobile1 = json['mobile1'];
    mobile2 = json['mobile2'];
    logo = json['logo'];
    logoSmall = json['logo_small'];
    favicon = json['favicon'];
    address = json['address'];
    developedBy = json['developed_by'];
    developedByUrl = json['developed_by_url'];
    web = json['web'];
    fb = json['fb'];
    tw = json['tw'];
    ln = json['ln'];
    yt = json['yt'];
    map = json['map'];
    totalFactory = json['total_factory'];
    annualProduction = json['annual_production'];
    sellingPlace = json['selling_place'];
    totalUser = json['total_user'];
    isMeta = json['is_meta'];
    meta = json['meta'] != null ? new Meta.fromJson(json['meta']) : null;
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['short_title'] = this.shortTitle;
    data['contact_email'] = this.contactEmail;
    data['feedback_email'] = this.feedbackEmail;
    data['mobile1'] = this.mobile1;
    data['mobile2'] = this.mobile2;
    data['logo'] = this.logo;
    data['logo_small'] = this.logoSmall;
    data['favicon'] = this.favicon;
    data['address'] = this.address;
    data['developed_by'] = this.developedBy;
    data['developed_by_url'] = this.developedByUrl;
    data['web'] = this.web;
    data['fb'] = this.fb;
    data['tw'] = this.tw;
    data['ln'] = this.ln;
    data['yt'] = this.yt;
    data['map'] = this.map;
    data['total_factory'] = this.totalFactory;
    data['annual_production'] = this.annualProduction;
    data['selling_place'] = this.sellingPlace;
    data['total_user'] = this.totalUser;
    data['is_meta'] = this.isMeta;
    if (this.meta != null) {
      data['meta'] = this.meta!.toJson();
    }
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}

class Meta {
  String? title;
  String? description;

  Meta({this.title, this.description});

  Meta.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['description'] = this.description;
    return data;
  }
}

class Sliders {
  int? id;
  String? title;
  String? slider;
  Null? description;
  Null? url;
  int? sorting;
  String? createdAt;
  String? updatedAt;

  Sliders(
      {this.id,
        this.title,
        this.slider,
        this.description,
        this.url,
        this.sorting,
        this.createdAt,
        this.updatedAt});

  Sliders.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    slider = json['slider'];
    description = json['description'];
    url = json['url'];
    sorting = json['sorting'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['slider'] = this.slider;
    data['description'] = this.description;
    data['url'] = this.url;
    data['sorting'] = this.sorting;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}