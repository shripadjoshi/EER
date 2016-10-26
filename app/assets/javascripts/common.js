$(document).ready(function(){
	$('.dataTable').DataTable({

	});
	$("#countryId").on("change", function(){
		$("#company_country").val($(this).val());
		$("#company_state").val("");
		$("#company_city").val("");
	});
	$("#stateId").on("change", function(){
		$("#company_country").val($("#countryId").val());
		$("#company_state").val($(this).val());
		$("#company_city").val("");
	})
	$("#cityId").on("change", function(){
		$("#company_country").val($("#countryId").val());
		$("#company_state").val($("#stateId").val());
		$("#company_city").val($(this).val());
	})
})

