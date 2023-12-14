class GetBuyShipRequestModel {
  FetchArgs? args;

  GetBuyShipRequestModel({this.args});

  GetBuyShipRequestModel.fromJson(Map<String, dynamic> json) {
    args = json['args'] != null ? new FetchArgs.fromJson(json['args']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.args != null) {
      data['args'] = this.args!.toJson();
    }
    return data;
  }
}

class FetchArgs {
  String? module;
  List<Where>? where;
  int? offset;
  int? limit;
  int? max;
  String? oauthToken;

  FetchArgs(
      {this.module,
        this.where,
        this.offset,
        this.limit,
        this.max,
        this.oauthToken});

  FetchArgs.fromJson(Map<String, dynamic> json) {
    module = json['module'];
    if (json['where'] != null) {
      where = <Where>[];
      json['where'].forEach((v) {
        where!.add(new Where.fromJson(v));
      });
    }
    offset = json['offset'];
    limit = json['limit'];
    max = json['max'];
    oauthToken = json['oauth_token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['module'] = this.module;
    if (this.where != null) {
      data['where'] = this.where!.map((v) => v.toJson()).toList();
    }
    data['offset'] = this.offset;
    data['limit'] = this.limit;
    data['max'] = this.max;
    data['oauth_token'] = this.oauthToken;
    return data;
  }
}

class Where {
  String? field;
  String? operator;
  List<String>? modules;
  String? condition;
  String? value;

  Where({this.field, this.operator, this.modules, this.condition, this.value});

  Where.fromJson(Map<String, dynamic> json) {
    field = json['field'];
    operator = json['operator'];
    modules = json['modules'].cast<String>();
    condition = json['condition'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['field'] = this.field;
    data['operator'] = this.operator;
    data['modules'] = this.modules;
    data['condition'] = this.condition;
    data['value'] = this.value;
    return data;
  }
}
