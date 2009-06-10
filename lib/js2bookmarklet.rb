require 'rubygems'
begin
  require 'jsmin'
rescue LoadError => e
  puts 'JSMin is required. Install it with gem install jsmin'
  exit
end

class Js2bookmarklet
  VERSION = '0.0.2'
  LINK_TEXT = "Drag me to your bookmarks"

  def initialize(input = "", options = {})
    @in = input
    @out = ""
    @options = options
  end

  def to_bookmarklet
    minify
    escape
    add_link
    @out
  end

  private
    def minify
      @out = JSMin::minify(@in).sub(/\A\n/, "") # Minify & remove 1st blank line
    end

    def add_link
      title = @options["title"] ? " title=\"#{@options["title"]}\"" : ""
      text = @options["text"] ? @options["text"] : LINK_TEXT

      @out = "<a href='javascript:#{@out}'#{title}>#{text}</a>"
    end

    # Taken from rails escape_javascript
    def escape
      escape_map = {
        '\\'    => '\\\\',
        '</'    => '<\/',
        "\r\n"  => '\n',
        "\n"    => '\n',
        "\r"    => '\n',
        '"'     => '\\"',
        "'"     => "\\'" }

      @out.gsub!(/(\\|<\/|\r\n|[\n\r"'])/) { escape_map[$1] }
    end
end
