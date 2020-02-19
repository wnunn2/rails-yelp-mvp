# frozen_string_literal: true

# app/models/review.rb
class Review < ApplicationRecord
  belongs_to :restaurant
  validates :rating, inclusion: { in: [0, 1, 2, 3, 4, 5] }, numericality: { only_integer: true }
  validates :content, presence: true
end
