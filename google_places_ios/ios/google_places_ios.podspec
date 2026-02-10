#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint google_places_ios.podspec` to validate before publishing.
#

Pod::Spec.new do |s|
  s.name             = 'google_places_ios'
  s.version          = '2.0.0'
  s.summary          = 'iOS Pod for Google Places'
  s.description      = <<-DESC
iOS Pod project for Google Places SDK.
DESC

  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }

  s.source_files     = 'Classes/**/*'
  s.dependency       'Flutter'

  # IMPORTANT: must be >= 14.0 for modern GooglePlaces XCFramework
  s.platform         = :ios, '14.0'

  # IMPORTANT:
  # - DO NOT exclude arm64 for simulator
  # - Only exclude legacy i386
  s.pod_target_xcconfig = {
    'DEFINES_MODULE' => 'YES',
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386'
  }

  s.swift_version    = '5.0'
  s.static_framework = true

  # IMPORTANT:
  # Use XCFramework-based Google Places SDK (supports simulator)
  s.dependency 'GooglePlaces', '>= 7.3.0'
end
