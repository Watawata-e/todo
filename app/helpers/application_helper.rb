module ApplicationHelper
	def page_title
		title = "Watas-TodoList"
		title = @page_title + " - " + title if @page_title
		title
	end
end
