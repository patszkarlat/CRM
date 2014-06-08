class Rolodex
	def initialize
		@contacts_id = 1000
		@contacts = Array.new

	end

	def contact
		@contacts
	end

	def add_contact(contact)
		@contacts << contact
		contact.id = @contact_id
		@contacts_id += 1
	end
end

	def delete_contact
		print "Enter a contact id: "
		id = gets.chomp
		@contacts.each do |contact|
		if contact.id == id 
		print "Are you sure you want to delete this contact? Type y for yes, and n for no: "
		answer = gets.chomp
		if answer == "y" 
		@contacts.delete(contact) #hey @contacts! delete this (contact)! IS WHAT THIS MEANS
		end
	end
end
end









	
