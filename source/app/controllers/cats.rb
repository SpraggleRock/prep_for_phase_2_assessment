
# List all cats (index)
get "/cats" do
  @cats = Cat.all
  erb :"cats/index"
end

# Show the form to create a new cat (new)
get "/cats/new" do
  erb :"cats/new"
end

# Show a single cat (show)
get "/cats/:id" do
  @cat = Cat.find(params[:id])
  erb :"cats/show"
end

# Create a new cat (create)
post "/cats" do
  @cat = Cat.new(params)
  if @cat.save
    redirect to("/cats/#{@cat.id}")
  else
    erb :"cats/new"
  end
end

# Show the form to edit a cat (edit)
get "/cats/:id/edit" do
  @cat = Cat.find(params[:id])
  erb :"cats/edit"
end

# Update an existing cat (update)
put "/cats/:id" do
  @cat = cat.find(params[:id])

  # Dealing with _method:
  #
  # Option #1 Delete _method from params
  # e.g. params = {"_method" => "put", "name" => "Booker T. Cat", "favorite_food" => "tuna"}
  params.delete("_method")
  if @cat.update(params)
    redirect to("/cats/#{@cat.id}")
  else
    erb :"cat/edit"
  end

  # Option #2 Stuff/namespace all the cat attributes under a parent key 'cat'
  # e.g. params = {"_method" => "put",
  #                "cat" => {"name" => "Booker T. Cat", "favorite_food" => "tuna"}}
  if @cat.update(params[:cat])
    redirect to("/cats/#{@cat.id}")
  else
    erb "cat/edit"
  end
end

# Delete an existing cat (delete)
delete "/cats/:id" do
  Cat.destroy(params[:id])

  redirect to("/cats")
end