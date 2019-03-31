class AbilitiesController < ApplicationController
  before_action :set_ability, except: :index

  # GET /api/abilities
  def index
    @abilities = Ability.all
    json_response(@abilities)
  end
  # GET /api/abilities/:id
  def show
    json_response(@ability)
  end

  private

    def set_ability
      @ability = Ability.find(params[:id])
    end
end