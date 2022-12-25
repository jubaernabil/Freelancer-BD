import axios from 'axios';
import React, {Component} from 'react';
import  {Link} from 'react-router-dom';
import { useParams,params } from "react-router-dom";
import { useState } from "react";
import { useHistory } from "react-router-dom";
import swal from 'sweetalert';
import { botmanWidget } from './Message';

class MessageSeller extends Component
 {
    
    state = {
        username:'',
   }

    handleInput = (e)=>{
        this.setState ({
            [e.target.name]: e.target.value
        });
    }
    

    async componentDidMount()
    {
        const bidderM_id = this.props.match.params.id;
        console.log(bidderM_id);
        const res = await axios.get(`http://127.0.0.1:8000/api/seller_bidingproject_Message/${bidderM_id}`);
        if(res.data.status===200)
        {
            this.setState({
                username:res.data.bidder.username,
            });
        } 

    }

    render()
    {
         
        return(
            <div className="container">
                  <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/botman-web-widget@0/build/assets/css/chat.min.css"/>
                                  
                            <center><h2>Your are Messaging with Mr.{this.state.username}</h2></center>   
                               <script type="text/javascript">
                               {{  botmanWidget }}
                               </script>
                            <script src={'https://cdn.jsdelivr.net/npm/botman-web-widget@0/build/js/widget.js'}></script>
                
                   
            </div>
            )
    }
};

export default MessageSeller;

