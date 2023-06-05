#
# Be sure to run `pod lib lint DawnKeyManagement.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'DawnKeyManagement'
  s.module_name      = 'Wallet'
  s.version          = '0.1.3'
  s.summary          = 'A cocoapods wrapper for https://github.com/dawnwallet/dawn-key-management.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  The Dawn Wallet Key Management repo provides a new SDK that allows you to manage, create, encrypt wallets and sign transactions on Ethereum. This package leverages the Secure Enclave to keep your keys protected, by using a secret in the Secure Enclave to encrypt a user private key.
  DESC

  s.homepage         = 'https://github.com/dawnwallet/dawn-key-management'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'oauth2' => 'masha@redquirrel.com' }
  s.source           = { :git => 'https://github.com/FlorenceX-Inc/dawn-key-management.git' } # :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '16.0'
  s.swift_version = '5.6'

  s.source_files = "DawnKeyManagerFW/**/*.{h,m,swift}"

  # s.subspec 'Model' do |ms|
  #   ms.source_files = 'Classes/Model/**/*.swift'
  #   ms.dependency 'CryptoSwift'
  # end

  # s.subspec 'Keychain' do |ks|
  #   ks.source_files = 'Classes/Keychain/**/*'
  #   ks.dependency 'DawnKeyManagement/Model'
  # end

  # s.subspec 'Wallet' do |ws|
  #   ws.source_files = 'Classes/Wallet/**/*'
  #   ws.dependency 'DawnKeyManagement/Keychain'
  #   ws.dependency 'DawnKeyManagement/Model'
  #   ws.dependency 'MnemonicSwift'
  #   ws.dependency 'secp256k1.swift'
  # end

  # Possibly useful config
  s.xcconfig = { 'BUILD_LIBRARY_FOR_DISTRIBUTION' => 'YES' }
  # s.static_framework = true

  s.pod_target_xcconfig = {
    'DEFINES_MODULE' => 'YES'
  }

  s.requires_arc = true

  # s.module_map = './DawnKeyManagement.modulemap'
  # s.static_framework = true

  # s.resource_bundles = {
  #   'DawnKeyManagement' => ['DawnKeyManagement/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
