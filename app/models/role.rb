class Role < ActiveRecord::Base
    has_many :auditions

    def actors
        self.auditions.map do |audition|
            audition.actor
        end
    end

    def locations
        self.auditions.map do |audition|
            audition.location
        end
    end

    def lead
        auditions.find { |audition| audition.hired == true } || "no actor has been hired for this role"
    end

    def understudy
        auditions.find { |audition| audition.hired == true && audition != self.lead } || "no actor has been hired for this role"
    end
end