class PagesController < ApplicationController
  def main
    @client=User.new
  end

  def client

      @client=User.find_by(id: params[:id])
if @client.nil?
  redirect_to root_path

end






end
  end

  def guru
  end


