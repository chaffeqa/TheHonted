module StrategyGuidesHelper

  def setup_strategy_guide(guide)
    returning(guide) do |sg|
      sg.hero_pros.build if sg.hero_pros.empty?
      sg.hero_cons.build if sg.hero_cons.empty?
    end
  end
  
  def get_strategy_item_partial(strategy_item)
    return "text_contents/item"  if strategy_item.content_type == "TextContent"
    return "remote_image_contents/item"  if strategy_item.content_type == "RemoteImageContent"
    return "remote_video_contents/item"  if strategy_item.content_type == "RemoteVideoContent"
  end


  #
  # Support methods for nested forms
  #
  def generate_html(form_builder, method, options = {})
    options[:object] ||= form_builder.object.class.reflect_on_association(method).klass.new
    options[:partial] ||= method.to_s.singularize
    options[:form_builder_local] ||= :f

    form_builder.fields_for(method, options[:object], :child_index => 'NEW_RECORD') do |f|
      render(:partial => options[:partial], :locals => { options[:form_builder_local] => f })
    end
  end

  def link_to_new_nested_form(name, form_builder, method, options = {})
    options[:object] ||= form_builder.object.class.reflect_on_association(method).klass.new
    options[:partial] ||= method.to_s.singularize
    options[:form_builder_local] ||= :f
    options[:element_id] ||= method.to_s
    options[:position] ||= :bottom
    link_to_function name do |page|
      html = generate_html(form_builder,
        method,
        :object => options[:object],
        :partial => options[:partial],
        :form_builder_local => options[:form_builder_local]
      )
      page << %{
        $('#{options[:element_id]}').insert({ #{options[:position]}: "#{ escape_javascript html }".replace(/NEW_RECORD/g, new Date().getTime()) });
      }
    end
  end
end
