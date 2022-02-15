<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sing up</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css"/>
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
    <link rel="stylesheet" type="text/css" href="<c:url value='/css/sign.css' />">
    
</head>


<body>
    <form class="login" method="post" action="<c:url value='/signUp.controller'/>" name="myForm">
        <h1>註冊</h1> 
        
         <div style="color:#FF0000"><font size="4">${errors.exists}</font></div>
        <div>
            <input type="text"id="usern"placeholder="帳號(限6-20 碼英文數字)"name="username"required />             
        </div>
        <div>
            <input type="text" id="usere" placeholder="信箱" name="email" />   
        </div> 
        <div>         
            <input type="password" id="pwd" placeholder="密碼(限8-20 碼英文數字符號)" name="password" required /> 
              
        </div> 
        <div>           
            <input type="password" id="pwdda" placeholder="再次輸入密碼" required/> 
        </div>
       <div id="udud">
        	<label><input type="checkbox" id="show_password" /><font color="white" >顯示密碼</font></label>
        </div>              
        <!-- 圖示跑掉還未調整 -->
        
        <input id="susu" type="submit" value="送出" onclick="success()" /> 
             
<!--         <div>______________________________________</div> -->
<!--         <input id="i1" type="submit" value="Login with Facebook" onchange="location.href='###'"/>   -->
<!--         <img class="img1" src="assets/images/fb2_1.png" /> -->
<!--         <input id="i2" type="submit" value="Login with Google" onclick="location.href='###'"/>          -->
<%--         <img class="img2" src="${pageContext.request.contextPath}/images/googleYAY.png" /> --%>
        
    
        <i id=fa1 class="far fa-envelope"></i> 
<!--         <i id=fa2 class="fab fa-facebook-square"></i>  -->
        <i id=fa3 class="fas fa-lock"></i>    
        <i id=fa4 class="fas fa-lock"></i>                      
        <i id=fa5 class="fas fa-user"></i>  
