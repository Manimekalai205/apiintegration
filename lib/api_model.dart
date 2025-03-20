class APIIntegrationModel {
  int? id;
  String? title;
  String? body;

  APIIntegrationModel({this.id, this.title, this.body});

  factory APIIntegrationModel.fromJson(Map<String, dynamic> json) {
    return APIIntegrationModel(
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }
}
