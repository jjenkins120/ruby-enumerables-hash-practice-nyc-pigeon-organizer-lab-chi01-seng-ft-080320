
def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |color_gender_lives, value|
    value.each do |stats, all_names|
      all_names.each do |name|
        if pigeon_list[name] == nil
          pigeon_list[name] = {}
        end
        if pigeon_list[name][color_gender_lives] == nil
          pigeon_list[name][color_gender_lives] = []
        end
        pigeon_list[name][color_gender_lives].push(stats.to_s)
      end
    end 
  end
  pigeon_list
end

=begin
def pigeon_organizer(original_hash)
    pigeon_list = {}
    original_hash.each do |key, value|
        value.each do |second_key, second_value|
            second_value.each do |name|
                if pigeon_list[name] == nil
                pigeon_list[name] = {}
              end
              if pigeon_list[name][key] == nil
                pigeon_list[name][key] = []
              end
              pigeon_list[name][key].push(second_key.to_s)
            end    
        end
    end  
    pigeon_list  
end
=end