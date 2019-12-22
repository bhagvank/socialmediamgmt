class ArticlesController < ApplicationController
  def index
    @user = User.find(session[:user_id])      
    @articles = @user.articles
  end
 
  def show
    puts(session[:user_id])      
    @article = Article.find(params[:id])
  end
 
  def new
    @article = Article.new
  end
 
  def edit
    @article = Article.find(params[:id])
  end
 
  def create
      
    puts("userid ",session[:user_id])  
    @user = User.find(session[:user_id])
      
    @article = @user.articles.create(article_params)  
   
 
    if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end
 
  def update
    @article = Article.find(params[:id])
 
    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end
 
  def destroy
    @article = Article.find(params[:id])
    @article.destroy
 
    redirect_to articles_path
  end
 
  private
    def article_params
      params.require(:article).permit(:title, :text,session[:user_id])
    end
end