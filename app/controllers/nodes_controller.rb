class NodesController < ApplicationController
  before_action :set_node, only: [:show, :edit, :update, :destroy]
  acts_as_token_authentication_handler_for User, only: [:new, :create, :update, :destroy, :index] 


  # GET /nodes
  # GET /nodes.json
  def index
    @nodes = current_user.nodes
    @walls = current_user.walls
  end

  # GET /nodes/1
  # GET /nodes/1.json
  def show
  end

  # GET /nodes/new
  def new
    if params['format']
      @node = Node.find(params['format']).children.create(user_id: current_user.id, title: 'New Node')
    else
      @node = current_user.nodes.new(title: 'New Node', wall_id: params['wall'])
    end
  end

  # GET /nodes/1/edit
  def edit
  end

  # POST /nodes
  # POST /nodes.json
  def create
    @node = current_user.nodes.new(node_params)

    respond_to do |format|
      if @node.save
        format.html { redirect_to wall_or_root_path(@node), notice: 'Node was successfully created.' }
        format.json { render :show, status: :created, location: @node }
      else
        format.html { render :new }
        format.json { render json: @node.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nodes/1
  # PATCH/PUT /nodes/1.json
  def update
    respond_to do |format|
      if @node.update(node_params)
        format.html { redirect_to wall_or_root_path(@node), notice: 'Node was successfully updated.' }
        format.json { render :show, status: :ok, location: @node }
      else
        format.html { render :edit }
        format.json { render json: @node.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nodes/1
  # DELETE /nodes/1.json
  def destroy
    @node.destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Node was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    # Return wall_path of the root node, or root_path if there is no wall
    def wall_or_root_path(node)
      return_path = if wall = node.root.wall
                      wall_path(wall)
                    else                
                      root_path
                    end
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_node
      @node = Node.find(params[:id])
      @current_wall = @node.root.wall
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def node_params
      params.require(:node).permit(:title, :body, :parent_id, :wall_id)
    end
end
