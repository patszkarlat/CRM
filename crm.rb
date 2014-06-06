require_relative 'contact'

class CRM
	attr_reader :name

	def initialize(name)
		@name = name
		@rolodex = Rolodex.new
	end

	def print_main_menu
	puts "[1] Add a new contact"
	puts "[2] Modify an existing contact"
	puts "[3] Delete a contact"
	puts "[4] Display all the contacts"
	puts "[5] Display an attribute"
	puts "[6] Exit"
	puts "Enter a number: "
	end

	def main_menu
	 	puts	"Welcome to #{@name}"
		print_main_menu	
		selection = gets.chomp.to_i
		call_option(selection)
	end

	def call_option(selection)
		case selection
		when 1
			add_new_contact
		when 2
			modify_contact
		when 3
			delete_contact
		when 4
			display_contacts
		when 5
			display_attribute
		when 6
			puts "See ya!"
			return
		else
			puts "Invalid option. Please try again :)"
		main_menu
		end
	end
	
	def add_new_contact
		print "Enter first name:"
		first_name = gets.chomp
		print "Enter last name:"
		last_name = gets.chomp
		print "Enter email address:"
		email = gets.chomp
		print "Enter a note:"
		note = gets.chomp
		contact = Contact.new(first_name, last_name, email, note)
		@rolodex.add_contact(Contact.new(first_name, last_name, email, note))
		main_menu
	end
end

class Rolodex
	def initialize
		@contacts_id = 1000
		@contacts = []
	end

	def add_contact(contact)
		@contacts << contact
		contact.id = @contact_id
		@contact_id += 1
	end
end

crm = CRM.new("Bitmaker Labs CRM")
crm.main_menu
contact = Contact.new(first_name, last_name, email, note)







	






	# 	add_new_contact if selection == 1
	# modify_contact if selection == 2
	# delete_contact if selection == 3
	# display_contacts if selection == 4
	# display_attribute if selection == 5
	# exit_crm_if selection == 6
