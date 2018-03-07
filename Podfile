platform :ios, '11.0'

use_frameworks!

source 'https://github.com/CocoaPods/Specs.git'

# Specify the pods that need to use Swift 4 or 3.2
#
# Reference:  https://github.com/CocoaPods/CocoaPods/issues/6791
# All pods not specified use setting set by Xcode/CocoaPods.
#
swift_32 = ['']
swift4 = ['BrickKit']

post_install do |installer|
    installer.pods_project.targets.each do |target|
        
        # After a pod install (version 1.3.1) we currently see a recommendation to turn on whole
        # module optimization for Release build.   The following will make this change so that I don't
        # see the warning.
        #
        # References: https://github.com/CocoaPods/CocoaPods/issues/4439
        #             https://github.com/CocoaPods/CocoaPods/issues/6863
        #
        target.build_configurations.each do |config|
            if config.name == 'Release'
                config.build_settings['SWIFT_OPTIMIZATION_LEVEL'] = '-Owholemodule'
                else
                config.build_settings['SWIFT_OPTIMIZATION_LEVEL'] = '-Onone'
            end
        end


        swift_version = nil
        
        if swift_32.include?(target.name)
            swift_version = '3.2'
        end
        
        if swift4.include?(target.name)
            swift_version = '4.0'
        end
        
        if swift_version
            target.build_configurations.each do |config|
                config.build_settings['SWIFT_VERSION'] = swift_version
            end
        end
    end
end


target 'AppDeveloperKit-Library-Dev' do
    pod 'AppDeveloperKit'
    pod 'BrickKit', '2.4.3'
end

