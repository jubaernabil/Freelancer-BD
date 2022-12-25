<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Project</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
	 
	 	<div style="padding: 50px">
	 <h1>Upload Project:</h1> 
	 
	 <form method="post" enctype="multipart/form-data"> 
	 @csrf
	 <input type="hidden" name="_token" value="{{csrf_token()}}">
	<table>
		<tr>
			<td>Project Title</td>
			<td><input type="text" name="title" value="{{old('title')}}"></td>
		</tr>
		<tr>
			<td>Project File</td>
			<td><input type="file" name="project_file" value="{{old('project_file')}}"></td>
		</tr>
		<tr>
			<td>Starting Date Time</td>
			<td><input type="text"  name="time" value="{{old('time')}}"></td>
		</tr>
		<tr>
			<td>Price</td>
			<td><input type="number" name="price" value="{{old('price')}}"></td>
		</tr>
		<tr>
			<td>Description</td>
			<td><textarea name="description" value="{{old('description')}}"></textarea></td>
		</tr>
		<tr>
			<td>Project Type</td>
			<td>
			<select name="type" class="form-control">
				<option selected="">type</option>
				<option value="Problem_Solving">Problem Solving Skill</option>
				<option value="Digital_Marketing">Digital Marketing</option>
				<option value="Web">Web Related</option>
				<option value="Python">Python</option>
			</select></td>
		</tr>
		<tr>
			<td></td>
			<td>
			<input class="btn btn-outline-success" type="submit" name="Submit" value="Post Project">
			</td>
		</tr>
	</table>
	</form><hr>
	@foreach($errors->all() as $err)
		{{$err}} <br>
	@endforeach
</body>
</div>
</div>
<div class="container">
  <div class="row">
    @foreach($projects as $project)
	@if($project->active=='1')
    <div class="padding" style="padding: 10px">
	<div class="card" style="width: 18rem;" >
  <iframe class="card-img-top" src="{{('/protfolio_img/'.$project['project_file'])}}" height="150px" width="30px;" alt="Card image cap">
  </iframe>
  <div class="card-body">
    <h5 class="card-title">{{$project['title']}}</h5>
    <p class="card-text">{{$project['description']}}</p>
    <a class="btn btn-primary" href="/postProject/details/{{$project['id']}}">Details</a>
	<a class="btn btn-primary" href="/postProject/edit/{{$project['id']}}">Edit</a>
    <!--  a href="/user/details/>{{$project['buyer_id']}}"> Details </a>-->
  </div>
</div>
</div>
@endif
@endforeach
  </div>
</div>
 </div>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>