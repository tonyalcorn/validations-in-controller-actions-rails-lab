class Post < ActiveRecord::Base
    validates :title, presence: true
    validates :content, length: { minimum: 100 }

    selection = ["Fiction", "Non-Fiction"]
    validates :category, inclusion: { in: selection}

end
