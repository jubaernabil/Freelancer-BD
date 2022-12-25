<?php

namespace App\Http\Controllers;
use App\Models\User;
use App\Models\Buyer;
use App\Models\Bid;
use App\Models\Contest;
use Illuminate\Http\Request;
use App\Http\Requests\BuyerContestRequest;
use App\Http\Requests\BuyerProjectRequest;
use App\Http\Requests\profileRequest;
use Illuminate\Support\Facades\DB;
use Validator;


class BidController extends Controller
{
    function list()
    {
        $bids = Buyer::all();
        return response()->json(
            [
                'status'=>200,
                'bids'=> $bids,
            ]
            );
    }
    public function list_details($id)
    {
        $bid = Buyer::find($id);
        return response()->json(
            [
                'status'=>200,
                'bid'=> $bid,
            ]
        );
    }
    
    public function download(Request $req,$file)
    {
        // return response()->download(public_path('protfolio_img/'.$file));
        return response()->json(download(public_path('protfolio_img/'.$file)),200);   
    }
      
    public function seller_bidingproject()
    {
        $bidders = Bid::all();
        return response()->json(
            [
                'status'=>200,
                'bidders'=> $bidders,
            ]
            );
    } 

    public function seller_bidingproject_details($id)
    {
        $bidder = Bid::find($id);
        return response()->json(
            [
                'status'=>200,
                'bidder'=> $bidder,
            ]
        );
    }

    //pore krtse
    public function seller_bidingprojectMsg($id)
    {
      $bidder = Bid::find($id);
      return response()->json(
        [
            'status'=>200,
            'bidder'=> $bidder,
        ]
    );
    }
    


    // public function delete($id)
    // {
    //     $contest  = Contest::find($id);
    //     $contest->forceDelete();
    //     return response(200);
    // }
}
