def fasik_1(family_name="", first_name="")
	greeting = "fasik kun\n"
	unless family_name == "" && first_name == ""
	greeting += "Vlad\n" + first_name + " " + family_name
	end
greeting
end

puts        fasik_1("ya to4no tak 4emunibud nau4us?", "ne, nu 9 prosto ne yveren")