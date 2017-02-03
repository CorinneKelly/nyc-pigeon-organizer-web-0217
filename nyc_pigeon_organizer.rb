def nyc_pigeon_organizer(data)
  # write your code here!
  final_hash = {}
  data.each do |category, hash|
    hash.each do |cat_spec, array_names|
      array_names.each do |names|
        final_hash[names] = {:color => [], :gender => [], :lives => []}
      end
    end
  end

  data.each do |category, hash|
    hash.each do |cat_spec, array_names|
      array_names.each do |names|
        final_hash.each do |final_names, traits_hash|
          traits_hash.each do |symbols, details|

            if names == final_names && symbols == category
              final_hash[final_names][symbols] << cat_spec.to_s
            end
          end
        end
      end
    end
  end
  final_hash
end

# nyc_pigeon_organizer({
#   :color => {
#     :purple => ["Theo", "Peter Jr.", "Lucky"],
#     :grey => ["Theo", "Peter Jr.", "Ms. K"],
#     :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
#     :brown => ["Queenie", "Alex"]
#   },
#   :gender => {
#     :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
#     :female => ["Queenie", "Ms. K"]
#   },
#   :lives => {
#     "Subway" => ["Theo", "Queenie"],
#     "Central Park" => ["Alex", "Ms. K", "Lucky"],
#     "Library" => ["Peter Jr."],
#     "City Hall" => ["Andrew"]
#   }
# })
