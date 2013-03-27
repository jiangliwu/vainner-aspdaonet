function inputCheck() {
    var username = document.getElementById("username").value;
    var password = document.getElementById("inputPassword").value;


    if (password.length < 6 || password.length > 24) {
       
        document.getElementById("input-password-control").className = "control-group error";
        document.getElementById("login-password-hints").innerHTML = "密码输入格式不正确!";
    }
    if (username.length < 6 || username.length > 12) {
        document.getElementById("input-username-control").className = "control-group error";
        document.getElementById("login-username-hints").innerHTML = "账户输入格式不正确!";
        
    }
    
}


function clearInput() {
    document.getElementById("username").value = "";
    document.getElementById("inputPassword").value = "";
    document.getElementById("input-password-control").className = "control-group";
    document.getElementById("login-username-hints").innerHTML = "";
    document.getElementById("input-username-control").className = "control-group";
    document.getElementById("login-password-hints").innerHTML = "";
}