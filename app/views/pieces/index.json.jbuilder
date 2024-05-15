# frozen_string_literal: true

json.array! @pieces, partial: 'pieces/piece', as: :piece
