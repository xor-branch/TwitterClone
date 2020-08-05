class Blog < ApplicationRecord
  validates :content, presence:{
    message: "post empty"
  }
  validates_length_of :content, maximum:140, message: "exceeds 140 characters"

end
