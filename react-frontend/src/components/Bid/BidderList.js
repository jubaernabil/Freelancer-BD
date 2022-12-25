import axios from 'axios';
import React, {Component} from 'react';
import  {Link} from 'react-router-dom';
import Project from '../Project/Project';
import swal from 'sweetalert';
// import BidListDetails from './BidListDetails';

class BidderList extends Component
 {

    state ={ 
        bidders: [],
        loading: true,
    }

   async  componentDidMount(){
       
        // const bid_id = this.props.match.params.id;
        // console.log(bid_id);
        const res=await  axios.get(`http://localhost:8000/api/seller_bidingproject`);
           console.log(res); 
           if(res.data.status===200){
               this.setState({
                   bidders: res.data.bidders,
                   loading: false,
               });
           }

        }
    

  render(){
    
    var bidder_HTML_TABLE = "" ;
    if(this.state.loading)
    {
        bidder_HTML_TABLE = <tr><td colSpan="6"><h2>Loading...</h2></td></tr>
    } 
    else
    {
        bidder_HTML_TABLE = this.state.bidders.map((bidder)=>{
            return(
                <tr>
                    <td>{bidder.id}</td>
                    <td>{bidder.buyer_id}</td>
                    <td>{bidder.username}</td>
                    <td>{bidder.description}</td>
                    <td>
                    <Link className="btn btn-success" to={`/seller_bidingproject_details/${bidder.id}`}>Details</Link>                  
                    </td>
                    <td>
                    <Link className="btn btn-primary" to={`/seller_bidingproject_Message/${bidder.id}`}>Message</Link>
                    </td>
                </tr>
            )
        })
    }


    return(
    <div className="container">
             <div class="container">
                
                <table class="table">
                <thead>
                    <tr>
                    <th scope="col">Id</th>
                    <th scope="col">Buyer Id</th>
                    <th scope="col">Username</th>
                    <th scope="col">Description</th>
                    <th scope="col">Communication</th>
                    </tr>
                </thead>
                <tbody>
                   {bidder_HTML_TABLE}
                   
                </tbody>
                </table>
        </div>

    </div>

    )
  }
 }
 export default BidderList;

