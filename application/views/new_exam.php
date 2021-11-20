<div class="container">

   
<h3><?php echo $title;?></h3>
  


 <div class="row">
    <form method="post" action="<?php echo site_url('user/insert_user/');?>">
   
<div class="col-md-8">
<br> 
<div class="login-panel panel panel-default">
       <div class="panel-body"> 
   
   
   
           <?php 
       if($this->session->flashdata('message')){
           echo $this->session->flashdata('message');	
       }
       ?>	
       
       
       <div class="form-group">	 
                   <label >Enter Exam Name</label> 
                   <input type="text" id="inputEmail" name="email" class="form-control" placeholder="" required autofocus>
           </div>

           <div class="form-group">	 
                   <label >Select Exam Date</label> 
                   <input type="text" id="inputEmail" name="text" class="form-control" placeholder="" required autofocus>
           </div>

          <div class="form-group">	 
                   <label   >Select Job Post</label> 
                   <select class="form-control" name="su">
                    <option value="0">--Select--</option>
                       <option value="0">Software Engg</option>
                       <option value="0">Analyst</option>
                   </select>
           </div>   



   <button class="btn btn-default" type="submit"><?php echo $this->lang->line('submit');?></button>

       </div>
</div>




</div>
     </form>
</div>





</div>
<script>
getexpiry();
</script>