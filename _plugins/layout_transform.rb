module Jekyll
  class Layout
    alias plain_init initialize

    def initialize *args
      plain_init *args
      self.content = transform
    end
  end
end
