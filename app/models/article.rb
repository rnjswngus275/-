class Article < ApplicationRecord
    has_many :comments, dependent: :destroy
    #article has_many comments
    
end
