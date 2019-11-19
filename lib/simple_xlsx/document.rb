module SimpleXlsx
  class Document
    def initialize(io)
      @sheets = []
      @io = io
    end

    attr_reader :sheets

    def add_sheet name, &block
      escaped_name = name.gsub(/[^a-zA-Z0-9\-_\w]/, '')
      stream = @io.open_stream_for_sheet(@sheets.size)
      @sheets << Sheet.new(self, escaped_name, stream, &block)
    end

    def has_shared_strings?
      false
    end

  end
end
