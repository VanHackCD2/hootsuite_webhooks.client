class ReceivedPostsController < ApplicationController
	before_action :set_received_post, only: [:show, :destroy]

	def index
		@received_posts = ReceivedPost.all.order(created_at: :desc)
	end

	def show
	end

	def create
		@received_post = ReceivedPost.new(received_post_params)

		@received_post.save

		render :index
	end

	def destroy
		@received_post.destroy

		@received_posts = ReceivedPost.all

		render :index
	end

private

	def set_received_post
		@received_post = ReceivedPost.find(params[:id])
	end

	def received_post_params
	  params.permit(:message)
	end
end
