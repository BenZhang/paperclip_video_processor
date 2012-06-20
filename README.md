paperclip_video_processor
=========================

Installation
===========
First of all install ffmpeg on your computer. This is the whole point to get the video processor to work.

If you are using MAC, and with brew installed.

```ruby
brew install ffmpeg
```
Ubuntu Precise Pangolin 12.04 LTS and Ubuntu Oneiric Ocelot 11.10

```ruby
sudo apt-get install ffmpeg libavcodec-extra-53
```
Ubuntu Natty Narwhal 11.04 and Ubuntu Lucid Lynx 10.04 LTS

```ruby
sudo apt-get install ffmpeg libavcodec-extra-52
```

In order to make video converting to work as many cases as it can, I make audio_codec and codec as copy. 

Add this line to your Gemfile

```ruby
gem 'paperclip_video_processor'
```

Configuration
=============

You will have to specify the processor explicitly by adding :paperclip_video_processor to your processors attribute. If you want to convert to different formats, you can make use of the styles attribute.
I will recommend you use dynamic configurations if you want to process image files. Here is an example.

```ruby
has_attached_file :asset,
  :processors => lambda { |upload| upload.processors },
  :styles => lambda { |upload| upload.instance.video? ? { :flv => ['960x600', 'flv'], :mp4 => ['960x600', 'mp4'] } : { :small => "40x40", :med => "120x120" } }
```

Please feel free to shoot me an email (bzbnhang@gmail.com) if you occur any bug.