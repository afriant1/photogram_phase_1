class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
    @id = params["id"]
    Photo.find_by({ :id => @id })
    render("show.html.erb")
  end

  def new_form
    render("new_form.html.erb")
  end

  def edit
    @id = params["id"]
    Photo.find_by({ :id => @id })
    render("edit.html.erb")
  end

#  def update
#    @id = params["id"]
#    @photo = Photo.find_by({ :id => @id })
#    @photo.update!(caption_params)
#    redirect_to("/#{{:id}}.html")
#    render("show.html.erb")
#  end

  def destroy
    @id = params["id"]
    Photo.find_by({ :id => @id }).destroy
    redirect_to :back
  end

end
