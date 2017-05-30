require 'rails_helper'
require 'posts_controller'

RSpec.describe PostHelper, :type => :helper do

  before(:each) do
    @post = Post.create(message: "https://www.youtube.com/")
  end

  describe '#return_formatted_url' do
    it ('returns a formatted url if present in a post') do
      expect(helper.return_formatted_url(@post.message)).to eq("<a href=\"https://www.youtube.com/\"> https://www.youtube.com/ </a>")
    end
  end
end
