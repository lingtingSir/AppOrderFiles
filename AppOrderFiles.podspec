Pod::Spec.new do |s|
s.name         = "AppOrderFiles"
s.version      = "0.0.1"
s.summary      = "Generating order files for Mach-O using Clang."
s.description  = <<-DESC
Generating order files for Mach-O using Clang. Improving App Performance.
DESC
s.homepage     = "https://github.com/yulingtianxia/AppOrderFiles"

s.license = { :type => 'MIT', :file => 'LICENSE' }
s.author       = { "yulingtianxia" => "yulingtianxia@gmail.com" }
s.social_media_url = 'https://twitter.com/yulingtianxia'
s.source       = { :git => "https://github.com/yulingtianxia/AppOrderFiles.git", :tag => s.version.to_s }

s.source_files = "AppOrderFilesSample/AppOrderFiles/*.{h,m}"
s.public_header_files = "AppOrderFilesSample/AppOrderFiles/*.h"

s.ios.deployment_target = "8.0"
s.osx.deployment_target = "10.8"
s.tvos.deployment_target = "9.0"
s.watchos.deployment_target = "2.0"
s.requires_arc = true
s.user_target_xcconfig = { 'OTHER_CFLAGS' => '-fsanitize-coverage=func,trace-pc-guard', 'OTHER_SWIFT_FLAGS' => '-sanitize-coverage=func -sanitize=undefined' }
end

