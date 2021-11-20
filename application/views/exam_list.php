<div class="container">
   
 <h3><?php echo $title;?></h3>
    
 <a href="<?php echo site_url('exam/add_new_exam');?>" class="btn btn-info"><i class="fa fa-plus"></i>  Add Exam</a>
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
 <th>#</th>
 <th>Exam Name</th>
 <th>Exam Date</th>
 <th>Job Post</th>
 <th>Exam URL</th>
<th><?php echo $this->lang->line('action');?> </th>
</tr>


<tr>
 <td>1</td>
 <td>Recruitment Drive 1</td>
 <td>30th Oct 2021</td>
 <td>Software Engg</td>
 <td><?php echo site_url('quiz/quiz_login/7');?> </td>
 <td>
 <a href="" class="btn btn-success"  >Edit </a>
 <a href="" class="btn btn-danger"  >Delete </a>

</td>
</tr>

<tr>
 <td>2</td>
 <td>Recruitment Drive 2</td>
 <td>30th Nov 2021</td>
 <td>Analyst</td>
 <td><?php echo site_url('quiz/quiz_login/7');?> </td>
 <td>
 <a href="" class="btn btn-success"  >Edit </a>
 <a href="" class="btn btn-danger"  >Delete </a>

</td>
</tr>

</table>


</div>

</div>

</div>