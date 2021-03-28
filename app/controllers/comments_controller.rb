class CommentsController < ApplicationController
  def index
    # For URL like /Blogposts/1/comments
    # Get the Blogpost with id=1
    @blogpost = Blogpost.find(params[:blogpost_id])
    # Access all comments for that Blogpost
    @comments = @blogpost.comment    
  end

  def show
    @blogpost = Blogpost.find(params[:blogpost_id])
    # For URL like /Blogposts/1/comments/2
    # Find an comment in Blogposts 1 that has id=2
    @comment = @blogpost.comment.find(params[:id])
  end

  def new
    @blogpost = Blogpost.find(params[:blogpost_id])
    # Associate an comment object with Blogpost 1
    @comment = @blogpost.comment.build
  end

  # POST /Blogposts/1/comments
  def create
    @blogpost = Blogpost.find(params[:blogpost_id])
    # For URL like /Blogposts/1/comments
    # Populate an comment associate with Blogpost 1 with form data
    # Blogpost will be associated with the comment
    # @comment = @blogpost.comments.build(params.require(:comment).permit!)
    @comment = @blogpost.comment.build(params.require(:comment).permit(:message))
    if @comment.save
      # Save the comment successfully
      redirect_to blogpost_comment_url(@blogpost, @comment)
    else
      render :action => "new"
    end
  end
  

  def edit
    @blogpost = Blogpost.find(params[:blogpost_id])
    # For URL like /Blogposts/1/comments/2/edit
    # Get comment id=2 for Blogpost 1
    @comment = @blogpost.comment.find(params[:id])
  end

  def update
    @blogpost = Blogpost.find(params[:blogpost_id])
    @comment = Comment.find(params[:id])
    if @comment.update(params.require(:comment).permit(:message))
      # Save the comment successfully
      redirect_to blogpost_comment_url(@blogpost, @comment)
    else
      render :action => "edit"
    end
  end

  # DELETE /movies/1/reviews/2
  def destroy
    @blogpost = Blogpost.find(params[:blogpost_id])
    @comment = Comment.find(params[:id])
    @comment.destroy
    respond_to do |format|
      format.html { redirect_to blogpost_comments_path}
      format.json { head :ok }
    end
  end
  
    
end
