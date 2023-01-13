class UserSqlModel {
  int? id;
  String? uname;
  String? email;
  String? password;
  String? mobileNo;

  UserSqlModel({this.id, this.uname, this.email, this.password, this.mobileNo});

  UserSqlModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    uname = json['Uname'];
    email = json['Email'];
    password = json['Password'];
    mobileNo = json['MobileNo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['Uname'] = this.uname;
    data['Email'] = this.email;
    data['Password'] = this.password;
    data['MobileNo'] = this.mobileNo;
    return data;
  }
}
