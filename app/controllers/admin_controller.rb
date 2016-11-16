class AdminController < ApplicationController
  def page
      @posts = Post.all
  end

def approved
  @post = Post.find(params[:post])
  @post.update_attribute(:approved, true)
  redirect_to admin_page_path
end
end
