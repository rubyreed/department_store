import React from "react";

const Items = (props) => {
  const renderItems = () => {
    return props.items.map((item) => {
      return (
        <div className="department-container">
          <h3>{item.name}</h3>
          <p>item id:{item.id}</p>
          <p>{item.body}</p>
          <a href={`/departments/${props.department.id}/items/${item.id}`}>Show</a>
          <a href={`/departments/${props.department.id}/items/${item.id}/edit`}>Edit</a>
          <a data-method="delete" href={`/departments/${props.department.id}/items/${item.id}`}>Delete</a>
        </div>
      );
    });
  };
  return (
    <div>
      <h1>Department: {props.department.name}</h1>
      <p>Department id: {props.department.id}</p>
      <a href={`/departments`}>Back to Departments</a>
      <a href={`/departments/${props.department.id}/items/new`}>New Item</a>
      <hr />
      <h2>Items: </h2>
      {renderItems()}
      <p>{JSON.stringify(props)}</p>
    </div>
  );
};

export default Items;
