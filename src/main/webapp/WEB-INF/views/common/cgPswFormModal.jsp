<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<div class="modal fade" id="cgPswFormModal" role="dialog" aria-hidden="true" aria-labelledby="myModalLabel">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button class="close" aria-hidden="true" type="button" data-dismiss="modal">×</button>
                <h4 class="modal-title" id="myModalLabel">修改密码</h4>
            </div>
            <div class="modal-body">
                <form role="form" id="cgPswForm"  method="post">
                    <div class="form-group">
                        <label for="password1"> 密码 </label>
                        <input class="form-control" name="password" id="password1" type="password" placeholder="密码" required/>
                    </div>
                    <div class="form-group">
                        <label for="passwordConfirm"> 确认密码 </label>
                        <input class="form-control" name="passwordConfirm" id="passwordConfirm" type="password" required/>
                        <span id="checkPassword" style="color: red"></span>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button class="btn btn-primary" type="button" id="confirmButton" onclick="changePsw()" disabled="disabled">确认</button>
                <button class="btn btn-default" type="button"
                        data-dismiss="modal">关闭窗口</button>
            </div>
        </div>
    </div>
</div>
