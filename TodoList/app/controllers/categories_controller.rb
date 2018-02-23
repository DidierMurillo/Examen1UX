class CategoriesController < ApplicationController
  def index
  	@categories = Category.all
  	@todos =Todo.all
  end

 

  def new
  @category = Category.new
end
 
def edit
  @category = Article.find(params[:id])
end
 
def create
  @category = Category.new(category_params)
  @category.save
  redirect_to "http://localhost:3000/categories"
end


def update
  @category = Category.find(params[:id])
 
  if @category.update(category_params)
    
  else
    render 'edit'
  end
end
 
	

  def show
    
  end

   def new
  	
  end

  def destroy
  @category = Category.find(params[:id])
  @category.destroy
 
  redirect_to "http://localhost:3000/categories"
  end

  private
  def category_params
    params.require(:category).permit(:name)
  end

end
