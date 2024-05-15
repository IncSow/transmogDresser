# frozen_string_literal: true

class Category < ApplicationRecord
  belongs_to :user
  belongs_to :piece
end
