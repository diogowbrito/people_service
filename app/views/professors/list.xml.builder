xml.instruct!(:xml, :version=>"1.0")

xml.list(:title => "Professores", :start => @start, :end => @end, :next => @next) do

  @professors.each do |professor|
    xml.item(professor.professor_name, :href => @address + "/people/"+professor.id.to_s)
  end
end