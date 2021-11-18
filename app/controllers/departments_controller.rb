class DepartmentsController < ApplicationController

# CREATE-1
def new
    render component: "NewDepartment"
end

# CREATE-2
def create
    Department.create(name:params[:department][:name])
redirect_to departments_path
    end

# READ-1
def index
    departments = Department.all 
    render component: "Departments", props: {departments:departments}
end

# READ-2
def show
    department = Department.find(params[:id])
    render component: "Department", props: {department: department}
end

# UPDATE-1
def edit
    department = Department.find(params[:id])
    render component: "DepartmentEdit", props: {department: department}
end

# UPDATE-2
def update
    department = Department.find(params[:id])
    if department.update(department_params)
        redirect_to department_path
    else
        render component: "DepartmentEdit", props: { department: department }
    end
end

# DELETE
def destroy
    Department.find(params[:id]).delete
    redirect_to departments_path
end

    private 
    # this can't be read by people accessing your site, prevents hackers from changing your info
    # here we are defining the departments_params !
        def departments_params
            params.require(:department).permit(:name)
        end
    
    end


