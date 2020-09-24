class Destination < ApplicationRecord
    has_many :posts
    has_many :bloggers, through: :posts

    def last_five
        self.posts.last(5)
    end 

    def most_likes
        self.posts.max_by{|post| post.likes}
    end 

    def average_age
        total_age = self.bloggers.sum{|blogger| blogger.age}
        total_age / self.bloggers.count

    end

end
