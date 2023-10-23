class Poet < ApplicationRecord
    has_many :poems, dependent: :destroy

    def print_report
        puts name
        puts "Year of birth: #{year}"
        puts "Number of poems: #{poems.count}"
    end

    def restart
        self.year = 2023
        puts "Changed year to #{year}"

    end
end