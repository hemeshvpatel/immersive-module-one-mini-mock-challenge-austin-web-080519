class Book

    attr_accessor :author, :title
    attr_reader :word_count

    @@all = []

    def initialize(title, author, word_count)
        @title = title
        @author = author
        @word_count = word_count
        @@self << self
    end

    self.all
        @@all
    end

end
