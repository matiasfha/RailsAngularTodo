class TasksController < ApplicationController
	def index
		render json: Task.where()
	end

	def show
		render json: Task.find(params[:id])
	end

	def priority
		render json: Task.where(:priority => params[:priority]).order('created_at')
	end

	def new 
		puts params[:task]
		task = Task.create!(task_params)
		render json: task
	end

	private
	def task_params    
		params.require(:task).permit(:description,:due_date,:priority)
	end
end
