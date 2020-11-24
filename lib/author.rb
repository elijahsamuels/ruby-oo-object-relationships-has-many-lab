require "pry"

class Author

    @@all = []

    attr_accessor :name
  
    def initialize(name)
      @name = name
      @@all << self
    end


    def posts
        Post.all.select { |s| s.author == self }
    end

        # takes in an argument of a post and associates that post with the author by telling the post that it belongs to that author
   
    def add_post(post)
        post.author = self
    end

        #takes in an argument of a post and associates that post with the author by telling the post that it belongs to that author

    def add_post_by_title(post_title)
        newPost = Post.new(post_title)
        add_post(newPost)

    end

    def self.post_count
        Post.all.count
    end


end