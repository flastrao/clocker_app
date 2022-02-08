const String staggingUrl =
    'http://ec2-177-71-159-147.sa-east-1.compute.amazonaws.com:12345/api';

const String localUrl = "http://192.168.1.3:12345/api";

class GenericProvider {
  String getStaginURL() {
    return staggingUrl;
  }

  String getLocalUrl() {
    return localUrl;
  }
}
