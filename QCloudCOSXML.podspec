Pod::Spec.new do |s|
  s.name             = "QCloudCOSXML"
  s.version          = "0.0.1"
  s.summary          = "QCloudCOSXML 腾讯云iOS-SDK组件"

  s.homepage         = "https://cloud.tencent.com/"
  s.license          = 'MIT'
  s.author           = { "QCloud Terminal Team" => "QCloudTerminalTeam" }
  s.source           = { :git => "https://github.com/EricCheungSCUT/qcloud-sdk-ios.git", :tag => s.version.to_s }
  s.ios.deployment_target = '6.0'
  s.source_files = 'COSXML/Classes/**/*'
  s.dependency 'QCloudCore','0.0.1'
end