<!--         <i class="far fa-eye"></i>         -->
        <!-- <div class="fb-login-button" data-width="" data-size="large" data-button-type="login_with" data-layout="rounded" data-auto-logout-link="false" data-use-continue-as="false"></div>
            <script async defer crossorigin="anonymous" src="https://connect.facebook.net/zh_TW/sdk.js#xfbml=1&version=v11.0&appId=1489718034699042&autoLogAppEvents=1" nonce="Ssoqy9lS"></script>  -->
            <div>
                <span class="s1" id="usersp"></span>
            </div>
            <div>
                <span class="s2" id="emilsp"></span>
            </div>
            <div>
                <span class="s3" id="pwdsp"></span> 
            </div>
            <div>
                <span class="s4" id="pwddasp"></span>
            </div> 
        </form>
        <input id="yaya" type="button" value="一鍵輸入" onclick="fFirst()"/>    
        <script src="${pageContext.request.contextPath}/js/jquery-3.3.1.min.js"></script>
    <script>
    function success(){
		alert("請至信箱收取驗證信")
    }
   
    function fFirst(){
    	function getRandomInt(max) {
    		  return Math.floor(Math.random() * max);
    		}
    	let number = getRandomInt(9999);
    	myForm.usern.value="qqq000";
    	myForm.usere.value="cloud0958@gmail.com";
    	myForm.pwd.value="haha7777";
    	myForm.pwdda.value="haha7776";
    }
    $(function(){
    	// 先取得 #password1 及產生一個文字輸入框
    	var $password = $('#pwd') 
    		$passwordInput = $('<input type="text" name="' + $password.attr('name') + '" class="' + $password.attr('className') + '" />');
    	var $password2 = $('#pwdda')  	
    		$passwordInput2 = $('<input type="text" name="' + $password2.attr('name') + '" class="' + $password2.attr('className') + '" />');
    	// 當勾選顯示密碼框時
    	$('#show_password').click(function(){
    		// 如果是勾選則...
    		if(this.checked){
    			// 用 $passwordInput 來取代 $password
    			// 並把 $passwordInput 的值設為 $password 的值
    			$password.replaceWith($passwordInput.val($password.val()));
    			$password2.replaceWith($passwordInput2.val($password2.val()));
    		}else{
    			// 用 $password 來取代 $passwordInput
    			// 並把 $password 的值設為 $passwordInput 的值
    			$passwordInput.replaceWith($password.val($passwordInput.val()));
    			$passwordInput2.replaceWith($password2.val($passwordInput2.val()));
    		}
    	});
    });
    
        //測試中未完成
        var q = false;
        var qq = false;
        var qqq = false;
        var qqqq = false;
      document.getElementById("usern").addEventListener("blur",checkUser);
        function checkUser(){   

            let theUsernObj = document.getElementById("usern");
            let theUsernObjVal = theUsernObj.value;
            
            let sp = document.getElementById("usersp");
            let theUsernObjValLen = theUsernObjVal.length;
            var ch,flag1 = false, flag2 = false, flag3 = false;
           
            if(theUsernObjValLen >= 6)
            {
               // sp.innerHTML=">=6";
               for(let i = 0; i < theUsernObjValLen; i++)
               {
                    ch = theUsernObjVal.charAt(i).toUpperCase();

                    if(ch >= "A" && ch <= "Z")
                    {
                        flag1 = true;
                    }
                    else if(ch >= "0" && ch <= "9" )
                    {
                        flag2 = true;
                    }
                    else if(ch=/!@#$%^&*/ )
                    {
                        flag3 = true;
                    }
                    if(flag1 && flag2){break;}
                    else if(flag1 && flag2 && flag3){break;}
                   
               }
               if (flag1 && flag2 && flag3)
               {
            	    q = true;
            	   console.log(q)
                   sp.innerHTML = '<i id=correct1 class="fas fa-check"></i>';
                   
               }
               else if(flag1 && flag2)
               {
            	   q = true;
            	   console.log(q)
                   sp.innerHTML = '<i id=correct1 class="fas fa-check"></i>';                
               }
               else 
               {
            	   q = false
                sp.innerHTML = '<i id=error1 class="fas fa-exclamation-triangle"></i><i class="fas fa-comment-alt"></i><span id=user1 style="color:white;">帳號必須包含<br>英文和數字<br>帳號必須大於<br>等於6個字</span>';
               }             
            }
            else 
            {	q = false
                sp.innerHTML = '<i id=error1 class="fas fa-exclamation-triangle"></i><i class="fas fa-comment-alt"></i><span id=user1 style="color:white;">帳號必須包含<br>英文和數字<br>帳號必須大於<br>等於6個字</span>';      
            }
            
            
        }
        document.getElementById("usere").addEventListener("blur",checkEmail);
        function checkEmail(){   

            let theUsereObj = document.getElementById("usere");
            let theUsereObjVal = theUsereObj.value;
            
            let sp = document.getElementById("emilsp");
            let theUsereObjValLen = theUsereObjVal.length;
            let ch, flag33=false,flag22=false,flag11=false;
            if(theUsereObjValLen >= 6)
            {
                //sp.innerHTML=">=6";
               for(let i = 0; i < theUsereObjValLen; i++)
               {               
                    ch = theUsereObjVal.charAt(i).toUpperCase();

                    if(ch >= "A" && ch <= "Z")
                    {
                        flag11 = true;
                    }
                    else if(ch >= "0" && ch <= "9" )
                    {
                        flag22 = true;
                    }
                    else if(ch=="@")
                    {
                        flag33 = true;
                    }              
                    if(flag11 && flag22 && flag33){break;}
                    
                }                                
                if(flag11 && flag22 && flag33)
                {
                	qq = true;
                    sp.innerHTML = '<i id=correct4 class="fas fa-check"></i>'; 
                }
                else 
                {
                	qq = false
                    sp.innerHTML = '<i id=error4 class="fas fa-exclamation-triangle"></i><i id=alt4 class="fas fa-comment-alt"></i><span id=emilspan1 style=" color:white;">信箱格式錯誤</span>';
                }
            }
            else 
            {
            	qq = false
                sp.innerHTML = '<i id=error4 class="fas fa-exclamation-triangle"></i><i id=alt4 class="fas fa-comment-alt"></i><span id=emilspan1 style=" color:white;">信箱格式錯誤</span>';
            }
            
        }
            
        
        document.getElementById("pwd").addEventListener("blur",checkPwd);
        function checkPwd(){   

            let thePwdObj = document.getElementById("pwd");
            var thePwdObjVal = thePwdObj.value;
            
            let sp = document.getElementById("pwdsp");
            let thePwdObjValLen = thePwdObjVal.length;
            let ch,flag111 = false, flag222 = false, flag333 = false;
            
            if(thePwdObjValLen >= 8)
            {
               // sp.innerHTML=">=6";
               for(let i = 0; i < thePwdObjValLen; i++)
               {
                    ch = thePwdObjVal.charAt(i).toUpperCase();

                    if(ch >= "A" && ch <= "Z")
                    {
                        flag111 = true;
                    }
                    else if(ch >= "0" && ch <= "9" )
                    {
                        flag222 = true;
                    }
                    else if(ch=/!@#$%^&*/ )
                    {
                        flag333 = true;
                    }
                    if(flag111 && flag222){break;}
                    else if(flag111 && flag222 && flag333){break;}                  
               }
               if (flag111 && flag222 && flag333)
               {
            	   qqq = true;
                   sp.innerHTML = '<i id=correct2 class="fas fa-check"></i>';                   
               }
               else if(flag111 && flag222)
               {
            	   qqq = true;
                   sp.innerHTML = '<i id=correct2 class="fas fa-check"></i>';                  
               }
               else {
            	   qqq = false
                    sp.innerHTML = '<i id=error2 class="fas fa-exclamation-triangle"></i><i id=alt2 class="fas fa-comment-alt"></i><span id=pwdspan2 style="color:white;">密碼必須包含<br>英文和數字<br>密碼必須大於<br>等於8個字</span>';  
               }
            }
            else 
            {
            	 qqq = false
                sp.innerHTML='<i id=error2 class="fas fa-exclamation-triangle"></i><i id=alt2 class="fas fa-comment-alt"></i><span id=pwdspan2 style="color:white;">密碼必須包含<br>英文和數字<br>密碼必須大於<br>等於8個字</span>';            
            }                 
        }
        document.getElementById("pwdda").addEventListener("blur",checkPwdd);
        function checkPwdd(){   

            let thePwddObj = document.getElementById("pwdda");
            let thePwddObjVall = thePwddObj.value;
            
            let sp = document.getElementById("pwddasp");
            let thePwddObjValLen = thePwddObjVall.length;
            
            
            if(thePwddObjVall == $("#pwd").val()) //thePwddObjVall==thePwdObjVal
            {
            	qqqq = true;
                sp.innerHTML ='<i id=correct3 class="fas fa-check"></i>';                
            }
            else   
            {
            	qqqq = false;
                sp.innerHTML ='<i id=error3 class="fas fa-exclamation-triangle"></i><i id=alt3 class="fas fa-comment-alt"></i><span id=repwd1 style="color:white;">密碼與上敘<br>不符</span>';                
            }                                        
        }
// 		document.getElementById("susu").addEventListener("change", testButton)
//         function testButton() {
//     		var button = document.getElementById('susu');
//     		if(q && qq && qqq && qqqq){	
//     			button.disabled=false; //使用true或false，控制是否让按钮禁用
//     		}else{
//      			button.disabled=true;
//      		}
//     	}
//          document.getElementById("pwd1").addEventListener("blur",checkPwd1);
//         function checkPwd1(){   

//             let thePwdObj = document.getElementById("pwd1");
//             var thePwdObjVal = thePwdObj.value;
            
//             let sp = document.getElementById("pwd1sp");
//             let thePwdObjValLen = thePwdObjVal.length;
//             let ch,flag111 = false, flag222 = false, flag333 = false;
            
//             if(thePwdObjValLen >= 6)
//             {
//                // sp.innerHTML=">=6";
//                for(let i = 0; i < thePwdObjValLen; i++)
//                {
//                     ch = thePwdObjVal.charAt(i).toUpperCase();

//                     if(ch >= "A" && ch <= "Z")
//                     {
//                         flag111 = true;
//                     }
//                     else if(ch >= "0" && ch <= "9" )
//                     {
//                         flag222 = true;
//                     }
//                     else if(ch=/!@#$%^&*/ )
//                     {
//                         flag333 = true;
//                     }
//                     if(flag111 && flag222){break;}
//                     else if(flag111 && flag222 && flag333){break;}                  
//                }
//                if (flag111 && flag222 && flag333)
//                {
//             	   qqq = true;
//                    sp.innerHTML = '<i id=correct2 class="fas fa-check"></i>';                   
//                }
//                else if(flag111 && flag222)
//                {
//             	   qqq = true;
//                    sp.innerHTML = '<i id=correct2 class="fas fa-check"></i>';                  
//                }
//                else {
//             	   qqq = false
//                     sp.innerHTML = '<i id=error2 class="fas fa-exclamation-triangle"></i><i id=alt2 class="fas fa-comment-alt"></i><span id=pwdspan2 style="color:white;">密碼必須包含<br>英文和數字<br>密碼必須大於<br>等於8個字</span>';  
//                }
//             }
//             else 
//             {
//             	 qqq = false
//                 sp.innerHTML='<i id=error2 class="fas fa-exclamation-triangle"></i><i id=alt2 class="fas fa-comment-alt"></i><span id=pwdspan2 style="color:white;">密碼必須包含<br>英文和數字<br>密碼必須大於<br>等於8個字</span>';            
//             }                 
//         }
//         document.getElementById("pwdda1").addEventListener("blur",checkPwdd1);
//         function checkPwdd1(){   

//             let thePwddObj = document.getElementById("pwdda1");
//             let thePwddObjVall = thePwddObj.value;
            
//             let sp = document.getElementById("pwdda1sp");
//             let thePwddObjValLen = thePwddObjVall.length;
            
            
//             if(thePwddObjVall == $("#pwd1").val()) //thePwddObjVall==thePwdObjVal
//             {
//             	qqqq = true;
//                 sp.innerHTML ='<i id=correct3 class="fas fa-check"></i>';                
//             }
//             else   
//             {
//             	qqqq = false;
//                 sp.innerHTML ='<i id=error3 class="fas fa-exclamation-triangle"></i><i id=alt3 class="fas fa-comment-alt"></i><span id=repwd1 style="color:white;">密碼與上敘<br>不符</span>';                
//             }                                        
//         }
        
        
//
let input = document.querySelector("#usern");
let inputt = document.querySelector("#usere");
let inputtt = document.querySelector("#pwd");
let inputttt = document.querySelector("#pwdda");
let button = document.querySelector("#susu");
button.disabled = true;
input.addEventListener("blur", stateHandle);
inputt.addEventListener("blur", stateHandle);
inputtt.addEventListener("blur", stateHandle);
inputttt.addEventListener("blur", stateHandle);
function stateHandle() {
  if (q&&qq&&qqq&&qqqq) {
    button.disabled = false;
  } else {
    button.disabled = true; 
  }
}

        
        
       
        
    </script>
</body>
   
</html>