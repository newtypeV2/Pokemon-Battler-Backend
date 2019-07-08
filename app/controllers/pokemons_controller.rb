class PokemonsController < ApplicationController
    def show
        render json: Pokemon.find(params[:id]).to_json(
            :except => [:created_at, :updated_at],
                    :except => [:created_at, :updated_at,:specie_id],
                    :include => 
                    {
                        :specie => {:only => [:name]},
                        :moves =>{:only => [:name,:base_damage]}
                    }
        )
    end
end
