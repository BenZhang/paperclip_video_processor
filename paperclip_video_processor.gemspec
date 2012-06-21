# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "paperclip_video_processor/version"

Gem::Specification.new do |s|
  s.name        = "paperclip_video_processor"
  s.version     = PaperclipVideoProcessor::VERSION
  s.authors     = ["BenZhang"]
  s.email       = ["bzbnhang@gmail.com"]
  s.homepage    = "https://github.com/BenZhang/paperclip_video_processor"
  s.summary     = %q{Paperclip Video Processor}
  s.description = %q{Video Converter}

  s.rubyforge_project = "paperclip_video_processor"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  s.add_development_dependency "rspec"
  s.add_development_dependency "paperclip"
  # s.add_runtime_dependency "rest-client"
end
