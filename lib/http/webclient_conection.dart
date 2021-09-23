import 'package:http/http.dart';
import 'package:http_interceptor/http_interceptor.dart';
import 'package:my_bussiness/http/interceptors/client_interceptors.dart';

final baseUrl = Uri.https('projectpotenjas.herokuapp.com/api/', 'customers');

final Client client = InterceptedClient.build(
  interceptors: [LoggingInterceptor()],
  requestTimeout: Duration(seconds: 5),
);
