class Rolodex
	attr_accessor :contacts
	
	def initialize
		@contacts_id = 1000
		@contacts = Array.new
	end

	def contacts
		@contacts
	end

	def add_contact(contact)
		contact.id = @contacts_id
		@contacts << contact
		@contacts_id += 1

		return contact.id
	end

# calling find_contact on user inputted id; searching through array called @contacts; piping each contact through .id method and see if there's a
# match to id
	def find_contact(id)
		@contacts.find { |contact| contact.id == id }
	end


	def delete_contact(id)
		# find_contact(id)
		# if !find_contact(id)
		# 		puts "Sorry, I can't find what you're looking for!"
		# 	else
		# 		@contacts[contact_index].delete
		# end

		if contact = find_contact(id)
			@contacts.delete(contact)
			#contact_index = @contacts.index(contact)					#look inside @contacts array, find index for requested contact, put into contact_index
		else
																				
			puts "Sorry, I can't find what you're looking for!"
		end
	end

def display_contacts
	puts @contacts 
end



#line 45 means "we are calling .delete method on the found index in the @contacts array"


	end
