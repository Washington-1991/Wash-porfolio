class PagesController < ApplicationController

  def home
  end

  def home_layout
    @kind = params[:kind]  # "sidebar", "fullwidth", etc.
    # Tu lógica aquí
  end

  def home_esp
  end

  def home_fra
  end

  def home_por
  end
end
