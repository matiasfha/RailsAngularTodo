class WelcomeController < ApplicationController
  def index
  	@tasks = Task.order("priority DESC, created_at").limit(7)
  end
end
