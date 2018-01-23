<fieldset class="fieldset-style">
		<div class="form-horizontal">
			<div class="panel panel-default">
				<div class="panel-heading">
					<div class="container-fluid header-padding">
						<div class="row-fluid">
							<div class="span7" align="left">User Info</div>
						</div>
					</div>
				</div>
				<div class="container-fluid panel-body">
					<div class="row-fluid search-align">
						<div class="firstquad">
							<div class="control-group">
								<label class="control-label">Id<font color="red">*</font></label>
								<div class="controls">
								<input type="text" value="${student.id}" disabled/></div>
							</div>
							<div class="control-group">
								<label class="control-label">Name</label>
								<div class="controls"><input type="text" value="${student.name}" disabled/></div>
							</div>


							<div class="control-group">
								<label class="control-label">Current Address</label>
								<div class="controls"><input type="text" value="${student.currentAddress}" disabled/></div>
							</div>

							<div class="control-group">
								<label class="control-label">Permanent Address</label>
								<div class="controls"><input type="text" value="${student.permanentAddress}" disabled/></div>
							</div>

							<div class="control-group">
								<label class="control-label">Mobile No.</label>
								<div class="controls"><input type="text" value="${student.mobileNo}" disabled/></div>
							</div>
							
							<div class="control-group">
								<label class="control-label"></label>
								<div class="controls"></div>
							</div>
							 <div class="control-group">
								<form action="printidcard" method="GET">
									 <input type="hidden" id="id" name="id" value="${student.id}"/>
									 <input type="Submit" class="btn btn-primary" value="Print"/>
                                </form>
							</div>
						</div>

						<!-- 2 Column -->

						<div class="firstquad">

							<div class="control-group">
							
								<label class="control-label">Parent Mobile No. </label>
								<div class="controls">
										<input type="text" value="${student.parentMobileNo}" disabled/>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Parent Occupation</label>
								<div class="controls">
										<input type="text" value="${student.parentOccupation}" disabled />
								</div>
							</div>
							
							<div class="control-group">
								<label class="control-label">Exam Description</label>
								<div class="controls"><input type="text" value="${student.studentExamDesc}" disabled/></div>
							</div>
							<div class="control-group">
								<label class="control-label">Admission Date</label>
								<div class="controls"><input type="text" value="${student.date}" disabled/></div>
							</div>
							<div class="control-group">
								<label class="control-label">emailId</label>
								<div class="controls"><input type="text" value="${student.emailId}" disabled/></div>
							</div>
							
							<div class="control-group">
								<label class="control-label">${student.photoIdProofType}</label>
								<div class="controls"><input type="text" value="${student.photoIdProofNo}" disabled/></div>
							</div>
							
							 <div class="control-group">
                                <form action="payment" method="GET" >   
                                	<input type="hidden" id="id" name="id" value="${student.id}"/>
                                    <input type="Submit" class="btn btn-primary" value="Make Payment"/>
                                </form>   
                                  
							</div>
						</div>

						<!-- 3 Column -->

						<div class="firstquad">
							<%-- <div class="control-group">
								<label class="control-label">Amount</label>
								<div class="controls">${usedPlanInfo.amount}</div>
							</div> --%>
						</div>
					</div>
				</div>
				<div class="panel-heading">
					<div class="container-fluid header-padding">
						<div class="row-fluid">
							<div class="span7" id= "smsstatus" align="left"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
</fieldset>
<!-- ./wrapper -->
