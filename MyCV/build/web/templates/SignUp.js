
/*Focus Event For Password*/
document.getElementById('password').onfocus = function () {
    document.getElementById('password').style.opacity = '1';
};
document.getElementById('password').onblur = function () {
    if (document.getElementById('password').value.length !== 0) {
        document.getElementById('password').style.opacity = '1';
    }
    else {
        document.getElementById('password').style.opacity = '0.55';
        document.getElementById('eye1').style.visibility = 'hidden';
    }
};

/*******************************************************************************/

/*Focus Event For Re-Password*/
document.getElementById('re-password').onfocus = function () {
    document.getElementById('re-password').style.opacity = '1';
};
document.getElementById('re-password').onblur = function () {
    if (document.getElementById('re-password').value.length !== 0) {
        document.getElementById('re-password').style.opacity = '1';
    }
    else {
        document.getElementById('re-password').style.opacity = '0.55';
        document.getElementById('eye2').style.visibility = 'hidden';
    }
};

/********************************************************************************/

/*Focus Event For Username*/
document.getElementById('username').onfocus = function () {
    document.getElementById('username').style.opacity = '1';
};
document.getElementById('username').onblur = function () {
    if (document.getElementById('username').value.length !== 0) {
        document.getElementById('username').style.opacity = '1';
    }
    else {
        document.getElementById('username').style.opacity = '0.55';
    }
};
/*******************************************************************/

/*Show Password When Click*/
function showPassword(para1, para2) {
    document.getElementById(para1).addEventListener('click', () => {
        if (document.getElementById(para2).type === 'password') {
            document.getElementById(para2).type = 'text';
        }
        else {
            document.getElementById(para2).type = 'password';
        }
    });
}
showPassword('eye1', 'password');
showPassword('eye2', 're-password');
/**********************************************************************/

/*Validation*/
var xhttp = new XMLHttpRequest();
var result;

xhttp.onreadystatechange = function() {
    if(this.readyState === 4 && this.status === 200) {
        result = xhttp.responseText;
    }
};

function showTicker(para, para2) {
    if (para2 === false) {
        document.getElementById(para).innerHTML = '✘';
        document.getElementById(para).style.color = 'red';
        document.getElementById(para).style.fontSize = '25px';
    }
    else {
        document.getElementById(para).innerHTML = '✔';
        document.getElementById(para).style.color = 'green';
        document.getElementById(para).style.fontSize = '30px';
    }
}
function checkUsername(para){
document.getElementById('username').addEventListener(para, () => {
    xhttp.open("POST","CheckUsername",false);
    xhttp.setRequestHeader('Content-Type','application/x-www-form-urlencoded; charset=UTF-8');
    var user = document.getElementById('username').value;
    var param = "&user="+user;
    xhttp.send(param);
    if (document.getElementById('username').value.length === 0) {
        document.getElementById('username-error').innerHTML = '';
        document.getElementById('username').setCustomValidity("Please fill this blank.");
    }
    else if ((document.getElementById('username').value.length < 8 && document.getElementById('username').value.length > 0)
        || document.getElementById('username').value.length > 20 || document.getElementById('username').value.match(/[A-Za-z]{1}[A-Za-z\d]{7,19}/) === null)
    {
        showTicker('username-error', false);
        document.getElementById('username').setCustomValidity('Username requires 8-20 characters, only letter or number and must starts with a letter.');
    }
    else if(result === "true"){
        showTicker('username-error', false);
        document.getElementById('username').setCustomValidity('This username has been taken.');
    }
    else {
        showTicker('username-error', true);
        document.getElementById('username').setCustomValidity('');
    }
});
}
checkUsername('keyup');
checkUsername('keydown');

function checkPassword(para){
document.getElementById('password').addEventListener(para, () => {
    if (document.getElementById('password').value.length === 0) {
        document.getElementById('password-error').innerHTML = '';
        document.getElementById('re-password-error').innerHTML = '';
        document.getElementById('eye1').style.visibility = 'hidden';
        document.getElementById('password').setCustomValidity("Please fill this blank.");
    }
    else{
        document.getElementById('eye1').style.visibility = 'visible';
        if (document.getElementById('password').value.match(/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z0-9!@#$%&*?]{8,}$/) === null) {
            showTicker('password-error', false);
            document.getElementById('password').setCustomValidity("Password requires at least 8 characters including at least an capital letter.");
            if(document.getElementById('re-password').value.length !== 0 && 
                document.getElementById('password').value === document.getElementById('re-password').value)
            {
                showTicker('re-password-error', true);
                document.getElementById('re-password').setCustomValidity("");
            }
            if(document.getElementById('re-password').value.length !== 0 && 
                document.getElementById('password').value !== document.getElementById('re-password').value)
            {
                showTicker('re-password-error', false);
                document.getElementById('re-password').setCustomValidity("Please enter the same password as above.");
            }
        }
        else {
            if(document.getElementById('re-password').value.length !== 0 && 
                document.getElementById('password').value === document.getElementById('re-password').value)
            {
                showTicker('re-password-error', true);
                document.getElementById('re-password').setCustomValidity("");
            }
            if(document.getElementById('re-password').value.length !== 0 && 
                document.getElementById('password').value !== document.getElementById('re-password').value)
            {
                showTicker('re-password-error', false);
                document.getElementById('re-password').setCustomValidity("Please enter the same password as above.");
            }
            showTicker('password-error', true);
            document.getElementById('password').setCustomValidity('');
        }
    }
});
}
checkPassword('keydown');
checkPassword('keyup');

function checkRepassword(para) {
document.getElementById('re-password').addEventListener(para, () => {
    if (document.getElementById('re-password').value.length === 0) {
        document.getElementById('eye2').style.visibility = 'hidden';
        document.getElementById('re-password-error').innerHTML = '';
        document.getElementById('re-password').setCustomValidity("Please fill this blank.");
    }
    else{
        document.getElementById('eye2').style.visibility = 'visible';
        if (document.getElementById('re-password').value !== document.getElementById('password').value) {
            showTicker('re-password-error', false);
            document.getElementById('re-password').setCustomValidity("Please enter the same password as above.");
        }
        else {
            showTicker('re-password-error', true);
            document.getElementById('re-password').setCustomValidity('');
        }
    }
});
}
checkRepassword('keyup');
checkRepassword('keydown');

document.getElementById('btn').addEventListener('click', () => {
    if (document.getElementById('username').value.length === 0) {
        document.getElementById('username').setCustomValidity("Please fill this blank.");
    }
    else if (document.getElementById('password').value.length === 0) {
        document.getElementById('password').setCustomValidity("Please fill this blank.");
    }
    else if (document.getElementById('re-password').value.length === 0) {
        document.getElementById('re-password').setCustomValidity("Please fill this blank.");
    }
});










