


         function validate()
         {
            if(document.reg.firstname.value==''){
                alert("please enter FirstName");
                document.reg.firstname.focus();
                return false;
            }
            if(document.reg.lname.value==''){
                alert("please enter LastName");
                document.reg.lname.focus();
                return false;
            }
            if(document.reg.email.value==''){
                alert("please enter Email Id");
                document.reg.email.focus();
                return false;
            }
            
             if(document.reg.email.value.indexOf("@",0)<0){
                alert("Missing @ Symbol");
                document.reg.email.focus();
                return false;
            }
            if(document.reg.email.value.indexOf(".",0)<0){
                 alert("Missing . Symbol ");
                document.reg.email.focus();
                return false;
            }
             if(document.reg.uname.value==''){
                alert("please enter UserName");
                document.reg.uname.focus();
                return false;
            }
            if(document.reg.pass.value==''){
                alert("please enter Password");
                document.reg.pass.focus();
                return false;
            }
            if(document.reg.cpass.value==''){
                alert("please enter ConfirmPassword");
                document.reg.cpass.focus();
                return false;
            }
             if(document.reg.pass.value!==document.mailer.cpass.value){
                 alert("Your Password MisMatch");
                 document.reg.cpass.focus();
                 return false;
             }
             if(document.reg.dob.value==''){
                alert("please enter Date");
                document.reg.dob.focus();
                return false;
            }
            if(document.reg.gender.value==''){
                alert("please select Gender");
                document.reg.gender.focus();
                return false;
            }
            if(document.reg.mobile.value==''){
                alert("please enter MobileNumber");
                document.reg.mobile.focus();
                return false;
            }
            if(isNaN(document.reg.mobile.value)){
                alert("Mobile Number should be Numeric");
                document.reg.mobile.focus();
                return false;
            }
            if(document.reg.location.value==''){
                alert("Please Enter Location");
                document.reg.location.focus();
                return false;
            }
             if(document.reg.image.value==''){
                alert("Please Choose Image");
                document.reg.image.focus();
                return false;
            }
            
             
             
              return true;
          }
       