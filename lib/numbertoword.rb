require "numbertoword/version"

module Numbertoword
  class Convert
    ONES = ['zero','one','two','three','four','five','six','seven','eight','nine']
    TEENS = ['eleven','twelve','thirteen','fourteen','fifteen','sixteen','seventeen','eighteen','nineteen']   
    TENS = ['ten','twenty','thirty','forty','fifty','sixty','seventy','eighty','ninety']
    PARTS = [[1000000, 'million'], [1000, 'thousand'], [100, 'hundred'], [10, ''], [1, '']]

    def num_to_word(n)
      # Make sure input is an integer
      unless n.class < Numeric
        raise ArgumentError
      end
      
      # Make sure input is in range
      unless n.between?(1,999999999)
      	raise ArgumentError
      end

      str = ""
      PARTS.each do |part_integer, part_in_word|

      	# Skip through the PARTS array to find the place to start
        next if n < part_integer
         
        d = n / part_integer
        n = n % part_integer

        case part_integer
        when 10
          if d == 1 && n != 0
          	str << TEENS[n-1]
          else
          	str << TENS[d-1] + " "
          end
        when 1
          str << ONES[d]
        else
          str << "#{num_to_word(d)} #{part_in_word} " if d > 0
        end
      end
      str
    end

  end
end
