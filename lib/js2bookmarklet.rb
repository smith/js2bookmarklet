require 'rubygems'
begin
  require 'jsmin'
rescue LoadError => e
  puts 'JSMin is required. Install it with gem install jsmin'
  exit
end

class Js2bookmarklet
  LINK_TEXT = "Drag me to your bookmarks"

  def initialize(input = "", options = {})
    @in = input
    @out = ""
    @options = options
  end

  def to_bookmarklet
    minify
    escape
    wrap
    @out
  end

  private
    def minify
      @out = JSMin::minify(@in).sub(/\A\n/, "") # Minify & remove 1st blank line
    end

    def add_link
      title = @options["title"] ? " title=\"#{@options["title"]}\"" : ""
      text = @options["text"] ? @options["text"] : LINK_TEXT

      @out = "<a href='#{@out}'#{title}>#{text}</a>"
    end

    def wrap
      @out = "javascript:(function()%7B#{@out}%7D)()"
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
