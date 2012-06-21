require 'rubygems'
require 'paperclip/railtie'
require 'active_record'
require 'paperclip_video_processor'
require 'dummy'
require 'fileutils'

FIXTURES_DIR = File.join(File.dirname(__FILE__), "fixtures")
config = YAML::load(IO.read(File.dirname(__FILE__) + '/database.yml'))
ActiveRecord::Base.logger = Logger.new(File.dirname(__FILE__) + "/debug.log")
ActiveRecord::Base.establish_connection(config['test'])
Paperclip.logger = ActiveRecord::Base.logger
root = File.expand_path(File.join(File.dirname(__FILE__), '..'))

ActiveRecord::Base.connection.create_table :dummies, :force => true do |t|
  t.string   :name
  t.string   :asset_file_name
  t.string   :asset_content_type
  t.integer  :asset_file_size
  t.datetime :asset_updated_at
end