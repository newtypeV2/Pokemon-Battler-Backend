class TrainersController < ApplicationController

    def index
        render json: Trainer.all.to_json(
            :except => [:created_at, :updated_at],
            :include => {
                :pokemons => {
                    :except => [:created_at, :updated_at],
                    :include => 
                    {
                        :specie => {:only => [:name]},
                        :moves =>{:only => [:id,:name,:base_damage]}
                    }
                    }
                }
        )
    end

    def show
        render json: Trainer.find(params[:id]).to_json(
            :except => [:created_at, :updated_at],
            :include => {
                :pokemons => {
                    :except => [:created_at, :updated_at],
                    :include => 
                    {
                        :specie => {:only => [:name]},
                        :moves =>{:only => [:id,:name,:base_damage]}
                    }
                    }
                }
        )
    end
end
