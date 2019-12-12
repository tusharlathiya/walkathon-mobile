class Dashboard {
  final String message;

  Dashboard(dynamic response):
    this.message = response['message'];
}