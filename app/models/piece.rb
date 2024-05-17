# frozen_string_literal: true

class Piece < ApplicationRecord
    belongs_to :user

    has_many :body_part
    has_many :category
    has_many :size

end
