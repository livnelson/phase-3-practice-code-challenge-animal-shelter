class Adopter < ActiveRecord::Base
    has_many :pets
    has_many :shelters, through: :pets

    def full_name
        self.first_name + " " + self.last_name
    end

    def adopt(pet)
        unless pet.adopted? 
            pet.update(adopted?: true, adopter_id: self.id)
        end
    end

    def fav_pet
        # species = self.pets.map do |p|
        #     p.species
        # end
        # puts species_hash = species.tally
        # species_hash.sort_by {|k,v| v }.reverse.first.first
        # binding.pry

        # return nil if self.pets.count == 0
        # self.pets.order(species: :desc).first.species

        self.pets
            .group_by {|pet| pet.species}
            .max_by {|species| species.count}
            .first
            # binding.pry
    end
end
