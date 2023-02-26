class OrganisationsController < ApplicationController
  def index
    @organisations = Organisation.all
  end

  def show
    @organisation = Organisation.find(params[:id])
  end

  def new
    @organisation = Organisation.new
  end

  def create
    @organisation = Organisation.new(organisation_params)

    if @organisation.save
      redirect_to @organisation
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @organisation = Organisation.find(params[:id])
  end

  def update
    @organisation = Organisation.find(params[:id])

    if @organisation.update(organisation_params)
      redirect_to @organisation
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @organisation = Organisation.find(params[:id])
    @organisation.destroy

    redirect_to root_path, status: :see_other
  end

  private

  def organisation_params
    params.require(:organisation).permit(:name, :hourly_rate)
  end
end
