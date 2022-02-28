class HomePageModel {
  List<Sliders>? sliders;
  List<Videos>? videos;
  AboutUs? aboutUs;
  AboutUs? materialsContent;
  List<Materials>? materials;
  LocaitonContent? locaitonContent;
  List<Locaitons>? locaitons;
  List<Partners>? partners;


  HomePageModel(
      {this.sliders,
        this.videos,
        this.aboutUs,
        this.materialsContent,
        this.materials,
        this.locaitonContent,
        this.locaitons,
        this.partners,
        });

  HomePageModel.fromJson(Map<String, dynamic> json) {
    if (json['sliders'] != null) {
      sliders = <Sliders>[];
      json['sliders'].forEach((v) {
        sliders!.add(new Sliders.fromJson(v));
      });
    }
    if (json['videos'] != null) {
      videos = <Videos>[];
      json['videos'].forEach((v) {
        videos!.add(new Videos.fromJson(v));
      });
    }
    aboutUs = json['about_us'] != null
        ? new AboutUs.fromJson(json['about_us'])
        : null;
    materialsContent = json['materials_content'] != null
        ? new AboutUs.fromJson(json['materials_content'])
        : null;
    if (json['materials'] != null) {
      materials = <Materials>[];
      json['materials'].forEach((v) {
        materials!.add(new Materials.fromJson(v));
      });
    }
    locaitonContent = json['locaiton_content'] != null
        ? new LocaitonContent.fromJson(json['locaiton_content'])
        : null;
    if (json['locaitons'] != null) {
      locaitons = <Locaitons>[];
      json['locaitons'].forEach((v) {
        locaitons!.add(new Locaitons.fromJson(v));
      });
    }
    if (json['partners'] != null) {
      partners = <Partners>[];
      json['partners'].forEach((v) {
        partners!.add(new Partners.fromJson(v));
      });
    }

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.sliders != null) {
      data['sliders'] = this.sliders!.map((v) => v.toJson()).toList();
    }
    if (this.videos != null) {
      data['videos'] = this.videos!.map((v) => v.toJson()).toList();
    }
    if (this.aboutUs != null) {
      data['about_us'] = this.aboutUs!.toJson();
    }
    if (this.materialsContent != null) {
      data['materials_content'] = this.materialsContent!.toJson();
    }
    if (this.materials != null) {
      data['materials'] = this.materials!.map((v) => v.toJson()).toList();
    }
    if (this.locaitonContent != null) {
      data['locaiton_content'] = this.locaitonContent!.toJson();
    }
    if (this.locaitons != null) {
      data['locaitons'] = this.locaitons!.map((v) => v.toJson()).toList();
    }
    if (this.partners != null) {
      data['partners'] = this.partners!.map((v) => v.toJson()).toList();
    }

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

class Videos {
  int? id;
  String? title;
  String? url;
  int? sorting;
  String? createdAt;
  String? updatedAt;

  Videos(
      {this.id,
        this.title,
        this.url,
        this.sorting,
        this.createdAt,
        this.updatedAt});

  Videos.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    url = json['url'];
    sorting = json['sorting'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['url'] = this.url;
    data['sorting'] = this.sorting;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}

class AboutUs {
  int? id;
  String? slug;
  String? title;
  String? description;
  String? image;
  String? status;
  int? isMeta;
  Meta? meta;
  String? createdAt;
  String? updatedAt;

  AboutUs(
      {this.id,
        this.slug,
        this.title,
        this.description,
        this.image,
        this.status,
        this.isMeta,
        this.meta,
        this.createdAt,
        this.updatedAt});

  AboutUs.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    slug = json['slug'];
    title = json['title'];
    description = json['description'];
    image = json['image'];
    status = json['status'];
    isMeta = json['is_meta'];
    meta = json['meta'] != null ? new Meta.fromJson(json['meta']) : null;
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['slug'] = this.slug;
    data['title'] = this.title;
    data['description'] = this.description;
    data['image'] = this.image;
    data['status'] = this.status;
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

class Materials {
  int? id;
  String? title;
  String? icon;
  String? description;
  int? sorting;
  String? createdAt;
  String? updatedAt;

  Materials(
      {this.id,
        this.title,
        this.icon,
        this.description,
        this.sorting,
        this.createdAt,
        this.updatedAt});

  Materials.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    icon = json['icon'];
    description = json['description'];
    sorting = json['sorting'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['icon'] = this.icon;
    data['description'] = this.description;
    data['sorting'] = this.sorting;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}

class LocaitonContent {
  int? id;
  String? slug;
  String? title;
  String? description;
  Null? image;
  String? status;
  int? isMeta;
  Meta? meta;
  String? createdAt;
  String? updatedAt;

  LocaitonContent(
      {this.id,
        this.slug,
        this.title,
        this.description,
        this.image,
        this.status,
        this.isMeta,
        this.meta,
        this.createdAt,
        this.updatedAt});

  LocaitonContent.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    slug = json['slug'];
    title = json['title'];
    description = json['description'];
    image = json['image'];
    status = json['status'];
    isMeta = json['is_meta'];
    meta = json['meta'] != null ? new Meta.fromJson(json['meta']) : null;
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['slug'] = this.slug;
    data['title'] = this.title;
    data['description'] = this.description;
    data['image'] = this.image;
    data['status'] = this.status;
    data['is_meta'] = this.isMeta;
    if (this.meta != null) {
      data['meta'] = this.meta!.toJson();
    }
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}

class Locaitons {
  int? id;
  String? title;
  String? map;
  Null? map1;
  Null? map2;
  int? sorting;
  String? createdAt;
  String? updatedAt;

  Locaitons(
      {this.id,
        this.title,
        this.map,
        this.map1,
        this.map2,
        this.sorting,
        this.createdAt,
        this.updatedAt});

  Locaitons.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    map = json['map'];
    map1 = json['map1'];
    map2 = json['map2'];
    sorting = json['sorting'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['map'] = this.map;
    data['map1'] = this.map1;
    data['map2'] = this.map2;
    data['sorting'] = this.sorting;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}

class Partners {
  int? id;
  String? title;
  Null? url;
  String? logo;
  int? sorting;
  String? createdAt;
  String? updatedAt;

  Partners(
      {this.id,
        this.title,
        this.url,
        this.logo,
        this.sorting,
        this.createdAt,
        this.updatedAt});

  Partners.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    url = json['url'];
    logo = json['logo'];
    sorting = json['sorting'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['url'] = this.url;
    data['logo'] = this.logo;
    data['sorting'] = this.sorting;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}