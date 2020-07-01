class ListsController < ApplicationController
	def index
		@lists = List.order("id")
		@list = List.new()
	end

	# showは今回なしで

	# newもなし？

	def edit
		@list = List.find(params[:id])
	end

	def create
		@list = List.new(params[:list])
		if @list.save
			redirect_to :root, notice: 'やることリストを追加しました'
		else
			ridirect_to :root, notice: 'やることリストを追加できませんでした'
		end
	end

	def update
		@list = List.find(params[:id])
		@list.assign_attributes(params[:list])
		if @list.save
			redirect_to :root, notice: 'やることリストを編集しました'
		else
			redirect_to [:edit, @list], notice: 'やることリストを編集できませんでした'
		end
	end

	def destroy
		@list = List.find(params[:id])
		@list.destroy
		redirect_to :root, notice: 'やることリストを削除しました'
	end
end
