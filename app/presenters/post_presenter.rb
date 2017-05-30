module PostPresenter

  def time_stamp
    self.created_at.strftime('%H:%M')
  end

  def date_stamp
    self.created_at.strftime('%d/%m/%Y')
  end

end
