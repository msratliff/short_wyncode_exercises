require 'csv'

class Mailer
	def send_email(name, email_address)
		if email_address.strip.end_with? "securedomain.net"
			@attempts_to_secure = @attempts_to_secure ? @attempts_to_secure+1 : 1
			if @attempts_to_secure < 2
				return false
			end
		end

		true
	end
end

arr_of_arrs = CSV.read("potd_email.csv")

email_service = Mailer.new


arr_of_arrs.each do |arr|
	if !arr[2].strip.end_with? "wyncode.co"
		p arr
		email_sent = email_service.send_email("#{arr[0]} #{arr[1]}", "#{arr[2]}") 
		if email_sent == true
			puts email_sent
		else 
			redo
		end
    end
end