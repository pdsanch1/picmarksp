class CommentsController < ApplicationController
  # GET /comments
  # GET /comments.json
  
  
  # POST /comments
  # POST /comments.json
  
  def create
    @comment = Comment.new(:comment => params[:comment][:comment], :picture_id => params[:id])
    @comment.save
    
    @picture = Picture.find_by_id(params["id"])
    @comment = Comment.new

    redirect_to picture_url(@picture.id)  
  end
  
  
  # def index
  #   @comments = Comment.all
  # 
  #   respond_to do |format|
  #     format.html # index.html.erb
  #     format.json { render json: @comments }
  #   end
  # end

  # GET /comments/1
  # GET /comments/1.json
  # def show
  #   @comment = Comment.find(params[:id])
  # 
  #   respond_to do |format|
  #     format.html # show.html.erb
  #     format.json { render json: @comment }
  #   end
  # end

  # GET /comments/new
  # GET /comments/new.json
  # def new
  #   @comment = Comment.new
  # 
  #   respond_to do |format|
  #     format.html # new.html.erb
  #     format.json { render json: @comment }
  #   end
  # end

  # GET /comments/1/edit
  # def edit
  #   @comment = Comment.find(params[:id])
  # end



  # DELETE /comments/1
  # DELETE /comments/1.json
  # def destroy
  #   @comment = Comment.find(params[:id])
  #   @comment.destroy
  # 
  #   respond_to do |format|
  #     format.html { redirect_to comments_url }
  #     format.json { head :no_content }
  #   end
  # end
end
