class UserController < ApplicationController
if signed_in?
  index
else
  welcomeindex
end 
end
