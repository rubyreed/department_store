import React from "react";

const Item = (props) => {
  return (
    <div>
      <h1>Show Item</h1>
      <a href={`/departments/${props.item.department_id}/items`}>back</a>
      <p>item id: {props.item.id}</p>
      <p>department id: {props.item.department_id}</p>
      <div style={{ margin: "10px", border: "1px solid black" }}>
        <p>Name: {props.item.name}</p>
        <p>body: {props.item.body}</p>
      </div>
      <code>{JSON.stringify(props)}</code>
    </div>
  );
};

export default Item;
