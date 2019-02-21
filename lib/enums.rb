module SettingsGroup
    GROUP = [
        GENERAL = :general,
        WAREHOUSE = :warehouse
    ]

end

class Enum
    include SettingsGroup

    def show
     puts GENERAL
    end

end



as = Enum.new
puts Enum::GROUP