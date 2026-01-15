class PagesController < ApplicationController

  def home
  end

  def home_layout
    kind = params[:kind].to_s
    allowed = %w[desktop laptop tablet mobile]
    kind = "desktop" unless allowed.include?(kind)

    render "home/layout", locals: { kind: kind }, layout: false
  end



  def home_esp
  end

  def home_fra
  end

  def home_por
  end
end
