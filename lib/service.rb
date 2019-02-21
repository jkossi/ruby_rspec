class Service
  def self.call(args, &block)
    new(args, &block).execute
  end

  

end

module Utils

    def set_vars(raw)
        instance_variables.each do |var|
            instance_variable_set(var, raw[var.to_s.delete('@').to_sym])
        end
    end


end


class ProductCreator < Service

    include Utils

    attr_accessor :currency_code, :currency_symbol, :timezone, :date_format

    def initialize(raw)
        @currency_code, @currency_symbol, @timezone, @date_format = nil

        set_vars(raw)

        # instance_variables.each do |var|
        #     instance_variable_set(var, raw[var.to_s.delete('@').to_sym])
        # end

        # @raw = raw

    end

    def to_hash
        hash = {}
        instance_variables.each {|var| hash[var.to_s.delete('@').to_sym] = instance_variable_get(var) }
        hash
      end
    
    def list
        # instance_variables
        # instance_variables.each do |var|
            # instance_variable_set(var)
        # end
    end

    def execute; end
end


  p1 = ProductCreator.new(currency_code: 'GHS' )

  p p1.to_hash



