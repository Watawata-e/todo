class ListsController < ApplicationController
	def index
		@lists = List.order("id")
		@list = List.new()
	end

	# showは今回なしで

	# newもなし？

	def edit
	end

	def create
		@list = List.new(params[:list])
		if @list.save
			redirect_to({ action: :index }, notice: 'やることリストを追加しました')
		else
			ridirect_to({ action: :index }, notice: 'やることリストを追加できませんでした')
		end
	end

	def update
	end

	def destory
	end
end
