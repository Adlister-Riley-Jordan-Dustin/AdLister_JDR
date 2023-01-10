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
    body{
        background-color: darkorange;
    }
    .center{
        position:absolute;
        top:50%;
        left:50%;
        transform:prespective(1000px) translate(-50%,-50%);
        transform:skewY(15deg);
        transition:0.5s;
    }

    .center:hover{
        transform:prespective(1000px) translate(-50%,-50%);
        transform:skewY(0deg);
    }

    .center h1 span{
        position:absolute;
        top:0;
        left:0;
        transform:translate(-50%,-50%);
        margin:0;
        padding:0;
        text-transform:uppercase;
        font-size:10em;
        color:#fff;
        transform-style:preserve-3d;
        transition:0.8s;
    }
    .center h1 span:nth-child(1){
        clip-path: polygon(0 0, 100% 0, 100% 45%, 0 45%);
    }



    .center h1 span:nth-child(2){
        color:#5E17EB;
        transform:translate(-50%,-50%) skewX(-60deg);
        left:-38px;
        clip-path: polygon(0 45%, 100% 45%, 100% 55%, 0 55%);
    }

    .center h1 span:nth-child(3){
        transform:translate(-50%,-50%) skewY(0deg);
        left:-76px;
        clip-path: polygon(0 55%, 100% 55%, 100% 100%, 0 100%);
    }

    .center:hover h1 span:nth-child(2),
    .center:hover h1 span:nth-child(3){
        transform:translate(-50%,-50%) skewX(0deg);
        left:0;
        color:#fff;
    }
    #search{
        padding: 5px;
        margin: 10px 10px 5px 5px;
        border-right: 5px;
        background-color: darkorange;
        color: white;
        border-style: hidden;

    }
  h1{
    color: black;
      text-align: center;
  }
  #ads{
      margin-top: 500px;
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
