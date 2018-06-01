<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="modal fade" id="regNickNameFormModal" role="dialog" aria-hidden="true" aria-labelledby="myModalLabel">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel">欢迎新住户！为你的帐号取一个昵称吧，昵称不能修改哦！</h4>
            </div>
            <div class="modal-body">
                <form role="form" id="regNickNameForm"  method="post">
                    <div class="form-group">
                        <label for="nickName">  </label>
                        <input class="form-control" name="nickName" id="nickName" type="text" required/>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button class="btn btn-primary" type="button" id="confirmButton" onclick="regNickName()">确认</button>
                <button class="btn btn-default" type="button"
                        data-dismiss="modal">关闭窗口</button>
            </div>
        </div>
    </div>
</div>
