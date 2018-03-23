class CommentsController < ApplicationController
 # before_action :authenticate_user!, only: [:create , :update, :edit, :destroy]
  
 	def create
    
 		@post = Post.find(params[:comment][:id])
 		@comment = @post.comments.create( 
                                post_id: params[:comment][:id] , 
                                content: params[:comment][:content],
                                user_id: current_user.id  
                               )
 		
    @comment.save!



 	# 	redirect_to post_path(@post
  #     UserMailer.new_comment(@comment).deliver.now
  # )end

   def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    end
  end







  # def create

  #   @comment = Comment.create(
  #       post_id: params[:comment][:post_id],
  #       user_id: current_user.id,
  #       content: params[:comment][:content]
  #     )
  #   # redirect_to "/posts/#{params[:comment][:post_id]}"
  # end

 	# def index
 	# 	@comments = Comment.all
 	# end

 	# def show
 	# 	@comments = @post.comments.all
 	# 	@comment = @post.comments.build
 	# end

 	# def new
  #       @comment = Comment.new
 	# end

 	# def edit
 		
 	# end


  #   def create
  # 	@comment = Comment.create(
  # 			post_id: params[:comment][:post_id],
  # 			user_id: current_user.id,
  # 			content: params[:comment][:content]
  # 		)
  	
  # 	redirect_to "/posts/#{params[:comment][:post_id]}"
  #   end

  #    def destroy
  # 	if user_id == post.user_id || user_id == current_user.id
  # 		@comment.destroy
  # 	end
  # end


  #   private

  #       def comment_params
  #           params.permit(:content, :post_id)
  #       end


 
 
end
