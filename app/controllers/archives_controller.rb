class ArchivesController < ApplicationController
  def index
    @entries = Entry.page(params[:page]).per(10).group_by(&:day)
  end
end
