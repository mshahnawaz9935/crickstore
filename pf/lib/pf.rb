class GolfProfanityChecker
	def initialize
	   # this is the words to be used by the checker
	   
	   # Simple Arraay
	   @words = ["golf","driver","ball","tee"]
	   
	   # Ruby Hash
           @wordSub = {
	      "golf" => "g*lf",
	      "driver" => "dr!v£r",
	      "ball" => "b@ll",
	      "tee" => "t££"
	   }
	end

	# method will return true is there are any dodgy words in the string
	def isProfane(str)
	  isProfane = false

	  @words.each {|x| 
	     if str.include?(x)
	       isProfane = true
	     end
	  }
	  return isProfane
	end

	# method will replace all dodgy words matched with a common word
	def filterProfanity(str)
          words = @wordSub.keys 
	  words.each {|x| 
	     if str.include?(x)
               str.gsub! x, '*£&^'    
	     end
	  }
	  return str 
	end

	# method will use the ruby hash to substitute pre defined word values
	def swapProfanity(str)
          words = @wordSub.keys 
	  words.each {|x| 
	     if str.include?(x)
               str.gsub! x, @wordSub[x]   
	     end
	  }
	  return str 
	end
end

g = GolfProfanityChecker.new()

if g.isProfane("I really love golf!!") then
   puts "Message is way too golfie!!"
end

puts g.filterProfanity("The last day I played golf I hit the driver 360 yards!!!");

puts g.swapProfanity("I got a golf ball and tee for XMas.....");


