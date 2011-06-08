xml.record(:title => "Professor") do
  xml.text(@professor.professor_name, :title => "Nome")
  if @emails.count != 0 then
    xml.text(:title => "Emails") do
      @emails.each do |email|
        xml.email(email.email)
      end
    end
  end
  if @professor.building != nil then
      xml.entity(@professor.building+" "+@professor.room, :title => "Localização do Gabinete", :kind => "room")
  end
  xml.text(@professor.category, :title => "Categoria")
  xml.entity(@professor.sector, :title => "Sector", :kind => "organizational unit")
  if @courses.count != 0 then
    xml.text(:title => "Cadeiras") do
      @courses.each do |course|
        xml.entity(course.course_name, :kind => "course")
      end
    end
  end
end