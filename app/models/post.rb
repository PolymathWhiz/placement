class Post < ApplicationRecord
  belongs_to :employer
  validates_presence_of :title
end
