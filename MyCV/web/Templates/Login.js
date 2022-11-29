
/*Event for alert button when create a new account*/
document.getElementById('alert-button').onclick = function(){
    document.getElementById('created').style.animationName = 'closeAlert';
    document.getElementById('created').style.animationDuration = '720ms';
    document.getElementById('created').style.animationIterationCount = '1';
};
document.getElementById('alert-button').addEventListener('keydown', (e) => {
    if(e.code === 'Enter'){
        document.getElementById('created').style.animationName = 'closeAlert';
        document.getElementById('created').style.animationDuration = '750ms';
        document.getElementById('created').style.animationIterationCount = '1';
    }
});
/*******************************************************************************/

/*Check validation of input*/
var xhttp = new XMLHttpRequest();
var result;

xhttp.onreadystatechange = function() {
    if(this.readyState === 4 && this.status === 200) {
        result = xhttp.responseText;
    }
};

document.getElementById('form').onsubmit = function(){
    xhttp.open("POST","LoginControl",false);
    xhttp.setRequestHeader('Content-Type','application/x-www-form-urlencoded; charset=UTF-8');
    var user = document.getElementById('username').value;
    var pass = document.getElementById('password').value;
    var param = "user="+user+"&pass="+pass;
    xhttp.send(param);
    
    if(document.getElementById('username').value.length === 0){
        return false;
    }
    else if(document.getElementById('password').value.length === 0){
        return false;
    }
    else if(result === "!username"){
        document.getElementById('error').innerHTML = 'User Name Does Not Exists!';
        return false;
    }
    else if(result === "!password"){
        document.getElementById('error').innerHTML = 'Incorrect Password!';
        return false;
    }
    else{
        document.getElementById('error').innerHTML = '';
        document.getElementById('username').setCustomValidity("");
        document.getElementById('password').setCustomValidity("");
        return true;
    }
};









