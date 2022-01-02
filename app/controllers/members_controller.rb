class MembersController < ApplicationController
  def index
    @courses = Course.all.limit(3)
    @latest_courses = @courses.order(created_at: :desc)
  end

  def members
    @users = User.all.order(created_at: :desc)
  end
end