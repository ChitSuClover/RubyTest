class Contact < ApplicationRecord
  validates :name, :email, presence: true
  validates :content, length: {in: 1..140}
end
