class Search < ActiveRecord::Base
  def costumes
    @costumes ||= find_costumes
  end

  private
    
    def find_costumes
      costumes = Costume.order(:cid)
      costumes = costumes.where(category: category) if category.present?
      costumes = costumes.where(primary: primary) if primary.present?
      costumes = costumes.where(secondary: secondary) if secondary.present?
      costumes = costumes.where(period: period) if period.present?
      costumes = costumes.where(label: label) if label.present?
      costumes
    end
end
