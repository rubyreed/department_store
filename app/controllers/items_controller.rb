class ItemsController < ApplicationController
    before_action :set_department, only: [:show, :edit, :update, :destroy]
    # get '/departments'
    def index
      render component: "Departments", props: { departments: Department.all }
    end
  
    # get '/departments/new'
    def new
      render component: "NewDepartment"
    end
  
    # post '/departments'
    def create
      department = Department.new(department_params)
      # try to save it to DB (with validation)
      if (department.save)
        redirect_to departments_path
      else
        #TODO: render new form with department(to show errors)
      end
    end
  
    # get '/departments/:id'
    def show
      # render component: "Department", props: { department: @department }
      render component: "Items", props: { department: @department, items: @department.items }
    end
  
    # get 'departments/:id/edit'
    def edit
      # TODO: return form for editing Department (want department )
      render component: "EditDepartment", props: { department: @department }
    end
  
    # put/patch '/departments/:id'
    def update
      if (@department.update(department_params))
        redirect_to departments_path
      else
        #TODO: render our edit form with department(to show errors)
      end
    end
  
    # delete 'departments/:id'
    def destroy
      @department.destroy
      redirect_to departments_path
    end
  
    # private means only visible to class
    private
  
    def department_params
      params.require(:department).permit(:name)
    end
  
    def set_department
      @department = Department.find(params[:id])
    end
end
