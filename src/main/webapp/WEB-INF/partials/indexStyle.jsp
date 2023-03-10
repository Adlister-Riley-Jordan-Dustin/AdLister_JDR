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
        font-size: 14px;
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
    .logo{
        font-size: 150px;
        letter-spacing: 25px;
        padding: 10px;
        color: #ffc37b;
        text-shadow:  1px 7px 2px #e7421f;
    }
    .not-that{
        align-items: center;
        text-align: center;
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
    #searchBar{
        text-align: center;
        margin: 10px 10px 5px 5px;
        border-radius: 10px;
        background-color: #ff5900;
        color: white;
        border-style: hidden;
    }
    #searchBar::placeholder{
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
      font-size: 12px;
  }
  .description>*{
      flex: 3 3 300px
  }
  .about{
      margin: 10px;
      background-color: white;
      padding: 20px;
      box-shadow: 1px 7px 2px #d22d09;
  }
  .who{
      margin: 10px;
      background-color: white;
      padding: 20px;
      box-shadow: 1px 7px 2px #d22d09;
  }
  .sell{
      margin: 10px;
      background-color: white;
      padding: 20px;
      box-shadow: 1px 7px 2px #d22d09;
  }
  .tag{
      margin: 10px;
      background-color: white;
      height: 100px;
      padding: 100px;
      text-align: center;
      opacity: 30%;
      animation: fadeIn 5s;
  }
  .tagTxt{
      font-size: 20px;
      letter-spacing: 20px;
  }
    .container-two{
        display: flex;
        flex-wrap: wrap;
        justify-content: space-evenly;
        padding: 20px;
        text-align: center;
    }
    .listings{
        text-align: center;
        font-size: 20px;
    }
    #ads{
        margin: 10px;
        background-color: white;
        padding: 20px;
        text-align: center;
        width: 300px;
        height: 400px;
        box-shadow: 1px 7px 2px #d22d09;
  }
    #ads-two{
        display: flex;
        flex-wrap: wrap;
        flex-direction: row;
    }
    #ads-two>*{
        flex: 3 3 200px
    }
    footer{
        color: darkorange;
        display: flex;
        margin-bottom:10px;
    }
    .foot{
        display: flex;
        margin-bottom:10px;
    }
    footer li {
        text-decoration: none;
    }
    footer ul {
        text-decoration: none;
    }
    .footers{
        flex-direction: row;
        padding: 10px;
        float: right;
        justify-content: space-between;
        text-decoration: none;
    }
    footer a{
        color: white;
        text-decoration: none;
        justify-content: space-between;
        padding: 15px;
        align-items: center;
        font-size: 15px;
    }
    footer a:hover{
        color: #5E17EB;
    }
/*END OF INDEX PAGE STYLING*/
/*    START OF LOGIN PAGE STYLING*/
    .form{
        display: flex;
        flex-direction: column;
        padding: 100px;
    }
    .form-info{
        align-items: center;
        text-align: center;
    }
    .login{
        font-size: 50px;
        letter-spacing: 25px;
        padding: 10px;
        color: #ffc37b;
        text-shadow:  2px 7px 2px #d22d09;
    }
    label{
        letter-spacing: 5px;
    }
    input{
        background-color: darkorange;
        color: white;
        border-radius: 2px;
        box-shadow:   1px 2px 2px 2px #d22d09;
        border-style: none;
        height: 20px;
        width: 260px;
        margin: 10px;
    }
    .btn{
        width: 100px;
    }
/*    END OF LOGIN PAGE*/
/*    START OF REGISTER PAGE*/
    .register{
        display: flex;
        flex-direction: column;
        padding: 100px;
        justify-content: space-evenly;
    }
    .register-text{
        font-size: 50px;
        letter-spacing: 25px;
        padding: 10px;
        color: #ffc37b;
        text-shadow:  2px 3px 4px #d22d09;
    }
/*    END OF REGISTER PAGE */
/*    START OF PROFILE*/
    .profile{
        display: flex;
        flex-direction: column;
        padding: 100px;
    }
    .welcome{
        font-size: 50px;
        letter-spacing: 25px;
        padding: 10px;
        color: #ffc37b;
        text-shadow:  2px 3px 4px #d22d09;
    }
    .profile-info{
        font-size: 18px;
        letter-spacing: 5px;
        color: #d22d09;
    }
    .username{
        font-size: 18px;
        letter-spacing: 5px;
        color: #d22d09;
    }
    .email{
        font-size: 18px;
        letter-spacing: 5px;
        color: #d22d09;
    }
    #ads-three{
        display: flex;
        flex-direction: row;
    }
/*    CREATE PAGE*/
    .create{
        display: flex;
        flex-direction: column;
        padding: 100px;
        align-items: center;
        justify-content: space-evenly;
    }
    .create-text{
        font-size: 50px;
        letter-spacing: 25px;
        padding: 10px;
        color: #ffc37b;
        text-shadow:  2px 3px 4px #d22d09;
        text-align: center;
    }
    textarea{
        background-color: darkorange;
        color: white;
        border-radius: 2px;
        box-shadow:   1px 2px 2px 2px #d22d09;
        border-style: none;
        height: 100px;
        width: 360px;
        margin: 10px;
        padding: 10px;
    }

/*    MODAL ON PROFILE PAGE*/
    #update-btn{
        margin-top: 70%;
        background-color: darkorange;
        color:white;
        border-radius: 5px;
        border-style: none;
        box-shadow: 2px 2px #d22d09;
    }
    .modal {
        display: none; /* Hidden by default */
        position: fixed; /* Stay in place */
        z-index: 1; /* Sit on top */
        left: 0;
        top: 0;
        width: 100%; /* Full width */
        height: 100%; /* Full height */
        overflow: auto; /* Enable scroll if needed */
        background-color: rgb(0,0,0); /* Fallback color */
        background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
    }

    /* Modal Content/Box */
    .modal-content {
        background-color: #fefefe;
        margin: 15% auto; /* 15% from the top and centered */
        padding: 20px;
        border: 1px solid #888;
        width: 80%; /* Could be more or less, depending on screen size */
    }

    /* The Close Button */
    .close-modal {
        color: #aaa;
        float: right;
        font-size: 28px;
        font-weight: bold;
    }

    .close-modal:hover,
    .close-modal:focus {
        color: black;
        text-decoration: none;
        cursor: pointer;
    }
</style>
<script>
    const modal = document.getElementById("modal");
    const updateBtn = document.getElementById("update-btn");
    const closeModal = document.getElementById("close-modal");

    updateBtn.addEventListener("click", function() {
        modal.style.display = "block";
    });
    closeModal.addEventListener("click", function() {
        modal.style.display = "none";
    });
</script>

<body>

</body>
</html>
