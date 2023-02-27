<?php 
	include('template/header.php');?>

<?php

$mail = $_SESSION['usermail']['email'];
//echo "<pre>";print_r($mail);exit; 
if ($this->session->flashdata('success')) { ?>
            <div class="alert alert-success"> <?= $this->session->flashdata('success') ?> </div> 
        <?php } ?>
	 <div class="container">
	 	<div class="row">
	 		<div class="col-4"></div>
	 		<div class="col-lg-5 col-md-5 col-sm-4 col-sx-4 mt-5">
	 			<div class="card box_shadow">
				 <h2 align="center">Update Password</h2>
				  <div class="card-body">
				    <form name="login" id="login" method="post" action="" autocomplete="off">
				    	<div class="imgcontainer">
						    <img src="<?php echo base_url();?>assets/images/eloi_icon.png" alt="Avatar" class="avatar">
						  </div>

						  <div class="container">

						    <input type="hidden" name="mail" id="mail" value="<?php echo $mail;?>" placeholder="Enter Your Password">
						    <label for="password"><b>New Password</b></label>
						    <input type="password" name="password" id="password" placeholder="Enter Your Password"  required>
						     <label for="cnfpassword"><b>Confirm Password</b></label>
						    <input type="password" name="password_confirm" id="password_confirm" placeholder="Enter Your Confirmpassword"  required>
						    
						        
						    <button type="submit" id="submit">Submit</button>
						    
						  </div>

						  
						    
						  </div>
				    </form>
				  </div>
				</div>
	 		</div>
	 		
	 	</div>
	 </div>
<?php include('template/footer.php');?>

<script>
	$(document).ready(function(){
		$("#login").validate({
    
    rules: {
     
      password: {
      	required: true,
          minlength: 5
        },
        password_confirm: {
            minlength: 5,
            equalTo: "#password"
        }
     
    },
    
    messages: {
      
      
      password: {
      	required:"Please enter a password",
      	minlength : "Your password must be at least 5 characters long"
      },
      password_confirm:{
      	minlength : "Your password must be at least 5 characters long",
      	equalTo:"Cofirm Password not matched with New Password"
      }
    },
   
    
  });

		$("#login").submit(function(){
			var email = $("#mail").val();
			var password = $("#password").val();
		
		$.ajax({
				type : 'POST',
				url : '<?php echo base_url();?>LoginCtrl/updatepassword',
				data : {email : email, password : password},
				dataType : 'json',
				success:function(data){
					console.log(data);
					if(data == false){
						toastr.error("Oops Something went Wrong!");
						setTimeout(function(){// wait for 5 secs(2)
				            window.location.href = "<?php echo base_url();?>LoginCtrl/changepassword" ;
				      }, 2000);
					}else{
						toastr.success("Password Updated Successfully!");
						setTimeout(function(){// wait for 5 secs(2)
				            window.location.href = "<?php echo base_url();?>LoginCtrl/index" ;
				      }, 2000);
					}
					
				}
			});
			return false;
		});
	});
</script>