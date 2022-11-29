<%-- 
    Document   : MyCV
    Created on : Nov 24, 2022, 5:57:27 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MyProfile</title>
        <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/templates/MyProfile.css"/>
        <script src="https://kit.fontawesome.com/071e3e204d.js" crossorigin="anonymous"></script>
    </head>
    <body>
        <div id="menu">
        <ul>
            <content>HA QUANG DAO</content>
            <li class="list"><a href="https://discord.com/channels/@me" target="_blank">Discord</a></li>
            <li class="list"><a href="https://steamcommunity.com/profiles/76561198956435612/" target="_blank">Steam</a></li>
            <li class="list"><a href="https://github.com/Ned2k3" target="_blank">GitHub</a></li>
            <li class="list"><a href="https://www.facebook.com/profile.php?id=100029435676948" target="_blank">FaceBook</a></li>
        </ul>
    </div>

    <div id="content">

        <div id="right-content">

            <div id="intro">
                <p id="p1">
                    こんにちは、私の 名前は Ha Quang Dao です。あなたは 私の プロフィール Web-サイトに アクセス しています。
                    私は Java 開発の仕事を探しています。このページに興味を持った場合は、以下にメッセージを送信するか、メールで連絡してください。
                </p>
                <p id="p2">ありがとうございます!</p>
            </div>

            <div id="detail">

                <div class="details">
                    <hr class="line" />
                    <span class="angle"><i id="arrow1" class="fa-solid fa-angles-down"></i></span>
                    <div id="edu-dropdown">
                        <p>EDUCATION</p>
                        <hr />
                        <ul>
                            <li><span>2010-2014:</span><a href="https://c1nguyendu.pgdhadong.edu.vn/" target="_blank">Nguyen Du PrimarySchool</a></li>
                            <li><span>2014-2018:</span><a href="https://luongthevinh.com.vn/home/" target="_blank">Luong The Vinh(csA) SecondarySchool</a></li>
                            <li><span>2018-2021:</span><a href="https://luongthevinh.com.vn/home/" target="_blank">Luong The Vinh(cs1) HighSchool</a></li>
                            <li><span>2021-2024:</span><a href="https://daihoc.fpt.edu.vn/" target="_blank">FPT University(Hola) - Software Engineering</a></li>
                        </ul>
                        <div class="force-overflow"></div>
                    </div>
                    <h1 id="edu"><i class="fa-solid fa-graduation-cap"></i>EDUCATION</h1>
                </div>

                <div class="details">
                    <hr class="line" />
                    <span class="angle"><i id="arrow2" class="fa-solid fa-angles-down"></i></span>
                    <div id="interests-dropdown">
                        <p>INTERESTS</p>
                        <hr />
                        <ul>
                            <content><i class="fa-solid fa-futbol"></i>SPORT</content>
                            <li class="sport"><a href="https://vi.wikipedia.org/wiki/B%C3%B3ng_%C4%91%C3%A1" target="_blank">Soccer</a></li>
                            <li class="sport"><a href="https://en.wikipedia.org/wiki/Swimming_(sport)" target="_blank">Swimming</a></li>
                            <li class="sport"><a href="https://en.wikipedia.org/wiki/Muay_Thai" target="_blank">Muay Thai</a></li>
                            <content><i class="fa-solid fa-music"></i>MUSIC</content>
                            <li class="music"><a href="https://www.youtube.com/watch?v=og80AS13XjU" target="_blank">Canh Hong Phai - Đạt Long Vinh x Bolero Lofi</a></li>
                            <li class="music"><a href="https://www.youtube.com/watch?v=P1W0AMVTeXQ" target="_blank">Tha Vao Mua - Trung Quan Idol</a></li>
                            <li class="music"><a href="https://www.youtube.com/watch?v=rSn1-EXQL-A" target="_blank">Gui - Reddy</a></li>
                            <content><i class="fa-solid fa-book"></i>Book</content>
                            <li class="book"><a href="https://tiki.vn/tuyen-tap-vu-trong-phung-p438979.html" target="_blank">Tuyen tap Vu Trong Phung</a></li>
                            <li class="book"><a href="https://docsach24.co/e-book/tuyen-tap-truyen-ngan-nguyen-cong-hoan-274.html" target="_blank">Tuyen tap Nguyen Cong Hoan</a></li>
                            <li class="book"><a href="https://www.fahasa.com/combo-harry-potter-bo-7-cuon.html" target="_blank">Harry Potter</a></li>
                        </ul>
                        <div class="force-overflow"></div>
                    </div>
                    <h1 id="interests"><i class="fa-solid fa-music"></i>INTERESTS</h1>
                </div>

                <div class="details">
                    <hr class="line" />
                    <span class="angle"><i id="arrow3" class="fa-solid fa-angles-down"></i></span>
                    <div id="pros-dropdown">
                        <p>PROS & CONS</p>
                        <hr />
                        <ul>
                            <content><i class="fa-solid fa-thumbs-up"></i>Advantages</content>
                            <li class="advantage">I am a <span>discliplined, humble, dedicated and passionately</span> person, said by most of people who has relationship with me.</li>
                            <li class="advantage">I am quite <span>introverted while working</span> but can be really friendly when interacting with others people.</li>
                            <li class="advantage">I have extra skills in <span>convincing customers</span> and part of knowledge in Logistics.</li>
                            <li class="advantage">My Japanese level is <span>N4</span> and my ielts band is <span>7.0 ovr</span>.</li>
                            <li class="advantage">I have experiences in <span>Java Web Developent</span> and <span>Java GUI</span>, also i can work as a full-stack dev.</li>
                            <li class="advantage">Lastly, i am realy self-confident to <span>lead a team</span> and make plans for a project.</li>
                            <content><i class="fa-solid fa-thumbs-down"></i>Disadvantages</content>
                            <li class="disadvantage">I am <span>easily to get mad</span> if teamates fail to do what i told them.</li>
                            <li class="disadvantage">Sometimes, i am too <span>serious </span>in talking.</li>
                            <li class="disadvantage">Not always i will be careful and i often <span>forget things</span>.</li>
                            <li class="disadvantage">My coding skills is <span>not fast enough</span> even though i know what i am coding.</li>
                            <li class="disadvantage">My <span>algorithm solving skills</span> is just about average.</li>
                            <li class="disadvantage">Lastly, i am totaly <span>not a patient person</span>.</li>
                        </ul>
                        <div class="force-overflow"></div>
                    </div>
                    <h1 id="pros"><i class="fa-solid fa-snowflake"></i>PROS & CONS</h1>
                </div>

                <div class="details">
                    <hr class="line" />
                    <span class="angle"><i id="arrow4" class="fa-solid fa-angles-down"></i></span>
                    <div id="career-dropdown">
                        <p>CAREER GOALS</p>
                        <hr />
                        <ul>
                            <li>From <span>21-25 years old</span>, i will try to get a job as a <span>java web developer</span> in a good company
                            and spent <span>2 years as a fresher</span> there to get more experiences.</li>
                            <li>From <span>25-30 years old</span>, i will do my job as a <span>senior dev</span> and try to take the <span>team tech leader</span> position. Also 
                            i will force my self to save an amount of money that is enough for me to buy a new bike.</li>
                            <li>From <span>30-40 years old</span>, i have never think about my self at these ages but probally i will do my best to be a <span>project manager</span> 
                            or a <span>software architect</span>.</li>
                            <li>From <span>40+</span>, i may keep my work balance or i maybe i will take the chance to be a <span>CEO of a department</span>.</li>
                        </ul>
                        <div class="force-overflow"></div>
                    </div>
                    <h1 id="career"><i class="fa-sharp fa-solid fa-building"></i>CAREER GOALS</h1>
                </div>
            </div>
        </div>

        <div id="left-content">
            <div id="avtdiv">
                <img id="avt" src="<%=request.getContextPath()%>/templates/Ned.jpg" alt="avatar" />
            </div>

            <div id="personalInfo">
                <ul>
                    <content><i class="fa-solid fa-user"></i>PERSONAL INFO</content>
                    <li class="info"><i class="fa-solid fa-mars"></i> Male</li>
                    <li class="info"><i class="fa-solid fa-cake-candles"></i> 27/06/2003</li>
                    <li class="info"><i class="fa-solid fa-envelope"></i> Hzned2019@gmail.com</li>
                    <li class="info"><i class="fa-solid fa-phone"></i> 0969645417</li>
                    <li class="info"><i class="fa-solid fa-flag"></i> Viet Nam</li>
                    <li class="info"><i class="fa-solid fa-location-dot"></i> Thanh Ha, Thanh Oai, Ha Noi</li>
                </ul>
            </div>
        </div>

        <div id="footer">
            <form onsubmit="return false" autocomplete="off">
                <input id="input" name="input" placeholder="SEND ME MESSAGE HERE" type="text" required/>
            </form>
        </div>
    </div>
    
    <div id="alert">
        <div>
            <span id="alert-header">ようこそ💖</span><br />
            <span id="alert-content"></span>
        </div>
        <div>
            <button id="alert-button" autofocus>OK</button>
        </div>
    </div>
    <% String user = request.getParameter("username");
       session.setAttribute("user",user);
       if(!user.equals("null")){
           String script =  "<script>document.getElementById('alert-content').innerHTML = "
                    + "'Welcome "+user+"!';"
                    + "</script>";
           out.print(script);
       }
    %>
    <script src="<%=request.getContextPath()%>/templates/MyProfile.js"></script>
    </body>
</html>
