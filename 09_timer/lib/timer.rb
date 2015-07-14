class Timer
	@seconds

	def initialize
		@seconds=0
	end
	def seconds
		@seconds=0
	end
	def seconds(*args)
		if !(args.length >0)
			@seconds=0
		else
		@seconds=args[0]
		end
	end

	def time_string
		timer_1=(@seconds% 10).to_s
		@seconds/=10
		timer_2=(@seconds% 10).to_s
		@seconds/=10
		timer_3=(@seconds% 10).to_s
		@seconds/=10
		timer_4=(@seconds% 10).to_s
		@seconds/=10
		timer_5=(@seconds% 10).to_s
		@seconds/=10
		timer_6=(@seconds% 10).to_s
		@seconds/=10
		
		format=(timer_6.to_s+timer_5.to_s+":"+timer_4.to_s+timer_3.to_s+":"+timer_2.to_s+timer_1.to_s).to_s
		format.to_s
	end

end

yeet=Timer.new
puts yeet.seconds

yeet.time_string



