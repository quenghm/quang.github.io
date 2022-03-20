<%-- 
    Document   : studentData
    Created on : Mar 20, 2022, 5:30:43 PM
    Author     : Admin
--%>

<%@page import="model.Student"%>
<%@page import="model.StudentAccount"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body{
                background-image: linear-gradient(to right, #50a3a2,rgb(96, 201, 175));
                background-position: center center; 
                background-size: 100% 500%;
            }
            .title{
                padding-top: 20px;
                text-align: center;
                font-family:monospace;
                margin: auto;
            }
            .container{
                background-color: whitesmoke;
                width: 400px;
                height: 600px;
                margin: 30px auto;
                border-radius: 5px;
                box-shadow: 10px 10px 10px 10px #666;
            }
            .content{
                padding-top: 30px;
                margin-left: 30px;
            }
            .firstlb{
                margin-top: 20px;
            }
            .inputBtn{
                margin-top: 10px;
                margin-bottom: 5px;
                margin-left: 20px;
                width: 300px;
                height: 30px;
                border-radius: 3px;
            }
            .gender{
                margin-top: 10px;
                margin-bottom: 10px;
                margin-left: 20px;
            }
            .update{
                background-color: rgb(96, 201, 175); 
                margin-top: 20px;
                margin-left: 20px;;
                width: 310px;
                height: 40px;
                border-radius: 3px;
            }
            .an{
                text-align: center;
                color: red;
            }
        </style>
        <%
            StudentAccount account = (StudentAccount) request.getAttribute("account");
            Student s = account.getStudent();
            String done = (String) request.getAttribute("done");
            if (done == null) {
                done = "";
            }
        %>
    </head>
    <body>
        <div class="title">
            <h1>EDIT STUDENT INFORMATION</h1>
        </div>
        <div class="container">
            <div class="content">
                <form action="manageStuData" method="POST">
                    <input hidden="" name="sid" value="<%=s.getSid()%>"/>
                    <label>Name</label> </br>
                    <input class="inputBtn" type="text" name="name" value="<%=s.getSname()%>" /> </br>
                    <label>Gender</label> </br>
                    <input class="gender" type="radio" <% if (s.isGender()) {%>checked="checked"<%}%>
                           name="gender" value="male"/> Male
                    <input type="radio" 
                           <%= (!s.isGender()) ? "checked=\"checked\"" : ""%>
                           name="gender" value="female"/> Female <br/>
                    <label>Id Card</label> </br>
                    <input class="inputBtn" type="text" name="idcard" value="<%=s.getIdCard()%>" /> </br>
                    <label>Grade</label> </br>
                    <input class="inputBtn" type="text" name="grade" value="<%=s.getGrade()%>" /> </br>
                    <label>Phone Number</label> </br>
                    <input class="inputBtn" type="text" name="phone" value="<%=s.getPhoneNumber()%>" /> </br>
                    <label>Email</label> </br>
                    <input class="inputBtn" type="text" name="email" value="<%=s.getEmail()%>" /> </br>
                    <label>Address</label> </br>
                    <input class="inputBtn" type="text" name="address" value="<%=s.getAddress()%>" /> </br>
                    <input class ="update" type="submit" value="Update" />
                    <div class="an">
                        <h4><%=done%></h4>
                    </div>
                </form>
            </div>
        </div>  
    </body>
</html>
