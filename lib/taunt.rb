class Taunt
  
  def initialize(taunt_home)
    @taunt_home = taunt_home
    @taunts = Dir.glob("#{taunt_home}/.taunt/**/*.{#{supported_formats.join(',')}}")
  end
  
  def taunt!
    taunt = @taunts[rand(@taunts.length)]
    unless taunt
      puts "you need to put some taunt sounds in #{@taunt_home}"
      exit 1
    end
    process = fork do
      Process.daemon
      `#{play_command} #{taunt} &`
    end
    Process.detach(process)
  end
  
  private
  def play_command
    %w{afplay aplay}.each {|command|
      return command if system("which #{command}")
    }
  end
  
  def supported_formats
    # afplay supports everything Quicktime does.
    # Quicktime supported formats from http://support.apple.com/kb/HT3775
    %w{m4a m4b m4p mp3 caf aiff au sd2 wav snd amr}    
  end
  
end
