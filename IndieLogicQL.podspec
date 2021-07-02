Pod::Spec.new do |s|
  s.name             = 'IndieLogicQL'
  s.version          = '1.0.10'
  s.summary          = 'IndieLogicQL client setup with Indie Logic QL'
 
  s.description      = <<-DESC
  IndieLogicQL Apollo client setup to fetch events data from IndieLogic CMS
                       DESC
 
  s.homepage         = 'https://github.com/sumit-athon/IndieLogicQL'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Sumit' => 'sumit@athon.io' }
  s.source           = { :git => 'https://github.com/sumit-athon/IndieLogicQL.git', :tag => s.version.to_s }
  s.swift_version = '5.0'
  s.ios.deployment_target = '13.0'
  s.source_files = 'IndieLogicQL/GraphQL/*.swift'
 # s.resources    = 'IndieLogicQL/GraphQL/{*.graphql,*.json}'

 s.dependency 'Apollo', '~> 0.43.0'
end
