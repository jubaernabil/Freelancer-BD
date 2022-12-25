import axios from 'axios';
import React, {Component} from 'react';
import  {Link} from 'react-router-dom';
import Project from '../Project/Project';
import swal from 'sweetalert';
// import BidListDetails from './BidListDetails';

class BidList extends Component
 {

    state ={ 
        bids: [],
        loading: true,
    }

   async  componentDidMount(){
        const res=await  axios.get('http://localhost:8000/api/bidList');
           console.log(res); 
           if(res.data.status===200){
               this.setState({
                   bids: res.data.bids,
                   loading: false,
               });
           }

        }
    

  render(){
    
    var bid_HTML_TABLE = "" ;
    if(this.state.loading)
    {
        bid_HTML_TABLE = <tr><td colSpan="6"><h2>Loading...</h2></td></tr>
    } 
    else
    {
        bid_HTML_TABLE = this.state.bids.map((bid)=>{
            return(
                <tr>
                    <td>{bid.id}</td>
                    <td>{bid.title}</td>
                    <td>{bid.project_file}</td>
                    <td>{bid.price}</td>
                    <td>
                        <Link className="btn btn-success" to={`/bidList_details/${bid.id}`}>Details</Link>                  
                    </td>
                    <td>
                        <Link className="btn btn-primary" to={`/seller_bidingproject`}>Entry</Link>
                    </td>
                </tr>
            )
        })
    }


    return(
    <div className="container">
                <div className="row">
                     <div className="col-md-12">
                         <div className="card">
                             <div className="card-header">
                                    <h4> 
                                      Bid List
                                    </h4>
                            </div>
                            <div className="card-body">
                                <table className="table table-bordered table-striped">
                                    <thead>
                                       <tr>
                                           <th>Id</th>
                                           <th>Title</th>
                                           <th>Project File</th>
                                           <th>Price</th>
                                           <th>Edit</th>
                                           <th>Delete</th>
                                       </tr>
                                    </thead>
                                    <tbody>
                                        {bid_HTML_TABLE}
                                    </tbody>
                                </table>
                            </div>
                     </div>
                 </div>
            </div>
    </div>

    )
  }
 }
 export default BidList;