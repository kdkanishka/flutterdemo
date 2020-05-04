class Flag {
  String name;
  String code;

  Flag(this.name, this.code);

  //deserialization
  factory Flag.fromJson(Map<String, dynamic> json) {
    return Flag(json["name"], json["code"]);
  }

  //serialization
  Map<String, dynamic> toJson() {
    return {"name": name, "code": code};
  }
}
