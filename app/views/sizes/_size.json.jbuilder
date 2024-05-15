# frozen_string_literal: true

json.extract! size, :id, :fr_name, :eu_name, :us_name, :created_at, :updated_at
json.url size_url(size, format: :json)
