class PostsController < ApplicationController
  def listings
  	@posts=Post.all
    @categories = Category.all
  end
  def new
  	@post = Post.new
    @categories = Category.all
  end

  def show
     @post = Post.find(params[:id])
  end 

  def create
    @post = Post.new({title: post_params[:title], description: post_params[:description], price: post_params[:price], contact: post_params[:contact], category_id: post_params[:category_id]})
    @categories = Category.all
    
    respond_to do |format|
      if @post.save

        if !post_params[:image].blank?
          @image = Image.create({image: post_params[:image], post_id: @post.id})
        end
        if !post_params[:category].blank?
          @category = Category.create({category: post_params[:category], post_id: @post.id})
        end
        format.html { redirect_to listings_path, notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, post: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

private

    def post_params
      params.require(:post).permit(:title, :description, :image, :price, :contact, :category_id)
    end
end
