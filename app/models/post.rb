class Post < ApplicationRecord
	validates_presence_of :title, :date, :description, presence: true
end
