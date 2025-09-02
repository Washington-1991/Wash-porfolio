class Admin::ProjectsController < Admin::BaseController
  before_action :set_project, only: %i[show edit update destroy]

  def index
    @projects = Project.includes(:client_account).order(created_at: :desc)
  end

  def show; end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to [:admin, @project], notice: "Proyecto creado."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit; end

  def update
    if @project.update(project_params)
      redirect_to [:admin, @project], notice: "Proyecto actualizado."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @project.destroy
    redirect_to admin_projects_path, notice: "Proyecto eliminado."
  end

  private

  def set_project
    @project = Project.find(params[:id])
  end

  def project_params
    params.require(:project).permit(:title, :status, :due_on, :summary, :client_account_id)
  end
end
