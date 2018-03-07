
Pod::Spec.new do |s|

# Note:  Any dashes in name will need to be switched to underscores when they are entered in the AppDeveloperKit Mac app UI.
#        Cocoapods will do this automatically for the pod installation.
s.name              = 'AppDeveloperKit-Library'

s.version           = '1.0.11'
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
brick.dependency 'BrickKit', '2.4.3'
brick.dependency 'AppDeveloperKit-Library/Core'
end


end


