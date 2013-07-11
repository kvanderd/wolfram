get '/' do
  # Look in app/views/index.erb
  erb :index
end


post "/querry" do
  puts params
  request = params[:request]
  result = Wolfram.fetch(request)
# to see the result as a hash of pods and assumptions:
  @hash = Wolfram::HashPresenter.new(result).to_hash
  @hash
  erb :view_data
end


# get "/:query_name" do 

# end
