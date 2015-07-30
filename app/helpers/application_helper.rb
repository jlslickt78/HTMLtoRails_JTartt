module ApplicationHelper
	def main_nav

		nav_str = "<ul>"
		nav_str += "<li>" + link_to("Home", page_index_path, class: (controller_name == "page" && action_name == "index" ? "current" : "")) + "</li>"
		nav_str += "<li>" + link_to("Products", store_index_path, class: (controller_name == "store" ? "current" : "")) + "</li>"

		nav_str += "<li>" + link_to("Blog", page_blog_path, class: (action_name == "blog" ? "current" : "")) + "</li>"
		nav_str += "<li>" + link_to("Articles", articles_path, class: (controller_name == "articles" ? "current" : "")) + "</li>"
		nav_str += "<li>" + link_to("Calendar", calendar_path, class: (action_name == "calendar" ? "current" : "")) + "</li>"
    nav_str += "<li>" + link_to("About", page_about_us_path, class: (action_name == "about_us" ? "current" : "")) + "</li>"
		nav_str += "<li>" + link_to("Contact", contact_us_path, class: (action_name == "contact_us" ? "current" : "")) + "</li>"

		if user_signed_in?
			nav_str += "<li class='user-signed-in'>#{current_user.email}</li>"
			nav_str += "<li class='logout'>" + link_to("logout", destroy_user_session_path, :method => 'delete', class:'logout') + "</li>"

		else
			nav_str += "<li class='nav-login'>" + link_to("Login", new_user_session_path, class:'login') + "</li>"
		end

		return nav_str.html_safe
	end

	def footer_nav
		nav_str = "<ul>"
		nav_str += "<li>" + link_to("Home", root_path) + "</li>"
		nav_str += "<li>" + link_to("Products", store_index_path) + "</li>"
		nav_str += "<li>" + link_to("Blog", page_blog_path) + "</li>"
		nav_str += "<li>" + link_to("Articles", articles_path) + "</li>"
		nav_str += "<li>" + link_to("Calendar", calendar_path) + "</li>"
		nav_str += "<li>" + link_to("About", page_about_us_path) + "</li>"
		nav_str += "<li>" + link_to("Contact", contact_us_path) + "</li>"

		return nav_str.html_safe
	end

	#comment rating
	def hearts(num_hearts)
		return (image_tag("heartRatingIcon.png") * num_hearts).html_safe
	end

end
