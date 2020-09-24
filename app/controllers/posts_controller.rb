class PostsController < ApplicationController

    def index
        @posts = Post.all 
    end

    def show
        @post = Post.find(params[:id])
    end

    def new
        @post = Post.new
        @bloggers = Blogger.all
        @destinations = Destination.all
    end

    def create
        new_post = Post.new(post_params)

        if !new_post.valid? #if charcater is NOT valid, meaning the data is wrong 
            # if errors, redirect_to the new form WITH errors available to us for user to see
                # byebug
                flash[:errors] = new_post.errors.full_messages #add errors from model to our flash hash
                redirect_to new_post_path #redirect
            else
                new_post.save #save 
                redirect_to post_path(new_post) #go to show page of THAT post
            end

    end

    private 

    def post_params
        params.require(:post).permit(:title, :content, :blogger_id, :destination_id)
    end 

end
