<fieldset class="fieldset-style">
	<!-- <div class="alert alert-success" id="idsuccess">
		<button type="button" class="close" data-dismiss="alert">&times;</button>
		<i class="icon-thumbs-up"></i>
		Module added successfully!
	</div> -->
	 <div class="alert alert-error" id="idwarning">
		<button type="button" class="close" data-dismiss="alert" onClick="buttonClick();">&times;</button>
		<i class="icon-warning-sign"></i>
		<div id="idwarningmsg" filter="false"></div>
	</div>
		
	<!-- <div class="alert alert-error" id="iderror">
		<button type="button" class="close" data-dismiss="alert">&times;</button>
		<i class="icon-remove"></i>
		Module added to project with errors!
	</div>  -->
	<form action="registration" method="POST" onsubmit="return validateForm()">
		<div class="form-horizontal">
			<div class="panel panel-default">
				<div class="panel-heading">
					<div class="container-fluid header-padding">
						<div class="row-fluid">
							<div class="span7" align="left">Student Registration</div>
							<div class="span5" align="right">
								<input type="submit" class="btn-save" value="" id="btnsave" />
							</div>
						</div>
					</div>
				</div>
				<div class="container-fluid panel-body">
					<div class="row-fluid search-align">
						<div class="firstquad">
							<div class="control-group">
								<label class="control-label">Full Name<font color="red">*</font></label>
								<div class="controls">
									<input type="text" class="form-control" id="name" name="name" />
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Current Address.<font color="red">*</font></label>
								<div class="controls">
									<textarea class="form-control" id="currentAddress" name="currentAddress"></textarea>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Permanent Address.<font color="red">*</font></label>
								<div class="controls">
									<textarea class="form-control" id="permanentAddress" name="permanentAddress"></textarea>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Phone No.<font color="red">*</font></label>
								<div class="controls">
									<input type="text" class="form-control" id="mobileNo" name="mobileNo" maxlength="10"/>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Parent's Phone No.<font color="red">*</font></label>
								<div class="controls">
									<input type="text" class="form-control" id="parentMobileNo" name="parentMobileNo" maxlength="10"/>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Parent's Occupation</label>
								<div class="controls">
									<input type="text" class="form-control" id="parentOccupation" name="parentOccupation" />
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Student's Exam Desc.<font color="red">*</font></label>
								<div class="controls">
									<input type="text" class="form-control" id="studentExamDesc" name="studentExamDesc" />
								</div>
							</div>
						</div>

						<!-- 2 Column -->

						<div class="firstquad">
							<div class="control-group">
								<label class="control-label">Date</label>
								<div class="controls">
									<input type="text" class="form-control" id="date" name="date" readonly>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Email Id</label>
								<div class="controls">
									<input type="text" class="form-control"
										placeholder="Enter Email Id." name="emailId" id="emailId">
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Select Proof Type</label>
								<div class="controls">
									<select id="photoIdProofType" name="photoIdProofType"
										Style="height: 25px; width: 206px !important;">
										<option value="">Proof Type</option>
										<option value="AADHAR CARD">Aadhar Card</option>
										<option value="ELECTION CARD">Election Card</option>
										<option value="PAN CARD">Pan Card</option>
										<option value="DRIVING LICENCES">Driving license</option>
										<option value="PASS PORT">Passport</option>
									</select>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Photo ID Proof No</label>
								<div class="controls">
									<input type="text" class="form-control" placeholder="Enter Photo Id Proof No" id="photoIdProofNo" name="photoIdProofNo">
								</div>
							</div>
						</div>

						<!-- 3 Column -->

						<div class="firstquad">

						</div>
					</div>
				</div>
			</div>
		</div>
	</form>
</fieldset>
<!-- ./wrapper -->



<script>
$('#idwarning').hide();
	var d = new Date();

	var currDate = d.getDate();
	var currMonth = d.getMonth();
	var currYear = d.getFullYear();

	if (currDate < 10) {
		currDate = "0" + currDate;
	}
	if ((currMonth + 1) < 10) {
		currMonth = "0" + (currMonth + 1);
	}

	/* var dateStr = currDate + "/" + currMonth + "/" + currYear; */
	var dateStr = currMonth + "/" + currDate + "/" + currYear;

	$('#date').datepicker({
		autoclose : true,
		todayHighlight : true,
		format : "mm/dd/yyyy",
		defaultDate : dateStr
	});

	$('#date').val(dateStr);

	function call() {
		var plan = $("#plan").val();
		var orgId= $("#orgId").val();
		if (plan != 0) {
			$("#amount").val("");
			$.ajax({
				url : 'prepaidcodestatusbyday',
				type : 'GET',

				data : {
					plan : plan,
					orgId :orgId
				},
				success : function(data) {
					//alert(data);
					if (data.size != null && data.size > 0) {
						if(data.warnPoint >= data.size ){
							$("#prepaidcodeStatus").html(
							"<font color='red'>"+data.size+"</font> <font color='green'> Available</font>");
						}else{
							$("#prepaidcodeStatus").html(
							"<font color='green'> Available</font>");
						}
						$("#amount").val(data.amount);
					} else {
						$("#prepaidcodeStatus").html(
								"<font color='red'>Not Available</font>");
					}
				}
			});
		}
	}
	
	function validateForm() {
        var name = $("#name").val();
        var currentAddress = $("#currentAddress").val();
        var permanentAddress= $("#permanentAddress").val();
        var mobileNo = $("#mobileNo").val();
        var parentMobileNo = $("#parentMobileNo").val();
        var studentExamDesc = $("#studentExamDesc").val();
        
        var msg="";
        if (name == "") {
        	msg=msg+"* Please Enter Student Name <br>";
        }
        if (currentAddress == "") {
        	msg=msg+"* Please Enter Student's Current Address <br>";
        }
        if (permanentAddress == "") {
        	msg=msg+"* Please Enter Student's Permanent Address <br>";
        }
        if (mobileNo == "") {
        	msg=msg+"* Please Enter Mobile No. <br>";
        }
        if (parentMobileNo == ""){
        	msg=msg+"* Please Enter Parent's Mobile No. <br>";
        }
        if (studentExamDesc == ""){
        	msg=msg+"* Please Enter Student's Exam Desc. <br>";
        }
        if (msg == null || msg==""){
        	return true;
        }
        $("#idwarning").show();
        $("#idwarningmsg").html(msg);
        return false;
    }
	
	function buttonClick(){
		 $("#idwarning").hide();
	}
</script>