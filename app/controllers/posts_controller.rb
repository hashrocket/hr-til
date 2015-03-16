class PostsController < ApplicationController
  expose(:developer) { current_developer }
end
