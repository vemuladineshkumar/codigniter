<?php //echo form_open('product/add',array("class"=>"form-horizontal")); ?>
<form method="post" action="/code/product/edit/<?php echo $product['p_id']; ?>">
	<div class="form-group">
		<label for="p_name" class="col-md-4 control-label">P Name</label>
		<div class="col-md-8">
			<input type="text" name="p_name" value="<?php echo $product['p_name']; ?>" class="form-control" id="p_name" />
		</div>
	</div>
	<div class="form-group">
		<label for="p_description" class="col-md-4 control-label">P Description</label>
		<div class="col-md-8">
			<input type="text" name="p_description" value="<?php echo $product['p_description']; ?>" class="form-control" id="p_description" />
		</div>
	</div>
	<div class="form-group">
		<label for="p_price" class="col-md-4 control-label">P Price</label>
		<div class="col-md-8">
			<input type="text" name="p_price" value="<?php echo $product['p_price']; ?>" class="form-control" id="p_price" />
		</div>
	</div>
	<div class="form-group">
		<label for="p_img" class="col-md-4 control-label">P Img</label>
		<div class="col-md-8">
			<input type="text" name="p_img" value="<?php echo $product['p_img']; ?>" class="form-control" id="p_img" />
		</div>
	</div>
	<div class="form-group">
		<label for="cat_id" class="col-md-4 control-label">Cat Id</label>
		<div class="col-md-8">
			<input type="text" name="cat_id" value="<?php echo $product['cat_id']; ?>" class="form-control" id="cat_id" />
		</div>
	</div>
	<div class="form-group">
		<label for="subcat_id" class="col-md-4 control-label">Subcat Id</label>
		<div class="col-md-8">
			<input type="text" name="subcat_id" value="<?php echo $product['subcat_id']; ?>" class="form-control" id="subcat_id" />
		</div>
	</div>
	<div class="form-group">
		<label for="created_on" class="col-md-4 control-label">Created On</label>
		<div class="col-md-8">
			<input type="text" name="created_on" value="<?php echo $product['created_on']; ?>" class="form-control" id="created_on" />
		</div>
	</div>
	<div class="form-group">
		<label for="updated_on" class="col-md-4 control-label">Updated On</label>
		<div class="col-md-8">
			<input type="text" name="updated_on" value="<?php echo $product['updated_on']; ?>" class="form-control" id="updated_on" />
		</div>
	</div>
	
	<div class="form-group">
		<div class="col-sm-offset-4 col-sm-8">
			<button type="submit" class="btn btn-success">Save</button>
        </div>
	</div>
</form>
<?php //echo form_close(); ?>