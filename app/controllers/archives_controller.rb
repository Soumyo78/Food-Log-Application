class ArchivesController < ApplicationController
  def index
    @entries = Entry.all.page(params[:page]).group_by(&:day)
  end
end
