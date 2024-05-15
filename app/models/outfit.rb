class Outfit < ApplicationRecord
  belongs_to :user
  has_many :body_parts, through: :pieces
  has_many :categoriess, class_name: "categories", through: :pieces
end
