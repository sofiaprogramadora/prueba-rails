class PagesController < ApplicationController
  def batman
  end

  def superman
  end

  def batman_vs_superman
  	@sup = VotosSuperman.all
  	@bat = VotosBatman.all
  end

  def save_bat_vote
  	if params[:name].present? && params[:email].present?
  	  VotosBatman.create(name: params[:name], email: params[:email])
  	  redirect_to batman_vs_superman_path, notice: "Su voto ha sido registrado"
  	else
  	  redirect_to batman_vs_superman_path, notice: "Todos los campos son obligatorios"
  	end
  end

  def save_sup_vote
  	if params[:name].present? && params[:email].present?
  	  VotosSuperman.create(name: params[:name], email: params[:email])
  	  redirect_to batman_vs_superman_path, notice: "Su voto ha sido registrado"
  	else
  	  redirect_to batman_vs_superman_path, notice: "Todos los campos son obligatorios"
  	end
  end

end
