Pod::Spec.new do |s|
  s.name = 'MoreCharacterSets'
  s.version = '1.0.3'
  s.summary = 'A CharacterSet extension that provides character sets for Unicode General Categories.'
  s.description = <<-DESC
This library adds additional character sets that correspond to Unicode General Categories (<http://www.unicode.org/versions/Unicode9.0.0/ch04.pdf#G134153>).
DESC
  s.homepage = 'https://github.com/SwiftBlues/MoreCharacterSets'
  s.license = { :type => 'Apache 2.0', :file => 'LICENSE' }
  s.author = { 'Alexander Tovstonozhenko' => 'a.tovstonozhenko@mozidev.com' }
  s.source = { :git => 'https://github.com/SwiftBlues/MoreCharacterSets.git', :tag => s.version.to_s }
  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.9'
  s.tvos.deployment_target = '9.0'
  s.watchos.deployment_target = '2.0' 
  s.source_files = 'Sources/**/*'
  s.resource_bundle = { 'MoreCharacterSets' => 'Resources/**/*' }
end

