class LoginRequestModel {
  Args? args;

  LoginRequestModel({this.args});

  LoginRequestModel.fromJson(Map<String, dynamic> json) {
    args = json['args'] != null ? Args.fromJson(json['args']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (args != null) {
      data['args'] = args!.toJson();
    }
    return data;
  }
}

class Args {
  String? email;
  String? password;
  String? module;

  Args({this.email, this.password, this.module});

  Args.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    password = json['password'];
    module = json['module'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['email'] = email;
    data['password'] = password;
    data['module'] = module;
    return data;
  }
}
