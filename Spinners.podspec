
Pod::Spec.new do |s|
  s.name             = 'Spinners'
  s.version          = '1.0'
  s.summary          = 'Dynamic Activity Indicators.'
  s.swift_version    = '4.0'
  s.description      = <<-DESC
Dynamic Activity Indicators. Easy to use and would take only a maximum of 4 lines of code.
                       DESC
 
  s.homepage         = 'https://github.com/cyrilivargarcia/Spinners'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Cyril Garcia' => 'garciacy@bycyril.com' }
  s.source           = { :git => 'https://github.com/cyrilivargarcia/Spinners.git', :tag => s.version.to_s }
 
  s.ios.deployment_target = '10.0'
  s.source_files = 'Spinners/*.swift'
 
end
