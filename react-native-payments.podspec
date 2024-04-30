require 'json'
pkg = JSON.parse(File.read("package.json"))

Pod::Spec.new do |s|
  s.name             = "react-native-payments"
  s.version          = pkg["version"]
  s.summary          = pkg["description"]
  s.requires_arc     = true
  s.license          = pkg["license"]
  s.homepage         = pkg["homepage"]
  s.author           = pkg["author"]
  s.source           = { :git => pkg["repository"]["url"], :tag => "#{s.version}" }
  s.source_files     = 'ios/**/*.{h,m}'
  s.platform         = :ios, "8.0"
  s.requires_arc     = true

  s.dependency 'React'

  # Stripe support on this fork is completely untested. This change to depend on
  # stripe 23 is to fix simulator build issues in our app. We do not use stripe,
  # and I make no guarantee that this works.
  s.dependency 'Stripe', '~> 23'
end
