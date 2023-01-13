// ignore_for_file: file_names

class Users {
  Users({
      required this.name,
      required this.profile,
      required this.age,
      required this.id,});

  Users.fromJson(dynamic json) {
    name = json['name'];
    profile = json['profile'];
    age = json['age'];
    id = json['id'];
  }
  String name = '';
  String profile = '';
  String age = '';
  String id = '';

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['profile'] = profile;
    map['age'] = age;
    map['id'] = id;
    return map;
  }

}