require 'spec_helper'

describe Paperclip::PaperclipVideoProcessor do
  
  describe 'should convert the format' do
    after(:each) do
      FileUtils.rm_rf File.join(File.dirname(__FILE__), 'uploads') 
    end
    
    it 'convert mov' do
      dummy = Dummy.create(name: 'dummy1', :asset => File.open(File.join(File.dirname(__FILE__), 'fixtures/01.mov')))
      dummy.should_not be_nil
      dummy.asset.should_not be_nil
      File.exists?(dummy.asset.path(:flv)).should be_true
      File.exists?(dummy.asset.path(:mov)).should be_true
      File.exists?(dummy.asset.path(:mp4)).should be_true
    end
    
    it 'convert mp4' do
      dummy = Dummy.create(name: 'dummy1', :asset => File.open(File.join(File.dirname(__FILE__), 'fixtures/01.mp4')))
      dummy.should_not be_nil
      File.exists?(dummy.asset.path(:flv)).should be_true
      File.exists?(dummy.asset.path(:mov)).should be_true
      File.exists?(dummy.asset.path(:mp4)).should be_true
    end
  end
  
end