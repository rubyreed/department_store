class DepartmentsController < ApplicationController

    before_action :set_department, only: [:show, :update, :destroy, :edit]
    before_action :set_item, only: [:show, :update, :destroy, :edit]
  

# CREATE-1
def new
    render component: "NewDepartment"
end

# CREATE-2
def create
    # Department.create(name:params[:department][:name])
    # create department in memory
    department = Department.new(department_params)
    # try to save it to DB (validation)
    if (department.save)
      redirect_to departments_path
    else
      #TODO: render new form with department(to show errors)
    end
end

# READ-1
def index
    render component: "Departments", props: { departments: Department.all }
   # departments = Department.all 
   # render component: "Departments", props: {departments:departments}
end

# READ-2
def show
    # department = Department.find(params[:id])
    # render component: "Department", props: {department: department}
    render component: "Items", props: { department: @department, items: @department.items }
end

# UPDATE-1
def edit
    # department = Department.find(params[:id])
    render component: "EditDepartment", props: {department: @department}
end

# UPDATE-2
def update
   #  department = Department.find(params[:id])
    if (@department.update(department_params))
        redirect_to department_path
    else
        render component: "EditDepartment", props: { department: department }
    end
end

# DELETE
def destroy
   # Department.find(params[:id]).delete
   @department.destroy
    redirect_to departments_path
end

    private 
    # this can't be read by people accessing your site, prevents hackers from changing your info
    # here we are defining the departments_params !
        def department_params
            params.require(:department).permit(:name)
        end
    
        def set_department
            @department = Department.find(params[:id])
          end

         def set_item
            @item = @department.items
         end
        

    end


