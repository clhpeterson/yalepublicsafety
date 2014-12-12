module CasesHelper
	# start_time and end_time are strings of the form "hh:mm"
	def get_time_range(start_time, end_time)
		new_start = DateTime.parse(start_time)
		new_end = DateTime.parse(new_end)
		new_start.year = 2000
		new_start.day = 1
		new_start.month = 1
		new_end.year = 2000
		new_start.day = 1
		new_start.month = 1
		return new_start..new_end
	end

	def get_date_range(start_date, end_date)
		return Date.strptime(start_date, "%m/%d/%Y")..Date.strptime(end_date, "%m/%d/%Y")
	end
end