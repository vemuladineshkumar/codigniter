<?php
// $result = $conn->query($selectsql);
// while ($row = $result->fetch_object()){

// 
// $orders= array();
// $result = $conn->query($selectsql);
// while ($row = $result->fetch_object()){
//     $cq = "SELECT * FROM `order_line` left join products on order_line.p_id = products.p_id where order_id = $row->id";
//     $resultc = $conn->query($cq);
//     $row->line = array();
//     while ($rowcc = $resultc->fetch_object()){
//         array_push ($row->line(),$rowcc);
//     }
//     array_push ($orders,$row);
// }
// $selectsql = "SELECT * FROM orders WHERE ordered_by=$ordered_by";


?>
<html>
  <head>
  <link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
  <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
<style>
   .table>tbody>tr>td, .table>tfoot>tr>td{
    vertical-align: middle;
}
@media screen and (max-width: 600px) {
    table#cart tbody td .form-control{
		width:20%;
		display: inline !important;
	}
	.actions .btn{
		width:36%;
		margin:1.5em 0;
	}
	
	.actions .btn-info{
		float:left;
	}
	.actions .btn-danger{
		float:right;
	}
	
	table#cart thead { display: none; }
	table#cart tbody td { display: block; padding: .6rem; min-width:320px;}
	table#cart tbody tr td:first-child { background: #333; color: #fff; }
	table#cart tbody td:before {
		content: attr(data-th); font-weight: bold;
		display: inline-block; width: 8rem;
	}
	
	
	
	table#cart tfoot td{display:block; }
	table#cart tfoot td .btn{display:block;}
	
}
</style>    
</head>
<body>
<h1><?php echo $title ?></h1>
<div class="container">
	<table id="cart" class="table table-hover table-condensed">
    				<thead>
						<tr>
							<th style="width:50%">product ID</th>
							<th style="width:10%"> product name</th>
							<th style="width:8%">product description</th>
							<th style="width:22%" class="text-center">product price</th>
							<th style="width:10%"></th>
						</tr>
					</thead>
					<tbody>
                   <?php foreach($productlist as $ord) { ?>
						<tr>
							<td data-th="Product">
                            <?php echo $ord->p_id; ?>
							</td>
							<td data-th="Price"><?php echo $ord->p_name; ?></td>
							<td data-th="Quantity">
                            <?php echo $ord->p_description; ?>
							</td>
							<td data-th="Subtotal" class="text-center"> <?php echo $ord->p_price; ?></td>
							<td class="actions" data-th="">
								<button class="btn btn-info btn-sm"><a href="/code/Product/edit/<?php echo $ord->p_id; ?>"><i class="fa fa-refresh"></i></a></button>
								<button class="btn btn-danger btn-sm"><a href="/code/Product/remove/<?php echo $ord->p_id; ?>"><i class="fa fa-trash-o"></i></a></button>								
							</td>
						</tr>
                   <?php } ?>
					</tbody>
					<tfoot>
						<tr class="visible-xs">
							<td class="text-center"><strong>Total 1.99</strong></td>
						</tr>
						<tr>
							<td><a href="#" class="btn btn-warning"><i class="fa fa-angle-left"></i> Continue Shopping</a></td>
							<td colspan="2" class="hidden-xs"></td>
							<td class="hidden-xs text-center"><strong>Total $1.99</strong></td>
							<td><a href="#" class="btn btn-success btn-block">Checkout <i class="fa fa-angle-right"></i></a></td>
						</tr>
					</tfoot>
				</table>
</div>
</body>
</html>