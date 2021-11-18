import React from "react";

const NewItem = (props) => {
  return (
    <div>
      <h1>New Item Form for {props.department.name}</h1>
      <form action={`/departments/${props.department.id}/items`} method="post">
        <p>name</p>
        <input name="item[name]" />
        <p>body</p>
        <textarea name="item[body]" />
        <button type="submit">Add Item</button>
      </form>

      {JSON.stringify(props)}
    </div>
  );
};

export default NewItem;
