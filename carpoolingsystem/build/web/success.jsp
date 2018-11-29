<img src="background.jpg" width="1400" height="300">    
<%
        if ((session.getAttribute("user") == null) || (session.getAttribute("user") == "")) {
            
%>

You are not logged in<br/>

<a href="index.jsp">Please Login</a>
<%} else {
%>
Welcome <%=session.getAttribute("userid")%>
<style>
.button {
  display: inline-block;
  border-radius: 4px;
  background-color: #f4511e;
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 28px;
  padding: 20px;
  width: 200px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
}

.button span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.button span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.button:hover span {
  padding-right: 25px;
}

.button:hover span:after {
  opacity: 1;
  right: 0;
}

</style>
</head>
<body>



    <form action="carpool.html"> <button class="button" style="vertical-align:middle"><span>FIND CAR SHARER</span></button></form>
<a href='logout.jsp' align='right'><p align='right'>Log out</a></p>
<%
    }
%>



