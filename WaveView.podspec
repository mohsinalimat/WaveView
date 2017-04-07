
Pod::Spec.new do |s|
  s.name         = 'WaveView'
  s.summary      = 'Create Wave View And Wave Progress View Easily.'
  s.version      = '0.1.1'
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.authors      = { 'shangshanbin' => 'shangshanbin@gmail.com' }
  s.social_media_url = 'http://www.elenx.com'
  s.homepage     = 'https://github.com/skting/WaveView'
  s.platform     = :ios, '8.3'
  s.ios.deployment_target = '8.3'
  s.source       = { :git => 'https://github.com/skting/WaveView.git', :tag => s.version.to_s }
  
  s.requires_arc = true
  s.source_files = 'WaveView/**/*.{h,m}'


end
