#require 'calabash-android/calabash_steps'
#puts "2222"
Then(/^I tap on ([\w \& ]+)$/) do |ops|
	if ops == "LeftMenu"
		touch("* id:'up'")
	elsif ops == "CarFinder"
		touch("* text:'Car Finder'")
	elsif ops == "More"
		touch("* text:'More'")
	elsif ops == "Application History"	
	    touch("* text:'Application History'")
	 elsif ops == "Scan & Shop"  
	    touch("* text:'Scan & Shop'")	
	 elsif ops == "BackButton"
	 	begin
	    	touch(query("ImageView")[0])	
	    rescue
	    end
	    begin
	    	touch(query("ImageView")[1]) 		
	    rescue 
	    end	   	
	else	
		puts "ID not Found"
	end
end

Then(/^wait ([\w]+) list to appear for ([\d]+) seconds$/) do |listname, timeval|
    if listname == "CarFinder" ||  listname == "More"
	   a=query("TextView", :text)
	   temp1 = a.length
	   puts a.length.to_s
	   sleep timeval.to_i
	   a=query("TextView", :text)
	   puts a.length.to_s
	   if (a.length == temp1)
		  fail("List not updated")
	   else
	   end
    end		
end

##Then I should see the CarFinder Listings

Then(/^I should see the ([\w \& ]+) Listings$/) do |listname|
	if listname == "CarFinder"
		var = query("TextView", :text)
		puts var
	elsif listname == "More"
		var = query("* id:'label_text_view'", :text)
		puts var
	elsif listname == "Application History"
	    var = query("* id:'label_text_view'", :text)
	    var = var + query("* id:'carDetailsTextView'", :text)
	    var = var + query("TextView", :text)
	    var = var + query("Button", :text)
	    var = var + query("* id:'button1'", :text)
	    puts var
	elsif listname ==  "Scan & Shop"
	    var = query("* id:'label_text_view'", :text)
	    var = var + query("* id:'buttonApply1'", :text)
	    puts var    	
	else
		puts "Wrong input"
	end	
end
