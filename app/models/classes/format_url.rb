class Classes::FormatUrl

  def return_formatted_url(post)
    if post.include?("http") || post.include?("www")
      post_array = post.split(" ")
      post_array.each do |word|
        if word.start_with?("www") || word.start_with?("http")
          word = "<a href=\"#{word}\"> #{word} </a>"
        end
      end
      post = post_array.join(" ")
    end
    return post
  end

end
