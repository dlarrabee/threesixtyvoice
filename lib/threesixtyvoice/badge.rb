module Threesixtyvoice
  class Badge < Struct.new("Badge",:id, :title, :owners, :imae, :description,
                           :category, :category_id, :threshold, :categoryname,
                           :badgescore_old, :badgescore, :badgescorecount)
  end
end
