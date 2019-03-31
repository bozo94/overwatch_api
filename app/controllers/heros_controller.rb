class HerosController < ApplicationController
  before_action :set_hero, except: :index

  # GET /api/heros
  def index
    @heros = Hero.all
    json_response(@heros)
  end
  # GET /api/heros/:id
  def show
    json_response(@hero)
  end
  # GET /api/heros/:id/;abilities
  def abilities
    json_response(@hero.abilities)
  end

  private
    def set_hero
      @hero = Hero.find(params[:id])
    end
end