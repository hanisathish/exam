<div class="container">

   
<h3><?php echo $title;?></h3>
  
<a href="<?=base_url ()?>upload/download/bulk.xlsx"  class="btn btn-info">Download Sample Excel</a>

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
                   <label >Select file</label> 
                   <input type="file" id="inputEmail" name="email" class="form-control" placeholder="" required autofocus>
           </div>
             

               <div class="form-group">	 
                   <label   >Select an Exam</label> 
                   <select class="form-control" name="su">
                       <option value="0">Exam 1</option>
                       <option value="0">Exam 2</option>
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