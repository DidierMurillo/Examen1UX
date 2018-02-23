class TodosController < ApplicationController
	def index
  		@todos =Todo.all
  end

 

  def new
  @todo = Todo.new
end
 
def edit
  @todo = Todo.find(params[:id])
end
 
def create
  @todo = Todo.new(todo_params)
  @todo.save
  redirect_to "http://localhost:3000/todos"
  
  end


def update
  @todo = Todo.find(params[:id])
 
  if @todo.update(todo_params)
    
  else
    render 'edit'
  end
end
 
	

  def show
    
  end

   def new
  	
  end

  def destroy
  @todo = Todo.find(params[:id])
  @todo.destroy
 
  redirect_to "http://localhost:3000/categories"
  end

  private
  def todo_params
    params.require(:todo).permit(:level,:description)
  end 
end
