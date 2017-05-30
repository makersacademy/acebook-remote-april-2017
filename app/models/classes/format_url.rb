class Classes::FormatUrl

  def return_formatted_url(post)
    if has_link?(post)
      post_array = post.split(" ")
      post_array.each do |word|
        format_link(word)
      end
      post = post_array.join(" ")
    end
    return post
  end

  private

  def has_link?(post)
    if post.include?("http") || post.include?("www")
      return true
    end
  end

  def format_link(word)
    if word.start_with?("www")
      word.replace("<a href=\"http://#{word}\"> #{word} </a>")
    elsif word.start_with?("http")
      word.replace("<a href=\"#{word}\"> #{word} </a>")
    end
  end

end
