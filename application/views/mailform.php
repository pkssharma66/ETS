<?php 
	include('template/header.php');?>

<?php if ($this->session->flashdata('success')) { ?>
            <div class="alert alert-success"> <?= $this->session->flashdata('success') ?> </div> 
        <?php } ?>
	 <div class="container">
	 	<div class="row">
	 		<div class="col-4"></div>
	 		<div class="col-lg-5 col-md-5 col-sm-4 col-sx-4 mt-5">
	 			<div class="card box_shadow">
				 <h2 align="center">Mail Verification</h2>
				  <div class="card-body">
				    <form name="login" id="login" method="post" action="" autocomplete="off">
				    	<div class="imgcontainer">
						    <img src="<?php echo base_url();?>assets/images/eloi_icon.png" alt="Avatar" class="avatar">
						  </div>

						  <div class="container">
						    <label for="email"><b>Email</b></label>
						    <input type="text" name="email" id="email" placeholder="Enter Your Mail Id"  required>
						    
						        
						    <button type="submit" id="submit">Check Mail ID</button>
						    
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
     
      email: {
        required: true,
        email: true
      }
     
    },
    
    messages: {
      
      
      email: {
      	required:"Please enter a valid email address",
      	email : "Enter A valid Email"
      } 
    },
   
    
  });

		$("#login").submit(function(){
			var email = $("#email").val();
		
		$.ajax({
				type : 'POST',
				url : '<?php echo base_url();?>LoginCtrl/checkmail',
				data : {email : email},
				dataType : 'json',
				success:function(data){
					console.log(data);//return false;
					if(data == 0){
						toastr.error("Email is not Registerd!");
						setTimeout(function(){// wait for 5 secs(2)
				            //window.location.href = "<?php echo base_url();?>LoginCtrl/index" ;
				      }, 2000);
					}else{
						toastr.success("Mail Verified Successfully");
						setTimeout(function(){// wait for 5 secs(2)
				            window.location.href = "<?php echo base_url();?>LoginCtrl/changepassword" ;
				      }, 2000);
					}
					
				}
			});
			return false;
		});
	});
</script>