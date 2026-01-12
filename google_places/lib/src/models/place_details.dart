part of '../../google_places_sdk.dart';

/// Represents a particular physical place.
///
/// A Place encapsulates information about a physical location, including its name, address, and any other information we might have about it.

class PlaceDetails {
  /// The unique ID of this Place.
  ///
  /// This ID can be defined in a [fetchPlaceDetails], to look up the same place at a later time. Place ID data is constantly changing, so it is possible for subsequent requests using the same ID to fail (for example, if the place no longer exists in the database). A returned Place may also have a different ID from the ID specified in the request, as there may be multiple IDs for a given place.
  final String? placeId;

  /// The name of this Place.
  ///
  /// The name is localized according to the locale specified in:
  /// ```dart
  /// GooglePlaces.initialize(String apiKey, Locale locale)
  /// ```
  /// if set; otherwise it uses the device's locale.
  final String? name;

  /// The location of this Place.
  ///
  /// The location is not necessarily the center of the Place, or any particular entry or exit point, but some arbitrarily chosen point within the geographic extent of the Place.
  final LatLngCoords? latLng;

  /// A human-readable address for this Place. May return null if the address is unknown.
  ///
  /// The address is localized according to the locale specified in:
  /// ```dart
  /// GooglePlaces.initialize(String apiKey, Locale locale)
  /// ```
  /// if set; otherwise it uses the device's locale.
  final String? address;

  /// Represents a particular physical place.
  ///
  /// A Place encapsulates information about a physical location, including its name, address, and any other information we might have about it.
  ///
  /// For more information, visit [Place](https://developers.google.com/maps/documentation/places/android-sdk/reference/com/google/android/libraries/places/api/model/Place).
  const PlaceDetails({
    this.placeId,
    this.name,
    this.latLng,
    this.address,
  });

  /// A method to copy and replace attributes.
  ///
  /// If the parameter is not passed, it will stay the same.
  /// However if a ```null``` is passed, it will replace the old value.
  PlaceDetails copyWith({
    String? placeId,
    String? name,
    LatLngCoords? latLng,
    String? address,
  }) {
    return _$PlaceDetailsCopyWith(
      this,
      placeId: placeId,
      name: name,
      latLng: latLng,
      address: address,
    );
  }

  /// A method to convert the class to JSON based ```Map```.
  Map<String, dynamic> toJson() => _$PlaceDetailsToJson(this);

  /// A constructor to parse a JSON ```Map```.
  factory PlaceDetails.fromJson(Map<String, dynamic> json) =>
      _$PlaceDetailsFromJson(json);

  @override
  String toString() {
    return 'PlaceDetails('
        'placeId: $placeId, '
        'name: $name, '
        'latLng: $latLng, '
        'address: $address, '
        ')';
  }
}

PlaceDetails _$PlaceDetailsCopyWith(
  PlaceDetails value, {
  Object? placeId = const _ArgNotPassed(),
  Object? name = const _ArgNotPassed(),
  Object? latLng = const _ArgNotPassed(),
  Object? address = const _ArgNotPassed(),
}) {
  return PlaceDetails(
    placeId: placeId is _ArgNotPassed ? value.placeId : placeId as String?,
    name: name is _ArgNotPassed ? value.name : name as String?,
    latLng: latLng is _ArgNotPassed ? value.latLng : latLng as LatLngCoords?,
    address: address is _ArgNotPassed ? value.address : address as String?,
  );
}

Map<String, dynamic> _$PlaceDetailsToJson(PlaceDetails value) {
  return {
    'placeId': value.placeId,
    'name': value.name,
    'latLng': value.latLng?.toJson(),
    'address': value.address,
  }..removeWhere((key, value) => value == null);
}

PlaceDetails _$PlaceDetailsFromJson(Map<String, dynamic> json) {
  return PlaceDetails(
    placeId: json['placeId'],
    name: json['name'],
    latLng: json['latLng'] == null
        ? null
        : LatLngCoords.fromJson(Map<String, dynamic>.from(json['latLng'])),
    address: json['address'],
  );
}
