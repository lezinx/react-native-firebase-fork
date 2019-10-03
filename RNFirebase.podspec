Pod::Spec.new do |s|
  s.name                = "RNFirebase"
  s.version             = "5.5.6"
  s.description         = "A well tested, feature rich Firebase implementation for React Native, supporting iOS & Android. Individual module support for Admob, Analytics, Auth, Crash Reporting, Cloud Firestore, Database, Dynamic Links, Functions, Messaging (FCM), Remote Config, Storage and more."
  s.summary             = <<-DESC
                            A well tested feature rich Firebase implementation for React Native, supporting iOS & Android.
                          DESC
  s.homepage            = "http://invertase.io/oss/react-native-firebase"
  s.license             = "Apache-2.0"
  s.authors             = "Invertase Limited"
  s.source              = { :git => "https://github.com/invertase/react-native-firebase.git", :tag => "v#{s.version}" }
  s.social_media_url    = 'http://twitter.com/invertaseio'
  s.platform            = :ios, "9.0"
  s.source_files        = 'RNFirebase/**/*.{h,m}'
  s.dependency          'React'
  s.dependency          'Firebase/Core'
  s.subspec 'Crashlytics' do |cs|
    cs.dependency 'Fabric'
    cs.dependency 'Crashlytics'
  end
  # allow this package to be used with use_frameworks!
  s.static_framework = true
end
