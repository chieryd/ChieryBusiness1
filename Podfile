platform :ios, '8.0'

ENV["COCOAPODS_DISABLE_STATS"] = "true"

source 'git@github.com:chieryd/ChieryPodSpec.git'

target 'ChieryBusiness1_a' do

	pod 'ChieryConfigure'
	pod 'ChieryHomePageLib'
	pod 'ChieryCommonKitLib'
	pod 'ChieryVCControllerLib'
	pod 'ChieryJumpHandleLib'

end

target 'ChieryBusiness1App' do

    pod 'ChieryConfigure'
    pod 'ChieryHomePageLib'
    pod 'ChieryCommonKitLib'
    pod 'ChieryVCControllerLib'
    pod 'ChieryJumpHandleLib'

end

post_install do |installer|
    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            xcconfig_path = config.base_configuration_reference.real_path
            xcconfig = File.read(xcconfig_path)
            
            if xcconfig.include? ' -l"ChieryJumpHandle"'
                if xcconfig.include? ' -l"ChieryJumpHandle_a"'
                    puts "Remove #{target.name} ChieryJumpHandleLib from link flag"
                    c1 = xcconfig.sub(' -l"ChieryJumpHandle_a"', '')
                    File.open(xcconfig_path, "w") { |file| file << c1 }
                end
            end
            
            xcconfig = File.read(xcconfig_path)
            if xcconfig.include? 'GCC_PREPROCESSOR_DEFINITIONS = $(inherited)'
                puts "Append #{target.name} Precompile Define BETA_BUILD=1 DEBUG=1"
                c1 = xcconfig.sub('GCC_PREPROCESSOR_DEFINITIONS = $(inherited)', 'GCC_PREPROCESSOR_DEFINITIONS = $(inherited) BETA_BUILD=1 DEBUG=1')
                File.open(xcconfig_path, "w") { |file| file << c1 }
                else
                puts "Add #{target.name} Precompile Define BETA_BUILD=1 DEBUG=1"
                s1 = 'GCC_PREPROCESSOR_DEFINITIONS = $(inherited) BETA_BUILD=1 DEBUG=1'
                File.open(xcconfig_path, "a+") { |file| file.write("\n#{s1}") }
            end
        end
    end
end
