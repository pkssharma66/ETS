<?php include('template/dashboardheader.php');?>
<?php //echo "<pre>";print_r($newtask);exit;
$enqrecvdate = date('d-m-Y',strtotime($newtask['created_date']));
//echo "<pre>";print_r($enqrecvdate);exit;
?>
<section id="main-content">
     <section class="wrapper main-wrapper "> 
           <?php if ($this->session->flashdata('category_success')) { ?>
            <div class="alert alert-success"> <?= $this->session->flashdata('category_success') ?> </div> 
        <?php } ?>   
         <div>
         	<h1>Task asign Details</h1>
         </div> 
         
      <div class="clearfix"></div> <!--**************clearfix**************-->
         
         <div class="col">              
             <h5><span style="color:red">*</span> Kindly fill Mandatory Fields</h5>
              	<form name="enq" id="enq" method="post" action="<?php echo base_url();?>DashboardCtrl/Addassigntask">
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                      <label>Task No:</label>  
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                        <select class="form-control" name="enqnoid" id="enqnoid">
                                            
                                            <option value="<?php echo $newtask['enq_id'];?>"><?php echo $newtask['enq_id'];?></option>
                                            
                                        </select>
                                    </div>
                                </div>
                            </div> 
                        </div>
                         <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12" id="erd">
                            <div class="form-group">
                                <div class="row">
                                    <!-- <input type="hidden" name="enqid" id="enqid" > -->
                                    <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                      <label >Enq Received Date:</label>  
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                        <input type="hidden" name="enqrecvdate" id="enqrecvdate"  class="form-control" value="<?php echo $enqrecvdate;?>">
                                    </div>
                                </div>
                            </div> 
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12" id="name">
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                      <label >Name:</label>  
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                        <input type="hidden" name="name" id="name"  class="form-control"  value = "<?php echo $newtask['applied_fname'];?>">
                                    </div>
                                </div>
                            </div> 
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12" id="phone">
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                      <label >Client Phone:</label>  
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                        <input type="text" name="phone" id="phone"  class="form-control"  value = "<?php echo $newtask['applied_phone'];?>">
                                    </div>
                                </div>
                            </div> 
                        </div><div class="col-lg-6 col-md-6 col-sm-12 col-xs-12" id="email">
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                      <label >Client Email:</label>  
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                        <input type="text" name="email" id="email"  class="form-control"  value = "<?php echo $newtask['applied_email'];?>">
                                    </div>
                                </div>
                            </div> 
                        </div>
                        <!--<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                      <label>Company Name:</label>  
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                        <input type="text" name="compname" id="compname" class="form-control" placeholder="Enter Company Name">
                                    </div>
                                </div>
                            </div> 
                        </div> 
                         <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                      <label>Opportunity Desc:</label>  
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                        <input type="text" name="oppdesc" id="oppdesc" class="form-control"   placeholder="Enter Opportunity Description">
                                    </div>
                                </div>
                                
                            </div> 
                        </div> -->
                        
                        <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                      <label>RFQ Date:</label> <span style="color:red">*</span> 
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                        <input type="Date" name="rfqdate" id="rfqdate" class="form-control" required>
                                    </div>
                                </div>
                             </div> 
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                      <label>RFQ Submited Date:</label>  
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                        <input type="Date" name="rfqsubmitedate" id="rfqsubmitedate" class="form-control">
                                    </div>
                                </div>
                            </div> 
                        </div>
                        <!-- <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12" id="po">
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                      <label>PO Received Date:</label>  
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                        <input type="Date" name="porecvdate" id="porecvdate" class="form-control">
                                    </div>
                                </div>
                            </div> 
                        </div> -->
                        <!-- <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12" id="pos">
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                      <label>Project Start Date:</label>  
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                        <input type="Date" name="projstartdate" id="projstartdate" class="form-control">
                                    </div>
                                </div>
                                
                            </div> 
                        </div>
                       
                        <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12" id="poe">
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                      <label>Project End Date:</label>  
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                        <input type="Date" name="projenddate" id="projenddate" class="form-control">
                                    </div>
                                </div>
                                
                            </div> 
                        </div> -->
                        <?php if($_SESSION['userid'] == 1) { ?>
                         <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12" >
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                      <label>Assign To:</label><span style="color:red">*</span>  
                                    </div>
                                   
                                    <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                        <select class="form-control" name="assignTo" id="assignTo" required>
                                            <?php 
                                             $asn = $this->db->select('*')
                                            ->from('user_register')
                                            ->get()
                                            ->result_array();
                                            //echo "<pre>";print_r($asn);exit;
                                            foreach ($asn as $key => $value) {
                                               // echo "<pre>"; print_r($value);
                                           
                                            ?>
                                            <option value="<?php echo $value['reg_id'];?>"><?php echo $value['email'];?></option>
                                            <?php 
                                        }
                                        ?>
                                        </select>
                                    </div>
                                </div>
                            </div> 
                        </div>
                    <?php } ?>
                     <?php if($_SESSION['userid'] != 1) { ?>
                        <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12" >
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                      <label>Assign By:</label>  
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                        <select class="form-control" name="assignBy" id="assignBy">
                                            <?php 
                                             $asn = $this->db->select('*')
                                            ->from('user_register')
                                            ->get()
                                            ->result_array();
                                            //echo "<pre>";print_r($asn);exit;
                                            foreach ($asn as $key => $value) {
                                               // echo "<pre>"; print_r($value);
                                           
                                            ?>
                                            <option value="<?php echo $value['reg_id'];?>"><?php echo $value['email'];?></option>
                                            <?php 
                                        }
                                        ?>
                                            <option value="1">Admin</option>
                                            <option value="<?php echo $value['reg_id'];?>"><?php echo $value['email'];?></option>
                                        </select>
                                    </div>
                                </div>
                                
                            </div> 
                        </div>
                    <?php } ?>
                        <!-- <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                      <label>Project Status:</label>  
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                        <select class="form-control" name="prostatus" id="prostatus">
                                            <option value="">--Select--</option>
                                            <option value="1">Active</option>
                                            <option value="2">InActive</option>
                                        </select>
                                    </div>
                                </div>
                                
                            </div> 
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                      <label>Opportunity Status:</label>  
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                        <select class="form-control" name="oppstatus" id="oppstatus">
                                            <option value="">--Select--</option>
                                            <option value="1">InProgress Opportunity</option>
                                            <option value="2">Won Opportunity</option>
                                            <option value="3">Lost Opportunity</option>
                                        </select>
                                    </div>
                                </div>
                                
                            </div> 
                        </div> -->
                        
                        <div class="col-12">
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-3">
                                      <label>Comments:</label><span style="color:red">*</span>
                                    </div>
                                    <div class="col-9">
                                        <textarea class="form-control" name="comments" id="comments" required></textarea>
                                    </div>
                                </div>
                                
                                
                            </div> 
                        </div>
                         
                    </div>
                    <div class="form-group">
                           <button class="btn btn-primary" type="add" style="width:20%">Submit</button>
                           <button class="btn btn-danger" type="cancel" id="cancel" style="width:20%">Cancel</button> 
                    </div>   
                    
                   
                </form>
              
         </div>
         
        </section>
    </section>
<?php include('template/footer.php');?>
<script>
	$(document).ready(function() {
        $("#erd").hide();
        $("#name").hide();
        $("#phone").hide();
        $("#email").hide();
        $("#lost").hide();
        $("#lostr").hide();
        $("#po").show();
        $("#pos").show();
        $("#poe").show();
    $("#oppstatus").on('change',function(){
        var oppstatus = $("#oppstatus").val();
        if(oppstatus == 3)
        {
        //alert("oppstatus");
        $("#lost").show();
        $("#lostr").show();
        $("#po").hide();
        $("#pos").hide();
        $("#poe").hide();
        }else{
        $("#lost").hide();
        $("#lostr").hide();
        $("#po").show();
        $("#pos").show();
        $("#poe").show();
        }
    })
$('#cancel').on('click',function() {
        window.location.href="<?php echo base_url();?>DashboardCtrl/index";
        return false;
    });
    // $('#assignTo').on('change',function(){
    //     // alert("change");
    //     $.ajax({
    //         type: 'post',
    //         url : '<?php echo base_url();?>DashboardCtrl/getuserlist',
    //         success:function(data)
    //         {
    //             alert('data');
    //         }
    //     })
    // });
} );
	</script>
