import GooglePlaces

extension GMSPlacePhotoMetadata{
    func toJson() -> Dictionary<String, Any?>{
        return ["attributions": attributions?.string,
                "width": UInt64(maxSize.width),
                "height": UInt64(maxSize.height),
                "ref": String(hashValue) // A work around
                ]
    }
}
