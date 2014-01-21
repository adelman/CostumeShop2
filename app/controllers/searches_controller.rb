class SearchesController < ApplicationController
  def new
    @search = Search.new
    prepare_search
  end

  def create
    @search = Search.create!(costume_params)
    redirect_to @search
  end

  def show
    @search = Search.find(params[:id])
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def costume_params
      params.require(:search).permit(:category, :primary, :secondary, :period, :label)
    end

    def prepare_search
      @costumes = Costume.all
      @categories = []
      @primaries = []
      @secondaries = []
      @periods = []
      @labels = []
      for costume in @costumes
        @categories.append(costume.category)
        @primaries.append(costume.primary)
        @secondaries.append(costume.secondary)
        @periods.append(costume.period)
        @labels.append(costume.label)
      end
      @categories.uniq!.sort!
      @primaries.uniq!.sort!
      @secondaries.uniq!.sort!
      @periods.uniq!.sort!
      @labels.uniq!.sort!
    end

end
