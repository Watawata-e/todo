class TopController < ApplicationController
	def index
		@lists = List.order("id")
	end

	# showは今回なしで

	def new
	end

	def edit
	end

	def create
	end

	def update
	end

	def destory
	end
end
