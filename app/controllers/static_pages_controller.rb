class StaticPagesController < ApplicationController
  def home
  end

  def help
  end

  def about
  end

  def contact
  end

  def home
	  if signed_in?
		@microposts = current_user.microposts.build if signed_in?
		@feed_items = current_user.feed.paginate(page: params[:page])
	  end
  end
end
