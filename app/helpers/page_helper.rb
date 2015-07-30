module PageHelper
# calender helper
# this method is available across all views

	def calendar(year, month)
		current_time = Date.new(year, month)

		cal_heading = current_time.strftime("%B, %Y").to_s

		#puts out a value of 2
		day_of_week = current_time.wday

		#puts out a value of 31, represents the total amount of days in the month
		days_in_month = current_time.end_of_month.strftime("%d").to_i

		#puts out a value of 5(friday), represents the last day of the month
		end_of_month = current_time.end_of_month.strftime("%w").to_i

		#begin calendar table
		cal_str = "<table class='cal-table'>"

		#previous month and year
		prev_month = link_to("< prev", calendar_path(:month => month.to_i - 1, :year => year), :class => "prev_month")
		next_month = link_to("next >", calendar_path(:month => month.to_i + 1, :year => year), :class => "next_month")

		cal_str += "<caption class='cal-caption'>#{prev_month}#{cal_heading}#{next_month}</caption>"
		cal_str += "<thead>"
		cal_str += "<tr class='cal-heading-row'>"

		days = %w{Sunday Monday Tuesday Wednesday Thursday Friday Saturday}
		days.each do |day|
			cal_str += "<th>#{day}</th>"
		end

		cal_str += "</tr>"
		cal_str += "</thead>"
		# end table head

		cal_str += "<tbody>"
		cal_str += "<tr>"

		day = 0
		day_count = 1
		#add spaces upto first of month
		while (day < day_of_week)
			cal_str += "<td class='cal-cell'>&nbsp;</td>"
			day += 1
			day_count += 1
		end

		day = 1
		#print out days
		while (day <= days_in_month)
			cal_str += "<td class='cal-cell cal-active'>#{day}</td>"
			day += 1
			day_count += 1

			if (day_count > 7)
				cal_str += "<tr></tr>"
				day_count = 1
			end
		end

		#add spaces to end of calendar
		if (end_of_month < 6)
			ending = 6 - end_of_month
			ending.times do
				cal_str += "<td class='cal-cell'>&nbsp;</td>"
			end
		end

		cal_str += "</tr>"
		cal_str += "</tbody>"
		cal_str += "</table>"

		return cal_str.html_safe
	end
# end calender

end
