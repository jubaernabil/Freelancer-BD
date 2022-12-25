import "./App.css";
import { useState } from "react";

import AddPostContest from "./components/Contest/AddPostContest";
import PostContestList from "./components/Contest/PostContestList";
import EditPostContest from "./components/EditPostContest";
import { contests } from "./ContestList";

// import BidList from "./components/Bid/BidList";
import BidList from "./components/Bid/BidList";
import BidListDetails from "./components/Bid/BidListDetails";

import MessageSeller from "./components/Bid/MessageSeller";
import BidderList from "./components/Bid/BidderList";
import BidderListDetails from "./components/Bid/BidderListDetails";
import { bids } from "./BidList";

import AddProject from "./components/Project/AddProject";
import Project from "./components/Project/Project";
import EditProject from "./components/Project/EditProject";

import { projects } from "./ProjectList";


// import BidListDetails from "./components/Bid/BidListDetails";
import { bidders } from "./BidderList";

import AddBLog from "./components/Blog/AddBlog";
import BlogList from "./components/Blog/BlogList";
import EditBlog from "./components/Blog/EditBlog";

import Register from "./components/Login/Register";
import { BrowserRouter as Router, Route, Switch } from "react-router-dom";
import {
    useFetch,
    createPostContest,
    deleteContest,
    updateContest,
    DetailsBid,
    //createProject,
    // deleteProject,
    // Bidder ,
} from "./components/useFetch";
import Navbar from "./components/Navbar";
// import {BidListDetails} from "./components/BidListDetails";

import "../node_modules/bootstrap/dist/css/bootstrap.min.css";
import"../node_modules/bootstrap/dist/js/bootstrap.bundle";



function App() {

    const [contest, setContest] = useState(contests);
    const [project, setProject] = useState(projects);
    const [bid, setBid] = useState(bids);  
    const[bidder,setBidder] = useState(bidders);

    const url = "http://localhost:8000/api/";
    useFetch(url, setContest,setProject,setBid,setBidder);
    
    /*Contest Part*/
    const addPostContest = (newContest) => {
        createPostContest(url, newContest);
        setContest([...contest, newContest]);
    };
    const deleteCon = (id) => {
        deleteContest(url, id);
        const data = contest.filter((user) => user.id !== id);
        setContest(data);
    };

    const editContest = (newCon) => {
        updateContest(url, newCon);
        const data = contest.filter((user) => user.id != newCon.id);
        setContest([...data, newCon]);
    };
    /*Contest Part*/ 
     
    
     
    /*Project part*/
    // const addProject = (newProject) => {
    //     createProject(url, newProject);
    //     setProject([...project, newProject]);
    // };
    // const deletePro = (id) => {
    //     deleteProject(url, id);
    //     const data = project.filter((user) => user.id !== id);
    //     setProject(data);
    // };
    /*Project Part*/    


  
   
    return (
        <Router>
            <Switch>
                <Route exact path="/">
                     <Navbar />
                    <h1>Welcome to online marketplace</h1>
                </Route> 
                <Route  path="/register">
                    
                    <Register />
                </Route>
                <Route path="/contestList">
                    <Navbar />
                    <div>
                        <PostContestList contests={contest} callback={deleteCon} />
                    </div>
                </Route>
                <Route path="/postContest">
                    <AddPostContest status="Post Contest" callback={addPostContest} />
                </Route>
                <Route path="/editContest/:id">
                    <EditPostContest status="edit contest" callback={editContest} />
                </Route>

                {/*Bid Part*/}
                    {/*BidList Part*/}
                    <Route path="/bidList">
                        <Navbar />
                            <div>
                                <BidList />
                            </div>
                    </Route>
                    <Route path="/bidList_details/:id" component={BidListDetails}/> 
                    {/*BidList Part*/}

                    {/*BidderList Part*/}
                    <Route path="/seller_bidingproject" component={BidderList}/>
                    <Route path="/seller_bidingproject_details/:id" component={BidderListDetails}/>
                    <Route path="/seller_bidingproject_Message/:id" component={MessageSeller}/>
                    {/*BidderList Part*/}
                {/*Bid Part*/}

                {/*Project Part*/}
                <Route path="/projectList">
                     <Navbar/> 
                     <Project />
                </Route> 
                <Route path="/postProject">
                    
                    <AddProject />
                </Route>
                <Route path="/editProject/:id" component={EditProject}> 
                </Route>
                {/*Project Part*/}

                {/*Blog Part */}
                 <Route path="/addBlog">
                     <Navbar/>
                     <AddBLog />
                 </Route>
                 <Route path="/blogList">
                     <Navbar />
                     <BlogList />
                 </Route>
                 <Route path="/editBlog/:id" component={EditBlog}> 
                </Route>
                {/*Blog Part */}
            </Switch>
        </Router>
    );
}

export default App;