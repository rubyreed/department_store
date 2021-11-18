Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
# this makes our localhost3000 go to the index of departments
get "/", to: "departments#index" 

resources :departments do
  resources :items
end


# # CREATE-1 (returns form to create new department)
# get "/departments/new", to: "departments#new"
# get "/departments/:department_id/items/new", to: "items#new"

# # CREATE-2 (creates new department to db)
# post "/departments", to: "departments#create"
# post "/departments/:department_id/items", to: "items#create"


# # READ-1 (returns all departments)
# get "/departments", to: "departments#index" 
# get "/departments/:department_id/items", to: "items#index"


# # READ-2 (for a certain department)
# get "/departments/:id", to: "departments#show"
# get "/departments/:department_id/items/:id", to: "items#show"

# # UPDATE-1 (returns a form to update a department with pre-populated department info)
# get "/departments/:id/edit", to: "departments#edit"
# get "/departments/:department_id/items/:id/edit", to: "items#edit"


# # UPDATE-2 (updates a department to db)
# put "/departments/:id", to: "departments#update"
# put "/departments/:department_id/items/:id", to: "items#update"

# # DELETE (deletes a certain department from db)
# delete "/departments/:id", to: "departments#destroy"
# delete "/departments/:department_id/items/:id", to: "items#destroy"

end
