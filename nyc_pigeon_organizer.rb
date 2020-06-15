#my independent solution
require 'pry'
def nyc_pigeon_organizer(data)
pigeon_name = Hash.new 
  data.each do |key, value|
    value.each do |inner_key, names|
      names.each do |name|
        if !pigeon_name[name]
         pigeon_name[name] = {}
         end
         if !pigeon_name[name][key]
          !pigeon_name[name][key] = []
        end
       pigeon_name[name][key].push(inner_key.to_s)
     end 
    end
  end
end  

# used the video to get through lab 
#def nyc_pigeon_organizer(data)
# data.each_with_object({}) do |(key, value), final_array|
#   value.each do |inner_key, names|
#     names.each do |name|
#        if !final_array[name]
#          final_array[name] = {}
#          end
#          if !final_array[name][key]
#          !final_array[name][key] = []
#        end
#      final_array[name][key].push(inner_key.to_s)
#      end
#    end
# end
#end
