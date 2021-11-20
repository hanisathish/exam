 <div class="container">

   
 <h3><?php echo $title;?></h3>
    <div class="row">
 
  <div class="col-lg-6">
    <form method="post" action="<?php echo site_url('user/index/');?>">
	<div class="input-group">
    <input type="text" class="form-control" name="search" placeholder="<?php echo $this->lang->line('search');?>...">

      <span class="input-group-btn">
        <button class="btn btn-default" type="submit"><?php echo $this->lang->line('search');?></button>
      </span>
	 
	  
    </div><!-- /input-group -->
    
   </form>
   
   
  </div><!-- /.col-lg-6 -->
</div><!-- /.row -->

<div class="row">
 
<div class="col-md-12">
<div class="form-group">	 
					<form method="post" action="">
					
                   
                   <select class="" name="su">
                    <option value="0">--Filter by Job Post--</option>
                       <option value="0">Software Engg</option>
                       <option value="0">Analyst</option>
                   </select>
          
					 <button class="btn btn-default" type="submit"><?php echo $this->lang->line('filter');?></button>
					 </form>
			</div>

</div>

</div>


  <div class="row">
 
<div class="col-md-12">
<br> 
			<?php 
		if($this->session->flashdata('message')){
			echo $this->session->flashdata('message');	
		}
		?>	
		
<table class="table table-bordered">
<tr>
 <th>User Login Id</th>
 <th><?php echo $this->lang->line('email');?></th>
<th><?php echo $this->lang->line('first_name');?> <?php echo $this->lang->line('last_name');?></th>
<th><?php echo $this->lang->line('account_status');?> </th>
<th>Aadhaar Number </th>
<th><?php echo $this->lang->line('action');?> </th>
</tr>
<?php 
if(count($result)==0){
	?>
<tr>
 <td colspan="3"><?php echo $this->lang->line('no_record_found');?></td>
</tr>	
	
	
	<?php
}
foreach($result as $key => $val){
?>
<tr>
 <td><?php echo strtolower(substr($val['first_name'],0,4).random_int(10000, 99999).$val['uid']);?></td>
<td><?php echo $val['email'].' '.$val['wp_user'];?></td>
<td><?php echo $val['first_name'];?> <?php echo $val['last_name'];?></td>
<td><?php echo $val['user_status'];?></td>
<td><?php $str= random_int(1000000000000000, 9999999999999999);
$arr2 = str_split($str, 4);
echo implode("-",$arr2);
?></td>
 <!-- <td><a href="<?php echo site_url('notification/add_new/'.$val['uid']);?>"><?php echo $this->lang->line('send_notification');?></a></td> -->
<td>
 
<a href="<?php echo site_url('user2/view_user/'.$val['uid']);?>"><i class="fa fa-eye" title="View Profile"></i></a>
 
<a href="<?php echo site_url('user/edit_user/'.$val['uid']);?>"><img src="<?php echo base_url('images/edit.png');?>"></a>
<a href="javascript:remove_entry('user/remove_user/<?php echo $val['uid'];?>');"><img src="<?php echo base_url('images/cross.png');?>"></a>

</td>
</tr>

<?php 
}
?>
</table>
</div>

</div>


<?php
if(($limit-($this->config->item('number_of_rows')))>=0){ $back=$limit-($this->config->item('number_of_rows')); }else{ $back='0'; } ?>

<a href="<?php echo site_url('user/index/'.$back);?>"  class="btn btn-primary"><?php echo $this->lang->line('back');?></a>
&nbsp;&nbsp;
<?php
 $next=$limit+($this->config->item('number_of_rows'));  ?>

<a href="<?php echo site_url('user/index/'.$next);?>"  class="btn btn-primary"><?php echo $this->lang->line('next');?></a>





</div>
