module ApplicationHelper

	def link_to_add_fields(name, f, association)

	    new_object = f.object.send(association).klass.new
	    id = new_object.object_id
	    fields = f.fields_for(association, new_object, child_index: id) do |builder|
	      render(association.to_s.singularize + "_fields", f: builder)
	    end
	    link_to(name, '#', class: "add_fields", :onclick => "time = new Date().getTime();
		regexp = new RegExp($(this).data('id'), 'g');
		$(this).closest('div').find('tbody').append($(this).data('fields').replace(regexp, time)); return false;" , data: {id: id, fields: fields.gsub("\n", "")})
  	end

	def sortable(title = nil, column)
  		title ||= column.titleize
  		css_class = column == sort_column ? "current #{sort_direction}" : nil
  		direction = column == sort_column && sort_direction == "asc" ? "desc" : "asc"
  		link_to title, params.merge(:sort => column, :direction => direction, :page => nil), {:class => css_class}
	end

	def corporate_param
    	params[:corporate_id].nil? ? Corporate.first.id : params[:corporate_id] 
  	end
end
