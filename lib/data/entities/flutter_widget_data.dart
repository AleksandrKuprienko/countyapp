class FlutterWidgetData {
  final String country;

  FlutterWidgetData(this.country);

  FlutterWidgetData.fromJson(Map<String, dynamic> json) : country = json['country'];

  Map<String, dynamic> toJson() => {
        'country': country,
      };
}
