class Fragment < ApplicationRecord
  belongs_to :story

  def previous_line
    if Fragment.any?
      Fragment.last.extract_last_sentence
    else
      empty_db_message
    end
  end

  def extract_last_sentence
    self.body.gsub /.*?['".!?]*\s*(['"]?[^.!?]+[.!?]+['"]?\s*)$/, "\\1"
  end

  private
  def empty_db_message
    'This story is brand new.  Good luck!'
  end
end