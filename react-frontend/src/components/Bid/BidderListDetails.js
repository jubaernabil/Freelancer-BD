import React, {Component} from 'react';
import  {Link} from 'react-router-dom';
import  axios from 'axios';
import { useParams,params } from "react-router-dom";
import { useState } from "react";
import { useHistory } from "react-router-dom";
import swal from 'sweetalert';


class BidderListDetails extends Component
{
 		state = {
            buyer_id:'',
            username:'',
            description:'',
       }

    handleInput = (e)=>{
        this.setState ({
            [e.target.name]: e.target.value
        });
    }
     
   
    async componentDidMount()
    {
        const bidder_id = this.props.match.params.id;
        console.log(bidder_id);
        const res = await axios.get(`http://127.0.0.1:8000/api/seller_bidingproject_details/${bidder_id}`);
        if(res.data.status===200)
        {
            this.setState({

                username:res.data.bidder.username,
                description:res.data.bidder.description,
                buyer_id:res.data.bidder.buyer_id,
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
                                <Link to={'/seller_bidingproject'} className="btn btn-primary btn-sm float-end">Back</Link>
                                </h4>   
                            </div>      
                            <div className="card-body">
                                <h2>Buyer Id: {this.state.buyer_id}</h2>        
                                <h3>Username: {this.state.username}</h3>
                                <h3>Description: {this.state.description}</h3>                             
                            </div>                        
                        </div>
                    </div>
                </div>
            </div>

 		)
 	}
 }
 export default BidderListDetails ;




