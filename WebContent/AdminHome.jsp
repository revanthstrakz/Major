<html>
<head>
    <title>
        Admin Homepage
    </title>
 
    <style>
        #main{
         background-image: url(images/background.jpg);
        width:1000px;
            border-radius:15px;
      height:600px;
            
        }
        #header{
            border-radius:15px;
            width:1000px;
            height:150px;
          
            background:url(images/mainheader.jpg);
        }
        #header h1{
            padding:25px;
        } 
        #links1{
            width:270px;
            height:300px;
            border:1px solid black;
            border-radius:15px;
            float:left;
            margin-top:30px;
            background-color: #00ffff;
        }
        #links1 tr td{
            padding:8px;
        } 
        #links1 a{
            
            text-decoration: none;
        }
      #links1 a:hover:not(.active) {
    background-color: pink;
      }

        #links2{
            width:340px;
            height:400px;
            margin-right:80px;
            border-radius:15px;
            margin-top:60px;   
           
        }
        
        
        #links3{
            width:330px;
            height:300px;
            border:1px solid black;
            border-radius:15px;
            float:right;
            margin-top:120px;
            margin-left:20px;
            background-color: #00ffff;
           
        }
        #links3 tr td {
            padding:10px;
            text-decoration: none;
        } 
        #links3 a{
            
            text-decoration: none;
        }
        #links3 a:hover:not(.active) {
    background-color: pink;
      }
         
        
    </style>
</head>
<body>
<center><div id="main">
        
        <div id="header">
           <font color="red" size="10">I injection: Toward effective collaborative filtering using uninteresting items.</font> 
        <div id="links3">
            <table>
                <tr><td><a href="ViewAllInterestingproducts.jsp">View All Interesting product</a></td></tr>
   
                <tr><td><a href="ViewAllSearchHistory.jsp">View All Search History</a></td></tr>
                <tr><td><a href="ViewAllPurchasedItems.jsp">View All Purchased Items</a></td></tr>
                <tr><td><a href="ViewAllLowRatingProducts.jsp">View All Low Rating Products </a></td></tr>
                <tr><td><a href="ViewAllUninterestingProduct.jsp">View All Uninteresting Product</a></td></tr>
              
                </table>
        </div>
             <div id="links2">
            
                <image src="images/men.png" style="width:370px;height:400px;"/> 
           
        </div>
        </div>
        
       
        <div id="links1">
            <table>
                <tr><td><a href="ViewAllUsers_Autherise.jsp">ViewAllUsers and Authorise</a></td></tr>
                <tr><td><a href="AllAuthorizedUsers.jsp">All Authorized Users</a></td></tr>
                <tr><td><a href="AddProductPost.jsp">Add Product Post</a></td></tr>
                <tr><td><a href="ViewAllProductPost.jsp">View All Product Post</a></td></tr>
                
                <tr><td><a href="ViewpositiveNegativeReviewes.jsp">View All +ve and -ve Reviewed Product Posts</a></td></tr>
               
                <tr><td><a href="ViewAllProductRecommendation.jsp">View All Product Recommendation</a></td></tr>
                
                
                
            </table>
             
        </div> 
        
    </div> 
</center>
</body>
</html>
