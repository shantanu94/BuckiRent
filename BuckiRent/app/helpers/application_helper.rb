# Created by Shantanu Bhardwaj on 4/18/16
# Added page header

module ApplicationHelper
	def page_header(text)
		content_for(:page_header) { text.to_s }
	end
end
