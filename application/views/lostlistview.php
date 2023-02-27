<?php include('template/dashboardheader.php');?>
<?php //echo "<pre>";print_r($lost);exit;?>
<section id="main-content">
     <section class="wrapper main-wrapper "> 
            <?php if ($this->session->flashdata('success')) { ?>
            <div class="alert alert-success"> <?= $this->session->flashdata('success') ?> </div> 
        <?php } ?>  
         <div>
            <?php if($_SESSION['userid'] ==1){?>
         	<h1>Lost Opportunity List</h1>
            <?php } else {?>
                <h1> Task Pending Lists</h1>
            <?php } ?>
         </div> 
         
      <div class="clearfix"></div> <!--**************clearfix**************-->
         
         <div class="col">              
              
              	<table id="example" class="table table-striped table-responsive" style="width:100%">
        <thead>
            <tr>
                <th>S.No</th>
                <th>Enquiry ID</th>
                <th>Enquiry Recv Date</th>
                <th>Name</th>
                <th>Company Name</th>
                <th>Opportunit Service</th>
                <th>RFQ Date</th>
                <th>RFQ Submited Date</th>
                <th>Reason For Rejection</th>
                <th>Opprtunity Rejectiont Date</th>
                <th>Project Status</th>
                <th>Opportunity Status</th>
                <th>Comments</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <?php if(isset($lost))
            $i =1;
                foreach ($lost as $key => $value) {
                    $enqrecdate = date('d-m-Y',strtotime($value['enq_recv_date']));
                    $rfqdate = date('d-m-Y',strtotime($value['rfq_date']));
                    $rfqsubmiteddate = date('d-m-Y',strtotime($value['rfq_submited_date']));
                    $porecvdate = date('d-m-Y',strtotime($value['po_rec_date']));
                    $projstartdate = date('d-m-Y',strtotime($value['project_start_date']));
                    $projenddate = date('d-m-Y',strtotime($value['project_end_date']));
                    $rejectiondate = date('d-m-Y',strtotime($value['rejection_date']));
                    
                    if($value['project_status'] == 1)
                    {
                        $projstaus = "Active";
                    }else{
                        $projstaus = "InActive";
                    }

                    if($value['opp_status'] == 1)
                    {
                        $opprtunitystaus = "Inprogress";
                    }else if($value['opp_status'] == 2){
                        $opprtunitystaus = "Won";
                    }else
                    {
                       $opprtunitystaus ="Lost";
                    }
                    ?>
                   
             <tr class="table-primary">
                <td><?php echo $i;?></td>
                <td><?php echo $value['enq_id'];?></td>
                <td><?php echo $enqrecdate;?></td>
                <td><?php echo $value['name'];?></td>
                <td><?php echo $value['comp_name'];?></td>
                <td><?php echo $value['service_name'];?></td>
                <td><?php echo $rfqdate;?></td>
                <td><?php echo $rfqsubmiteddate;?></td>
                <td><?php echo $value['rejection_reason'];?></td>
                <td><?php echo $rejectiondate;?></td>
                <td><?php echo $projstaus;?></td>
                <td><?php echo $opprtunitystaus;?></td>
                <td><?php echo $value['comments'];?></td>
                
                
                <td><a href="<?php echo base_url('DashboardCtrl/viewEditlostlist').'/'.$value['won_id'];?>"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a>&nbsp;
                    <a href="<?php echo base_url('DashboardCtrl/lostopprtunitydelete').'/'.$value['won_id'];?>"><i class="fa fa-trash" aria-hidden="true"></i></a>
                </td>
            </tr>
           <?php
           $i++;
                 }
                 ?>
            
            </tbody>
       <!--  <tfoot>
            <tr>
                <th>S.No</th>
                <th>Enquiry ID</th>
                <th>Enquiry Recv Date</th>
                <th>Name</th>
                <th>Company Name</th>
                <th>Opportunit Desc</th>
                <th>RFQ Date</th>
                <th>RFQ Submited Date</th>
                <th>Reason For Rejection</th>
                <th>Opprtunity Rejectiont Date</th>
                <th>Project Status</th>
                <th>Opportunity Status</th>
                <th>Comments</th>
                <th>Action</th>
            </tr>
        </tfoot> -->
    </table>
              
         </div>
         
        </section>
    </section>
<?php include('template/footer.php');?>
<script>
	$(document).ready(function() {
    $('#example').DataTable( {
        dom: 'Bfrtip',
        buttons: [
            {
                extend: 'collection',
                className: 'custom-html-collection',
                buttons: [
                    'pdf',
                    'csv',
                    'excel',
                    
                ]
            }
        ]
    } );
} );
	</script>
