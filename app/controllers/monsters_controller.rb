# frozen_string_literal: true

class MonstersController < ApplicationController
  before_action :set_monster, only: %i[show edit update destroy]

  # GET /monsters or /monsters.json
  def index
    @monsters = Monster.all
  end

  # GET /monsters/1 or /monsters/1.json
  def show; end

  # GET /monsters/new
  def new
    @monster = Monster.new
  end

  # GET /monsters/1/edit
  def edit; end

  # POST /monsters or /monsters.json
  def create
    @monster = Monster.new(monster_params)

    respond_to do |format|
      if @monster.save
        format.html { redirect_to @monster, notice: 'Monster was successfully created.' }
        format.json { render :show, status: :created, location: @monster }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @monster.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /monsters/1 or /monsters/1.json
  def update
    respond_to do |format|
      if @monster.update(monster_params)
        format.html { redirect_to @monster, notice: 'Monster was successfully updated.' }
        format.json { render :show, status: :ok, location: @monster }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @monster.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /monsters/1 or /monsters/1.json
  def destroy
    @monster.destroy!

    respond_to do |format|
      format.html { redirect_to monsters_path, status: :see_other, notice: 'Monster was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_monster
    @monster = Monster.find(params.expect(:id))
  end

  # Only allow a list of trusted parameters through.
  def monster_params
    params.expect(monster: %i[name monster_type hit_points attack_power])
  end
end
