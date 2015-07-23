class Lists::BuildController < ApplicationController
  include Wicked::Wizard

  steps :add_item_name, :add_age_group, :add_quantity

  def show
    @list = List.find(params[:list_id])
    render_wizard
  end


  def update
    @list = List.find(params[:list_id])
    params[:list][:status] = step.to_s
    params[:list][:status] = 'active' if step == steps.last
    @list.update_attributes(params[:list])
    render_wizard @list
  end


  def create
    @list = list.create
    redirect_to wizard_path(steps.first, :list_id => @list.id)
  end
end