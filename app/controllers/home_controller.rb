class HomeController < ApplicationController
  def top
    @new_tasks = Task.order(created_at: :desc).limit(12)
    @update_tasks = Task.order(updated_at: :desc).limit(12)
  end

  def about
  end

  def mypage
  end
end
