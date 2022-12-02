class Pet < ActiveRecord::Base
    belongs_to :shelter
    belongs_to :adopter

    def self.oldest
        self.order(:age).last
    end

    # def self.highest_age
    #     Pet.maximum :age 

    # end
    # def self.oldest
    #     Pet.find_by "age =?", Pet.highest_age
    # end

    # def self.oldest
    #     old_pet = self.maximum(:age)
    #     self.find_by "age =?", old_pet
    # end

    def self.average_age
        self.all.sum(:age) / self.all.length
    end

    def in_dog_years
        if self.species.downcase == "dog" 
            self.age * 5
        end
    end

end
