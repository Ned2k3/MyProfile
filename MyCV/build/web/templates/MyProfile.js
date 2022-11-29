
/*Show drop down content when hover the arrow or the title*/
function closeDropDown(para) {
    document.getElementById(para).style.visibility = 'hidden';
}

function showDropDown(para) {
    document.getElementById(para).style.visibility = 'visible';
}

function changeArrowColorInHover(para) {
    document.getElementById(para).style.color = '#ff0000';
}

function chaneArrowColorOutHover(para) {
    document.getElementById(para).style.color = '#c9c1c1';
}

function showDropDownWhenHover(para1, para2, para3, para4) {

    document.getElementById(para1).addEventListener('mouseenter', () => {
        showDropDown('edu-dropdown');
        changeArrowColorInHover('arrow1');
    });
    document.getElementById(para1).addEventListener('mouseleave', () => {
        closeDropDown('edu-dropdown');
        chaneArrowColorOutHover('arrow1');
    });
    document.getElementById(para2).addEventListener('mouseenter', () => {
        showDropDown('interests-dropdown');
        changeArrowColorInHover('arrow2');
    });
    document.getElementById(para2).addEventListener('mouseleave', () => {
        closeDropDown('interests-dropdown');
        chaneArrowColorOutHover('arrow2');
    });
    document.getElementById(para3).addEventListener('mouseenter', () => {
        showDropDown('pros-dropdown');
        document.getElementById("arrow3").style.transform = 'rotate(180deg)';
        changeArrowColorInHover('arrow3');
    });
    document.getElementById(para3).addEventListener('mouseleave', () => {
        closeDropDown('pros-dropdown');
        document.getElementById("arrow3").style.transform = 'none';
        chaneArrowColorOutHover('arrow3');
    });
    document.getElementById(para4).addEventListener('mouseenter', () => {
        showDropDown('career-dropdown');
        document.getElementById("arrow4").style.transform = 'rotate(180deg)';
        changeArrowColorInHover('arrow4');
    });
    document.getElementById(para4).addEventListener('mouseleave', () => {
        closeDropDown('career-dropdown');
        document.getElementById("arrow4").style.transform = 'none';
        chaneArrowColorOutHover('arrow4');
    });

}
showDropDownWhenHover('arrow1', 'arrow2', 'arrow3', 'arrow4');
showDropDownWhenHover('edu', 'interests', 'pros', 'career');
showDropDownWhenHover('edu-dropdown', 'interests-dropdown', 'pros-dropdown', 'career-dropdown');
/******************************************************************/

/*Hide alert when click button "ok"*/
document.getElementById('alert-button').onclick = function(){
    document.getElementById('alert').style.visibility = 'hidden';
};

var enter = 0;
document.addEventListener('keydown', (e) => {
    if(e.code === 'Enter'){
        if(document.getElementById('alert').style.visibility === 'visible' && document.getElementById('input').value.length === 0){
            document.getElementById('alert').style.visibility = 'hidden';
        }
    }
});
/****************************************************************************************/

/*Send message to server*/
var request = new XMLHttpRequest();
var result;

request.onreadystatechange = function(){
    if(request.readyState === 4 && request.status === 200){
        result = request.responseText;
    }    
};

document.getElementById('input').addEventListener('keydown', (e) => {
    if(e.code === 'Enter'){
        request.open("POST","MessageSendingControl",false);
        request.setRequestHeader('Content-Type','application/x-www-form-urlencoded; charset=UTF-8');
        var message = document.getElementById('input').value;
        request.send("message="+message);
        if(result === "1"){
            document.getElementById('alert-header').innerHTML = 'ありがとうございます💖';
            document.getElementById('alert-content').innerHTML = 'Thank you for sending message!';
            document.getElementById('alert').style.visibility = 'visible';
            window.scroll(0,0);
            document.getElementById('input').blur();
            setTimeout("document.getElementById('input').value = ''",100);
        }
    }
});




