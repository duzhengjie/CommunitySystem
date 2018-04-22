<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="modal fade" id="fgPswFormModal" role="dialog" aria-hidden="true" aria-labelledby="myModalLabel">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button class="close" aria-hidden="true" type="button" data-dismiss="modal">×</button>
				<h4 class="modal-title" id="myModalLabel">忘记密码</h4>
			</div>
			<div class="modal-body">
				<form role="form" id="fgPswForm"  method="post">
					<div class="form-group">
						<label for="name"> 姓名 </label>
						<input class="form-control" name="name" id="name" type="text" placeholder="姓名" required/>
						<span id="checkNameResult"></span>
					</div>
					<div class="form-group">
						<label for="identity"> 身份证号 </label>
						<input class="form-control" name="identity" id="identity" type="text" required/>
					</div>
					<div class="form-group">
						<label for="tel"> 电话号码 </label>
						<input class="form-control" id="tel" type="text" required/>
					</div>
					<div class="form-group">
						<label for="role"> 身份 </label>
							<select id="role">
						  <label>
							  <option name="role" id="role1" value="住户" selected="selected">住户</option>
						  </label>
						  <label>
							  <option name="role" id="role2" value="物业管理员">物业管理员</option>
						  </label>
							<label>
								<option name="role" id="role3" value="系统管理员">系统管理员</option>
							</label>
							</select>
					</div>
				</form>
			</div>
			<div class="modal-footer">
				<button class="btn btn-primary" type="button" onclick="fgPsw()">确认</button>
				<button class="btn btn-default" type="button"
					data-dismiss="modal">关闭窗口</button>
			</div>
		</div>
	</div>
</div>
