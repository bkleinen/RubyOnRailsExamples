FactoryGirl.define  do
	factory :thing, class: Thing do
		name "Kabel"
		description "langes Kabel"
	end
	factory :other_thing, class: Thing do | dagobert |
		dagobert.name "Computer"
		dagobert.description "Floppy"
	end
	
end