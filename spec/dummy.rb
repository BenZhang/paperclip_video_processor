class Dummy < ActiveRecord::Base
  include Paperclip::Glue
  
  has_attached_file :asset,
    :url => File.join(File.dirname(__FILE__), 'uploads/:style/:filename'),
    :path => File.join(File.dirname(__FILE__), 'uploads/:style/:filename'),
    :processors => [:paperclip_video_processor],
    :styles => { :flv => ['960x600', 'flv'], :mp4 => ['960x600', 'mp4'], :mov => ['960x600', 'mov'] }
end