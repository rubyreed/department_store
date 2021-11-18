import React from "react";

// this whole thing is the react component
const Departments = (props) => {
console.log(props.departments); //unnecessary but checking to make sure props are coming through


// function to actually show the departments themselves
const renderDepartments = () => {
    return props.departments.map((department) => {
        return (
        <div style={{margin:"20px", border:'1px solid'}}>
            <a href={`/departments/${department.id}`} data-method="delete">Delete Department&nbsp;&nbsp;</a>
            <a href={`/department/${department.id}`} data-method="edit">Edit Department</a>
            <h1>{department.name}</h1>
            <p>{department.id}</p>
        </div>
            );
    })
};

// this is actually calling renderDepartments, making my links etc work
return (
<div>
<a href = "/departments/new">Add a Department</a>
<p>Departments: {renderDepartments()}</p>
</div>
);
};

// export component
export default Departments;