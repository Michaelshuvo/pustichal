class CustomerOpinionBody {



  String? name;
  String? gender;
  String? age;
  String? occupation;
  String? customerType;
  String? whatKindOfRiceDoYouLike;
  String? howDoYouLikeToBuyRice;
  String? howDoYouLikeToTakeRice;
  String? whichPacketDoYouLike;
  String? whichInfoExictedToBuyPushtichal;
  String? knowingFromPushtichal;
  String? distanceOfPushtichalShop;
  String? doYouWantToKnowPushtichalInFuture;













  CustomerOpinionBody(
      {this.age,
        this.customerType,
        this.distanceOfPushtichalShop,
        this.doYouWantToKnowPushtichalInFuture,
        this.gender,
        this.howDoYouLikeToBuyRice,
        this.howDoYouLikeToTakeRice,
        this.knowingFromPushtichal,
        this.name,
        this.occupation,

        this.whatKindOfRiceDoYouLike,
        this.whichInfoExictedToBuyPushtichal,
        this.whichPacketDoYouLike});

  CustomerOpinionBody.fromJson(Map<String, dynamic> json) {
    age = json['age'];
    customerType = json['customer_type'];
    distanceOfPushtichalShop = json['distance_of_pushtichal_shop'];
    doYouWantToKnowPushtichalInFuture =
    json['do_you_want_to_know_pushtichal_in_future'];
    gender = json['gender'];
    howDoYouLikeToBuyRice = json['how_do_you_like_to_buy_rice'];
    howDoYouLikeToTakeRice = json['how_do_you_like_to_take_rice'];
    knowingFromPushtichal = json['knowing_from_pushtichal'];
    name = json['name'];
    occupation = json['occupation'];

    whatKindOfRiceDoYouLike = json['what_kind_of_rice_do_you_like'];
    whichInfoExictedToBuyPushtichal =
    json['which_info_exicted_to_buy_pushtichal'];
    whichPacketDoYouLike = json['which_packet_do_you_like'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['age'] = this.age;
    data['customer_type'] = this.customerType;
    data['distance_of_pushtichal_shop'] = this.distanceOfPushtichalShop;
    data['do_you_want_to_know_pushtichal_in_future'] =
        this.doYouWantToKnowPushtichalInFuture;
    data['gender'] = this.gender;
    data['how_do_you_like_to_buy_rice'] = this.howDoYouLikeToBuyRice;
    data['how_do_you_like_to_take_rice'] = this.howDoYouLikeToTakeRice;
    data['knowing_from_pushtichal'] = this.knowingFromPushtichal;
    data['name'] = this.name;
    data['occupation'] = this.occupation;

    data['what_kind_of_rice_do_you_like'] = this.whatKindOfRiceDoYouLike;
    data['which_info_exicted_to_buy_pushtichal'] =
        this.whichInfoExictedToBuyPushtichal;
    data['which_packet_do_you_like'] = this.whichPacketDoYouLike;
    return data;
  }
}