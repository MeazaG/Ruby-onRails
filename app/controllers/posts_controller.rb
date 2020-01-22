class PostController <ApplicationController
     # the route /postss will run the index method
     # and load the index.html.erb
     def index
#     @films = Film.all
      @posts = Posts.all.order('created_at DESC')
    # same as first line but sort in descending (DESC) order 
    # based on what time they were created
    
     end

     def new
  	@post = Post.new

 end

 def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to @post
    else
      render 'new'
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to @post
    else
      render 'edit'
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to root_path
  end

  private

  def post_params
  	# require the :post table
  	# security mesure called 'strong params' where we must permit
  	# the different attributes (:title, :description) that you 
  	# want to allow to be written to our database
  	params.require(:post).permit(:title, :description);
  end

end

