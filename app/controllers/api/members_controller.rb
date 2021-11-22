class Api::MembersController < ApplicationController
  before_action :set_api_member, only: [:show, :update, :destroy]

  # GET /api/members
  def index
    @api_members = Api::Member.all

    render json: @api_members
  end

  # GET /api/members/1
  def show
    render json: @api_member
  end

  # POST /api/members
  def create
    @api_member = Api::Member.new(api_member_params)

    if @api_member.save
      render json: @api_member, status: :created, location: @api_member
    else
      render json: @api_member.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/members/1
  def update
    if @api_member.update(api_member_params)
      render json: @api_member
    else
      render json: @api_member.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/members/1
  def destroy
    @api_member.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_member
      @api_member = Api::Member.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def api_member_params
      params.permit(:name, :greeting)
    end
end
