class Numeric

  @@currencies = {'yen' => 0.013, 'euro' => 1.292, 'rupee' => 0.019, 'dollar' => 1.000}

  def method_missing(method_id)

      singular_currency = method_id.to_s.gsub( /s$/, '')

      if @@currencies.has_key?(singular_currency)
         self * @@currencies[singular_currency]

      else
         super
      end

  end

  #Created the 'in' function where:
  #@@currencies is a 'class instance' hash and currency types are
  #the keys to conversion values.  to_s.gsub strips 's' chars off
  #of the end of the currency type.  
  
  def in(currency)
     self * (1 / @@currencies[currency.to_s.gsub(/s$/, "")])
  end


end

p 5.dollars.in(:euros)
p 10000.euros.in(:dollars)
