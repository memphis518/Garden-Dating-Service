class UsersController < ApplicationController
  # GET /user
  # GET /user.xml
  # def index
  #   @users = User.all
  #
  #   respond_to do |format|
  #     format.html # index.html.haml
  #     format.xml  { render :xml => @users }
  #   end
  # end

  # GET /user/1
  # GET /user/1.xml
  # def show
  #   respond_to do |format|
  #     format.html # show.html.haml
  #     format.xml  { render :xml => @user }
  #   end
  # end

  # GET /user/new
  # GET /user/new.xml
  def new
    @user = User.new

    respond_to do |format|
      format.html # new.html.haml
      format.xml  { render :xml => @user }
    end
  end

  # GET /user/1/edit
  # def edit
  # end

  # POST /user
  # POST /user.xml
  def create
    @user = User.new params[:user]

    respond_to do |format|
      if @user.save
        flash[:notice] = 'Registration Successful!'
        format.html { redirect_to root_path }
        format.xml  { render :xml => @user, :status => :created, :user => @user }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /user/1
  # PUT /user/1.xml
  # def update
  #   @user = User.get params[:id]
  # 
  #   respond_to do |format|
  #     if @user.update params[:user]
  #       flash[:notice] = 'User was updated!'
  #       format.html { redirect_to @user }
  #       format.xml  { head :ok }
  #     else
  #       flash[:notice] = 'User was not updated!'
  #       format.html { render :action => "edit" }
  #       format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
  #     end
  #   end
  # end

  # DELETE /user/1
  # DELETE /user/1.xml
  # def destroy
  #   @user = User.get
  #   @user.destroy
  #
  #   respond_to do |format|
  #     format.html { redirect_to admin_users_url }
  #     format.xml  { head :ok }
  #   end
  # end

end
