import React from "react";

const EditItem = (props) => {
  return (
    <div>
      <h1>Edit Item Form for {props.department.name}</h1>
      <form
        action={`/departments/${props.department.id}/items/${props.item.id}`}
        method="post"
      >
        <input type="hidden" name="_method" value="patch" />
        <p>name</p>
        <input defaultValue={props.item.name} name="item[name]" />
        <p>body</p>
        <textarea defaultValue={props.item.body} name="item[body]" />
        <button type="departmentmit">edit item</button>
      </form>

      {JSON.stringify(props)}
    </div>
  );
};

export default EditItem;
