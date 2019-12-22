class CommentsController < ApplicationController
  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.create(comment_params)
    redirect_to article_path(@article)
  end
  def destroy
    puts("destroying comment")  
    @article = Article.find(params[:article_id])
    puts("article", @article)   
    @comment = @article.comments.find(params[:id])
      puts("comment", @comment) 
    @comment.destroy
      puts("comment destroying") 
    redirect_to article_path(@article)
  end 
  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end
