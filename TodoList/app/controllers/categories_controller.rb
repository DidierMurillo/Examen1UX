class CategoriesController < ApplicationController
  def index
  	@categories = Category.all
  end

 

  def new
  @category = Category.new
end
 
def edit
  @article = Article.find(params[:id])
end
 
def create
  @category = Category.new(category_params)
 
  if @category.save
    redirect_to "http://localhost:3000/categories"
  else
    render 'new'
  end
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
