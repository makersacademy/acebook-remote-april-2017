class Post < ApplicationRecord
  def format_time
    return "posted at #{self.created_at.strftime('%H:%M')} on #{self.created_at.strftime('%d/%m/%Y')}"
  end
end
