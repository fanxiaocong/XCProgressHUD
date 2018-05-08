
Pod::Spec.new do |s|
  s.name             = 'XCProgressHUD'
  s.version          = '0.0.2'
  s.summary          = '基于JGProgressHUD，封装了几款简单的提示框'
  
  s.description      = <<-DESC
XCProgressHUD，基于JGProgressHUD，封装了几款简单的提示框
                       DESC

  s.homepage         = 'https://github.com/fanxiaocong/XCProgressHUD'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'fanxiaocong' => '1016697223@qq.com' }
  s.source           = { :git => 'https://github.com/fanxiaocong/XCProgressHUD.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'
  s.source_files = 'XCProgressHUD/Classes/**/*'
  
  s.dependency 'JGProgressHUD', '~> 2.0.2'
end
