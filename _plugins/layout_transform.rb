module Jekyll
  class Layout
    alias plain_init initialize

    def initialize *args
      plain_init *args
      self.content = _renderer.convert content
    end

    def extname
      @ext
    end
  end
end
