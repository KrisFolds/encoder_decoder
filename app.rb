require 'sinatra'
require_relative 'encoder_decoder.rb'

get '/' do
    erb :home
end

post '/answers' do
    encode_decode = params[:encode_decode]
    word = params[:word]
    key = params[:key]
    redirect '/final?encode_decode=' + encode_decode + '&word=' + word + '&key=' + key
end

get '/final' do
    encode_decode = params[:encode_decode]
    word = params[:word]
    key = params[:key]
    erb :final, :locals => {:encode_decode => encode_decode, :word => word, :key => key.to_i}
end
