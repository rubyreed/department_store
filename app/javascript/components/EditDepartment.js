import React from "react";

const EditDepartment = (props) => {
  return (
    <div>
      <p>TODO: Edit Department Form Here</p>
      <a href="/">Home</a>
      <a href="/departments">Back to Departments</a>
      <form action={`/departments/${props.department.id}`} method="post">
        <input type="hidden" name="_method" value="patch" />
        <p>name</p>
        <input defaultValue={props.department.name} name="department[name]" />
        <button type="submit">Update</button>
      </form>
    </div>
  );
};

export default EditDepartment;