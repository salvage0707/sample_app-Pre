class PostsController < ApplicationController
  def new
  	#空のモデルをビューへ渡す
  	@post = Post.new
  end

  def create
  	#ストロングパラメーターを使用
  	post = Post.new(post_params)
  	#dbへ保存する
  	post.save
  	#新規投稿画面へリダイレクト
  	redirect_to '/posts/new'
  end

  private

  	def post_params
  		params.require(:post).permit(:title, :body, :category)
  	end
end
