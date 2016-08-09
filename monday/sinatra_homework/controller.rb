require('sinatra')
require('sinatra/contrib/all')
require_relative('./models/wordformatter')
require('json')


get('/') do
  erb( :home )
end


get('/address') do
  content_type(:json)
  result = {
    address: "3 ARGYLE HOUSE",
    building: "CODEBASE",
    postcode: "e13 zpf",
    phone: "0131558030"
  }
  postcode = WordFormatter.new(result[:postcode])
  @upcase_postcode = postcode.upcase()
  result[:postcode] = @upcase_postcode
  return result.to_json()
end


# get( '/upcase/:string') do
#   word_formatter = WordFormatter.new()
#   return word_formatter.upcase( params[:string] )
# end


 get('/camel_case/:string') do
   result = WordFormatter.new(params[:string])
   @camel_case = result.camel_case()
   erb(:result)
 end


 # get('/camelcase/:string') do
content_type( :json )
word_formatter = WordFormatter.new()
result = {
  word: word
}
