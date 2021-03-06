# frozen_string_literal: true

# Posting Name Method
class Comment < ApplicationRecord
  def poster_name
    User.find(user_id).name if user_id
  end
end
