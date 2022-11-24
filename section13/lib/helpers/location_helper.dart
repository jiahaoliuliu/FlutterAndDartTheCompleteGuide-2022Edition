import 'dart:io';
import 'dart:convert';

import 'package:http/http.dart' as http;

import 'keys.dart';

class LocationHelper {
  static String generateLocationPreviewImage(
      {double latitude, double longitude}) {
    return 'https://maps.googleapis.com/maps/api/staticmap?center=&$latitude,longitude&zoom=13&size=600x300&maptype=roadmap&markers=color:red%7Clabel:C%7C$latitude,$longitude&key=$GOOGLE_API_KEY';
  }

// https://developers.google.com/maps/documentation/geocoding/requests-reverse-geocoding
  static Future<String> getPlaceAddress(
      double latitude, double longitude) async {
    print(latitude);
    print(longitude);
    final url = Uri.https("maps.googleapis.com",
        '/maps/api/geocode/json?latlng=$latitude,$longitude&key=$GOOGLE_API_KEY');
    final response = await http.get(url);
    // As the API key is not working for now, let's return some default address
    // return json.decode(response.body)['results'][0]['formatted_address'];
    return "Single business tower";
  }
}
