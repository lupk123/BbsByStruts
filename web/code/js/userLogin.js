$(function () {

    //登录界面
    $('#login').dialog({
        title : '登录后台',
        width : 350,
        height : 200,
        modal : true,
        iconCls : 'icon-login',
        buttons : '#btn',
    });

    //管理员帐号验证
    $('#manager').validatebox({
        required : true,
        missingMessage : '请输入管理员帐号',
        invalidMessage : '管理员帐号不得为空',
    });

    //管理员密码验证
    $('#password').validatebox({
        required : true,
        validType : 'length[6,30]',
        missingMessage : '请输入管理员密码'
    });

    //加载时判断验证
    if (!$('#manager').validatebox('isValid')) {
        $('#manager').focus();
    } else if (!$('#password').validatebox('isValid')) {
        $('#password').focus();
    }


    //单击登录
    $('#btn a').click(function () {
        if (!$('#manager').validatebox('isValid')) {
            $('#manager').focus();
        } else if (!$('#password').validatebox('isValid')) {
            $('#password').focus();
        } else {
            alert('提交中。。。');
        }
    });

});

