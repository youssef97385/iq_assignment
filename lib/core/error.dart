
class NetworkException implements Exception{

  List<String> error;

  NetworkException({this.error});
}

class UnAuthException implements Exception{

  String error;

  UnAuthException({this.error});
}