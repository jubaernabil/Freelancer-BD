// import React,{useState} from "react";
// import {useHistory} from  'react-router-dom'
// function Register()
// {

//     const [username,setUsername]=useState("")
//     const [password,setPassword]=useState("")
//     const [dept,setDept]=useState("")
//     const [type,setType]=useState("")
    
//     function signUp()
//     {
//         let item ={username,password,dept,type};
        
//         let res = await fetch("http://127.0.0.1:8000/api/register",{
//             method:"POST",
//             body:JSON.stringify(item),
//             headers:{
//                  "Content-Type":'application/json',
//                  "Accept":'application/json'
//             }
//         })
//         res = wa
//     }

//     return(
//         <div className="col-sm-6 offset-sm-3">
//             <h1>Registration</h1>
//             <input type="text" value={username} onChange={(e)=>setUsername(e.target.value)} className="form-control" placeholder="username"/>
//             <input type="password" value={password} onChange={(e)=>setPassword(e.target.value)}  className="form-control" placeholder="password"/>
//             <input type="text" value={dept} onChange={(e)=>setDept(e.target.value)}  className="form-control" placeholder="department"/>
//             <input type="text" value={type} onChange={(e)=>setType(e.target.value)}  className="form-control" placeholder="type"/>
//             <button onClick={signUp} className="btn btn-success">SignUp</button>
//         </div>
//     )
// }
// export default Register;