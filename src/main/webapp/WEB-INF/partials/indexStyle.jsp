<%--
  Created by IntelliJ IDEA.
  User: jordanwitt
  Date: 1/9/23
  Time: 5:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>

<style>
    *{
        font-family: monospace;
    }
    .nav{
        color: darkorange;
        display: flex;
        margin-bottom:10px;
    }
    .navbar{
        flex-direction: row;
        padding: 10px;
        float: top;
        justify-content: space-between;
        color: #5E17EB;
    }
    .navbar a{
        color: white;
        text-decoration: none;
        justify-content: space-between;
        padding: 10px;
        float: left;
        font-size: 15px;
    }
    .navbar a:hover{
        color: #5E17EB;
    }
    hr{
        color: black;
    }
    .container{
        display: flex;
        flex-wrap: wrap;
        justify-content: space-evenly;
        padding: 20px;
        text-align: center;
    }
    body{
        background-color: darkorange;
    }
    .header-area{
        margin-top: 50px;
    }
    #search{
        text-align: center;
        margin: 10px 10px 5px 5px;
        border-radius: 10px;
        background-color: #ff5900;
        color: white;
        border-style: hidden;
    }
    #search::placeholder{
        color: white;
    }
  h1{
    color: black;
      text-align: center;
  }
  .description{
      margin-top: 30px;
      display: flex;
      flex-direction: row;
      padding:30px;
  }
  .about{
      margin: 10px;
      background-color: white;
      padding: 20px
  }
  .who{
      margin: 10px;
      background-color: white;
      padding: 20px
  }
  .sell{
      margin: 10px;
      background-color: white;
      padding: 20px
  }
    .container-two{
        display: flex;
        flex-wrap: wrap;
        justify-content: space-evenly;
        padding: 20px;
        text-align: center;
    }
  .ads-direction{
      margin-top: 30px;
      display: flex;
      flex-direction: row;
      padding:30px;
  }
    #ads{
      box-shadow: 0 4px 8px 0 rgba(0,0,0,0.5);
      transition: 0.3s;
      text-align: center;
  }
  #ads h2{
      color: black;
      box-sizing: border-box;
      background-color: white;
      height: 50px;
      width: 100%;
     text-align: center;
      padding: 5px;
  }
  #ads p{
     color: black;
      background-color: azure;
      box-sizing: border-box;
      height: 150px;
      padding: 15px;
  }
</style>




<body>

</body>
</html>
