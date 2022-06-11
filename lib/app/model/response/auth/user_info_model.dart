import 'package:background_json_parser/background_json_parser.dart';

class GetUserInfoModel extends IBaseModel<GetUserInfoModel> {
  GetUserInfoModel({
    this.complete,
    this.data,
    this.token,
  });

  bool? complete;
  UserInfoModel? data;
  String? token;

  @override
  fromJson(Map<String, dynamic> json) => GetUserInfoModel(
        complete: json["complete"],
        data: UserInfoModel().fromJson(json["data"]),
        token: json["token"],
      );

  @override
  Map<String, dynamic> toJson() {
    throw UnimplementedError();
  }
}

class UserInfoModel extends IBaseModel<UserInfoModel> {
  UserInfoModel({
    this.id,
    this.firstName,
    this.lastName,
    this.email,
    this.mobilePhone,
  });

  int? id;
  String? firstName;
  String? lastName;
  String? email;
  String? mobilePhone;

  @override
  fromJson(Map<String, dynamic> json) {
    id = json["id"];
    firstName = json["first_name"];
    lastName = json["last_name"];
    email = json["email"];
    mobilePhone = json["mobile_phone"];
    return this;
  }

  @override
  Map<String, dynamic> toJson() => {
        "id": id,
        "mobile_phone": mobilePhone,
        "first_name": firstName,
        "last_name": lastName,
        "email": email,
      };
}
