
# This podspec currently only supports dependencies (available as source) that compile
# with Swift 3.2 which BrickKit (2.4.0) currently requires with published podspec.
# https://github.com/CocoaPods/Specs/search?p=1&q=BrickKit&type=Commits
# https://github.com/wayfair/brickkit-ios/issues/207
#
# AppDeveloperKit is a binary distribution and is not an issue.
#
# echo "3.2" > .swift-version
# pod spec lint AppDeveloperKit-Library.podspec
#
# Follow future developments on Swift versioning at:
# https://github.com/CocoaPods/CocoaPods/milestone/33
# https://github.com/CocoaPods/CocoaPods/issues/7134
#


Pod::Spec.new do |s|

# Note:  Any dashes in name will need to be switched to underscores when they are entered in the AppDeveloperKit Mac app UI.
#        Cocoapods will do this automatically for the pod installation.
s.name              = 'AppDeveloperKit-Library'

s.version           = '1.0.7'
s.summary           = 'Library for use with AppDeveloperKit.'
s.homepage          = 'https://github.com/AppDeveloperKit/AppDeveloperKit-Library'

s.author            = { 'Name' => 'Scott Carter' }
s.license           = { :type => 'Custom', :file => 'LICENSE' }


s.platform          = :ios

s.ios.deployment_target = '11.0'

# Local development
# s.source = { :path => "." }

s.source = { :git => 'https://github.com/AppDeveloperKit/AppDeveloperKit-Library.git', :tag => s.version.to_s }

# s.source_files = 'Library/**/*.{swift}'


s.subspec 'Core' do |core|
core.dependency 'AppDeveloperKit'
end

s.subspec 'Brick' do |brick|
brick.source_files   = 'Library/Brick/*', 'AppDeveloperKit-Library-Dev/AppDeveloperKit/ADK_BrickBaseViewController.*'
brick.dependency 'BrickKit', '2.4.0'    # 2.4.2 (support for Swift 4) not yet pushed to spec trunk
brick.dependency 'AppDeveloperKit-Library/Core'
end


end


