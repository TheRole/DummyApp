class PagesController < ApplicationController
  before_action :login_required, except: [:index, :show]
  before_action :role_required,  except: [:index, :show]

  # !!! WARNING !!!
  #
  # `@owner_check_object` variable have to be exists
  # before check ownership via `owner_required` method
  #
  # You have to define `@owner_check_object` in `set_page` method
  before_action :set_page,       only: [:edit, :update, :destroy]
  before_action :owner_required, only: [:edit, :update, :destroy]

  # Public

  def index
    @pages = Page.with_state(:published).all
  end

  def show
    @page = Page.with_state(:published).find params[:id]
  end

  # Login && role

  def new
    @page = Page.new
  end

  def create
    @page = Page.new page_params

    if @page.save
      redirect_to @page, notice: 'Page was successfully created.'
    else
      render action: 'new'
    end
  end

  def my
    @pages = current_user.pages
  end

  # login && role && ownership

  def edit; end

  def update
    if @page.update_attributes page_params
      redirect_to @page, notice: 'Page was successfully updated.'
    else
      render action: :edit
    end
  end

  def destroy
    @page.destroy
    redirect_to pages_url
  end

  # Admin or Pages Moderator Role require

  def manage
    @pages = Page.all
  end

  private

  def set_page
    @page = Page.find params[:id]

    # TheRole: object for ownership checking
    @owner_check_object = @page
  end

  def page_params
    params.require(:page).permit(:user_id, :title, :content, :state)
  end
end
