class PokemonsController < ApplicationController
    def show
        render json: Pokemon.find(params[:id]).to_json(
            :except => [:created_at, :updated_at],
                    :except => [:created_at, :updated_at,:specie_id],
                    :include => 
                    {
                        :specie => {:only => [:name]},
                        :moves =>{:only => [:id,:name,:base_damage]}
                    }
        )
    end

    def update
        pokemon = Pokemon.find(params[:id])
        pokemon.update(pokemon_params)

        render json: pokemon.to_json(
            :except => [:created_at, :updated_at],
                    :except => [:created_at, :updated_at,:specie_id],
                    :include => 
                    {
                        :specie => {:only => [:name]},
                        :moves =>{:only => [:id,:name,:base_damage]}
                    }
        )
    end

    def reset
        pokemons = Pokemon.all
        pokemons.each do |pokemon|
            pokemon.update(current_hp: pokemon.max_hp)
        end
        render json: {message:"HP Reset is complete. Page will now reload."}
    end

    def index
        render json: Pokemon.all.to_json(
            :except => [:created_at, :updated_at],
                    :except => [:created_at, :updated_at,:specie_id],
                    :include => 
                    {
                        :specie => {:only => [:name]},
                        :moves =>{:only => [:id,:name,:base_damage]}
                    }
        )
    end

    private

    def pokemon_params
        return params.require(:pokemon).permit(:current_hp)
    end

end
