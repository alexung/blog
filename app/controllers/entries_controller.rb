class EntriesController < ApplicationController
  def index
    @entries = Entry.all
  end

  def show
    @entry = Entry.find(params[:id])
  end

  def new
    @entry = Entry.new
  end

  def create
    @entry = Entry.new(entry_params)
    @entry.save
      redirect_to entry_path(id: @entry.id)
  end

  def update
    @entry = Entry.find(params[:id])
    @entry.update(entry_params)
    redirect_to entry_path(id: @entry.id)
  end

  def destroy
    @entry = Entry.find(params[:id])
    @entry.destroy

    render :delete
  end

  private

  def entry_params
    params.require(:entry).permit([:title, :author, :body, :tags])
  end
end
