class StringCalculator 
    def self.add(*args)
        case args.first
        when String then 0
        when Integer then args.sum 
        else 0 
        end              
    end

end

