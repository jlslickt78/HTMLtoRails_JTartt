class PageController < ApplicationController
  def index
		if flash[:notice] == nil
			flash[:notice] = ""
		end
  end

	def about_us
	end

	def contact_us

		flash[:notice] == nil
		@email = params[:email]
		if @email && @email.empty?
			flash[:notice] = "Please enter your email!"
		else
			flash[:notice] == nil
		end

		@last_name = params[:last_name]
		if @last_name && @last_name.empty?
			flash[:notice] = "Please enter your last name!"
		else
			flash[:notice] == nil
		end

		@first_name = params[:first_name]
		if @first_name && @first_name.empty?
			flash[:notice] = "Please enter your first name!"
		else
			flash[:notice] == nil
		end

		@phone = params[:phone]

		@contact_me = params[:contact_me]
		if @contact_me.nil?
			@contact_me = "email"
		end

		@reason_selected = params[:contact_reason]
		@contact_reason = ["Products", "Customer Support", "Technical Issue"]

		@question = params[:question]

		@subscribe_newsletter = params[:subscribe_newsletter]
		if @subscribe_newsletter == "1"
			@subscribe_newsletter = "yes"
		end

		@notify_products = params[:notify_products]
		if @notify_products == "1"
			@notify_products = "yes"
		end


		@commit = params[:commit].nil? ? false : true
	end

	def newsletter

	end

  def blog
  end

	def calendar
		@year = params[:year].to_i
		@month = params[:month].to_i

		if(@year == 0)
			@year = Time.now.strftime("%Y").to_i
		end

		if(@month == 0)
			@month = Time.now.strftime("%m").to_i
		end

	end

end
