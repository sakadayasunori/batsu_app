class HomeController < ApplicationController
  def top
    @new_tasks = Task.order(created_at: :desc).limit(4)
    @update_tasks = Task.order(updated_at: :desc).limit(4)
  end
  
  def about
  end

  def mypage
  end
end
