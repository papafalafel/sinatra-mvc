get '/people' do
  @people = Person.all
  erb :"/people/index"
end

get '/people/:id' do
  @person = Person.find(params[:id])
  birthdate_string = @person.birthdate.strftime("%m%d%Y")
  birth_path_num = Person.get_birth_path_num(birthdate_string)
  @message = Person.get_message(birth_path_num)
  erb :"/people/show"
end
