class Author

attr_accessor :name

@@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def books
        Book.all.select{|book| book.author == self}
    end

    def write_book(title, word_count)
        Book.new(title, self, word_count)
    end

    def total_words
        self.books.reduce(0) {|sum,book| sum + book.word_count}
    end

    def self.most_words
       #self.all.max {|a,b | a.total_words <==> b.total_words}
        author_name_sorted = Author.all.sort_by {|author|author.total_words}
        author_wc_sorted = Author.all.map {|author| author.total_words}
        result = "#{author_name_sorted.last} #{author_wc_sorted.last}"
    end

end


