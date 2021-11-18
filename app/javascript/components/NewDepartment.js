import React from 'react'


// this is a function and a component, gets user input for new department
const NewDepartment = (props)=> {
return (
<div>
<h1>New Department Form Here</h1>
<form action="/departments" method="post">
<p>Name</p>
<input name = "department[name]"/>
<button type="submit">Add Here</button>
</form>
</div>
);
};

// calling it for rails
export default NewDepartment;