module FeaturesHelper
  def link_to_add_fields(name, f, association)
    new_object = f.object.send(association).klass.new
    id = new_object.object_id
    fields = f.fields_for(association, new_object, child_index: id) do |builder|
      render(association.to_s.singularize + "_fields", f: builder)
    end
    link_to(name, '#', class: "add_fields ui-state-disabled", data: {id: id, fields: fields.gsub("\n", "")})
  end

  def to_feature_filename(text)
    text.gsub(/ /,"_") + ".feature"
  end

  TAB = "  "
  TAB2 = TAB + TAB 
  def to_code(feature_object)
    string = "Feature: " + feature_object.name + "\n"
    string += TAB + feature_object.body.gsub(/\n/,"\n"+TAB)+"\n"
    #add scenarios
    feature_object.scenarios.each do |scenario|
      string += "\n"
      string += TAB + "Scenario: " + scenario.body + "\n"
      #add steps
      scenario.steps.each do |step|
        string += TAB2 + step.given_when_then + " " + step.body + "\n"
      end
    end

    simple_format string
    # Pygments.highlight(string, lexer: 'Gherkin')
  end
end
