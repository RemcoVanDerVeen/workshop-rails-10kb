class QuestRewardsController < ApplicationController
  before_action :set_quest_reward, only: %i[ show edit update destroy ]

  # GET /quest_rewards or /quest_rewards.json
  def index
    @quest_rewards = QuestReward.all
  end

  # GET /quest_rewards/1 or /quest_rewards/1.json
  def show
  end

  # GET /quest_rewards/new
  def new
    @quest_reward = QuestReward.new
  end

  # GET /quest_rewards/1/edit
  def edit
  end

  # POST /quest_rewards or /quest_rewards.json
  def create
    @quest_reward = QuestReward.new(quest_reward_params)

    respond_to do |format|
      if @quest_reward.save
        format.html { redirect_to @quest_reward, notice: "Quest reward was successfully created." }
        format.json { render :show, status: :created, location: @quest_reward }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @quest_reward.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /quest_rewards/1 or /quest_rewards/1.json
  def update
    respond_to do |format|
      if @quest_reward.update(quest_reward_params)
        format.html { redirect_to @quest_reward, notice: "Quest reward was successfully updated." }
        format.json { render :show, status: :ok, location: @quest_reward }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @quest_reward.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quest_rewards/1 or /quest_rewards/1.json
  def destroy
    @quest_reward.destroy!

    respond_to do |format|
      format.html { redirect_to quest_rewards_path, status: :see_other, notice: "Quest reward was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quest_reward
      @quest_reward = QuestReward.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def quest_reward_params
      params.expect(quest_reward: [ :reward_type, :amount, :quest_id, :item_id ])
    end
end
