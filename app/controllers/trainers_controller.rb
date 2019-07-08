class TrainersController < ApplicationController

    def index
        render json: Trainer.all.to_json(
            :except => [:created_at, :updated_at],
            :include => {
                :pokemons => {
                    :except => [:created_at, :updated_at,:specie_id],
                    :include => 
                    {
                        :specie => {:only => [:name]},
                        :moves =>{:only => [:name,:base_damage]}
                    }
                    }
                }
        )
    end
end
