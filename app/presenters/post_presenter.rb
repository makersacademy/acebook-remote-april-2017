module PostPresenter

  def format_time
    "posted at #{self.created_at.strftime('%H:%M')} on #{self.created_at.strftime('%d/%m/%Y')}"
  end
  
end
