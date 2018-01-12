Pod::Spec.new do |s|

  s.name         = "ChieryBusiness1"
  s.version      = "0.0.9"
  s.summary      = "业务1"
  s.description  = <<-DESC
                    业务1 业务1
                   DESC

  s.homepage     = "https://github.com/chieryd/ChieryBusiness1"
  s.license      = { :type => 'MIT', :text => <<-LICENSE
                    Copyright 2012
                    Permission is granted to...
                  LICENSE
                }


  s.author             = { "chieryw" => "chieryw@163.com" }
  s.platform     = :ios, "9.0"

  s.source       = { :git => "https://github.com/chieryd/ChieryBusiness1.git", :tag => "#{s.version}" }

  s.dependency "ChieryJumpHandleLib"
  s.dependency "ChieryConfigure"
  s.dependency "ChieryCommonKitLib"
  s.dependency "ChieryHomePageLib"
  s.dependency "ChieryVCControllerLib"

  s.source_files  = "ChieryBusiness1/*.{h,m}"
  s.public_header_files = "ChieryBusiness1/*.h"
  s.requires_arc = true

end
