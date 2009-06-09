begin
  require 'jsmin'
rescue LoadError => e
  puts 'JSMin is required. Install it with gem install jsmin'
  exit
end

class Js2bookmarklet
  VERSION = '0.0.1'

  def initialize(input = "", options = {})
    @in = input
    @out = ""
  end

  def bookmarkletify
    minify
    @out
  end

  private
    def minify
      @out = JSMin::minify(@in)
      @out.sub!(/\A\n/, "") # Remove 1st blank line
    end
end
