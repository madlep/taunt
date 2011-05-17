class Taunt
  
  def initialize(taunt_home)
    @taunt_home = taunt_home
    @taunts = Dir.glob("#{taunt_home}/.taunt/**/*.{#{supported_formats.join(',')}}")
  end
  
  def taunt!
    taunt = @taunts[rand(@taunts.length)]
    unless darwin?
      puts "only do OS X so far sorry :("
      exit 1
    end
      
    unless taunt
      puts "you need to put some taunt sounds in #{@taunt_home}"
      exit 1
    end
    process = fork do
      `afplay #{taunt} &`
    end
    Process.detach(process)
  end
  
  private
  def darwin?
    RUBY_PLATFORM =~ /darwin/
  end
  
  def supported_formats
    # afplay supports everything Quicktime does.
    # Quicktime supported formats from http://support.apple.com/kb/HT3775
    %w{m4a m4b m4p mp3 caf aiff au sd2 wav snd amr}    
  end
  
end