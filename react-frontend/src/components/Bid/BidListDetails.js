import React, {Component} from 'react';
import  {Link} from 'react-router-dom';
import  axios from 'axios';
import { useParams,params } from "react-router-dom";
import { useState } from "react";
import { useHistory } from "react-router-dom";
import swal from 'sweetalert';

class BidListDetails extends Component
{
 		state = {
            title:'',
            project_file:'',
            price:'',
            error_list:[],
        	// description: '',
       }

    handleInput = (e)=>{
        this.setState ({
            [e.target.name]: e.target.value
        });
    }
     
   
    async componentDidMount()
    {
        const bid_id = this.props.match.params.id;
        console.log(bid_id);
        const res = await axios.get(`http://127.0.0.1:8000/api/bidList_details/${bid_id}`);
        if(res.data.status===200)
        {
            this.setState({
                title:res.data.bid.title,
                project_file:res.data.bid.project_file,
                price:res.data.bid.price,
            });
        } 

    }

    render()
    {

 	  return(

 		<div className="container">
                <div className="row">
                    <div className="col-md-12">
                        <div className="card">
                            <div className="card-header">
                                <h4>Bid 
                                <Link to={'/bidList'} className="btn btn-primary btn-sm float-end">Back</Link>
                                </h4>   
                            </div>      
                            <div className="card-body">
                                <h2>Title: {this.state.title}</h2>        
                                <h3>Prpject file: {this.state.project_file}</h3>
                                <h3>Price: {this.state.price}</h3>                             
                            </div>                        
                        </div>
                    </div>
                </div>
            </div>

 		)
 	}
 }
 export default BidListDetails ;




