import React from "react";

const Department = (props) => {
  return (
    <div>
      <p>TODO: List single department here</p>
      <h1>{props.department.name}</h1>
      <p>id: {props.department.id}</p>
      <a href="/">Home</a>
      <a href="/departments">Departments List</a>
    </div>
  );
};

export default Department;
