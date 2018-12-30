

function onFormSubmit(){
var formData=readFormData();
insertNewRecord(formData);
updateRecord(formData);
resetForm();
}

function readFormData(){
    var formData={};
    formData["firstName"]=document.getElementById("firstName").Value;
    formData["middleName"]=document.getElementById("middleName").Value;
    formData["lastName"]=document.getElementById("lastName").Value;
    formData["email"]=document.getElementById("email").Value;
    formData["mobileNumber"]=document.getElementById("mobileNumber").Value;
    formData["password"]=document.getElementById("password").Value;
    formData["confirmPassword"]=document.getElementById("confirmPassword").Value;
    return formData;
}

function insertNewRecord(data){
    var table=document.getElementById("employeeList").getElementsByTagName('tbody')[0];
    var newRow=table.insertRow(table.length);
    cell1=newRow.insertCell(0);
    cell1.innerHTML=data.firstName;
    cell2=newRow.insertCell(1);
    cell2.innerHTML=data.middleName;
    cell3=newRow.insertCell(2);
    cell3.innerHTML=data.lastName;
    cell4=newRow.insertCell(3);
    cell4.innerHTML=data.email;
    cell5=newRow.insertCell(4);
    cell5.innerHTML=data.mobileNumber;
    cell6=newRow.insertCell(5);
    cell6.innerHTML=data.password;
    cell7=newRow.insertCell(6);
    cell7.innerHTML=data.confirmPassword;
    cell7=newRow.insertCell(7);
    cell7.innerHTML='<a onClick="onEdit(this)">Edit</a> <a onClick="onDelete(this)">Delete</a>';

}

function resetForm(){
    document.getElementById("firstName").value="";
    document.getElementById("middleName").value="";
    document.getElementById("lastName").value="";
    document.getElementById("email").value="";
    document.getElementById("mobileNumber").value="";
    document.getElementById("password").value="";
    document.getElementById("confirmPassword").value="";
    
}

function onEdit(td){
    selectedRow=td.parentElement.parentElement;
    document.getElementById("firstName").value=selectedRow.cell[0].innerHTML;
    document.getElementById("middleName").value=selectedRow.cell[1].innerHTML;
    document.getElementById("lastName").value=selectedRow.cell[2].innerHTML;
    document.getElementById("email").value=selectedRow.cell[3].innerHTML;
    document.getElementById("mobileNumber").value=selectedRow.cell[4].innerHTML;
    document.getElementById("password").value=selectedRow.cell[5].innerHTML;
    document.getElementById("confirmPassword").value=selectedRow.cell[6].innerHTML;
}

function updateRecord(formData){
    selectedRow.cell[0].innerHTML=formData.firstName;
    selectedRow.cell[1].innerHTML=formData.middleName;
    selectedRow.cell[2].innerHTML=formData.lastName;
    selectedRow.cell[3].innerHTML=formData.email;
    selectedRow.cell[4].innerHTML=formData.mobileNumber;
    selectedRow.cell[5].innerHTML=formData.password;
    selectedRow.cell[6].innerHTML=formData.confirmPassword;
}

function onDelete(td){
    if(confirm('Are you sure to delete this record')){
    row=td.parentElement.parentElement
    document.getElementById("employeeList").deleteRow(row.rowIndex);
    resetForm();
}

function setFormData(firstname,middlename,lastname,email,mobileNumber,password,confirmPassword) {   
var table=document.getElementById("employeeList").getElementsByTagName('tbody')[0];
var newRow=table.insertRow(table.length);
cell1=newRow.insertCell(0);
cell1.innerHTML=firstname;
cell2=newRow.insertCell(1);
cell2.innerHTML=middleName;
cell3=newRow.insertCell(2);
cell3.innerHTML=lastname;
cell4=newRow.insertCell(3);
cell4.innerHTML=email;
cell5=newRow.insertCell(4);
cell5.innerHTML=mobileNumber;
cell6=newRow.insertCell(5);
cell6.innerHTML=password;
cell7=newRow.insertCell(6);
cell7.innerHTML=confirmPassword;
cell7=newRow.insertCell(7);
cell7.innerHTML='<a onClick="onEdit(this)">Edit</a> <a onClick="onDelete(this)">Delete</a>';
}
    
}