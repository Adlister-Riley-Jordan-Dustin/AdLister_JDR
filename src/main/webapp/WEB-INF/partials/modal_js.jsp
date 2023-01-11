<%--
  Created by IntelliJ IDEA.
  User: jordanwitt
  Date: 1/10/23
  Time: 9:43 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
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
</body>
</html>
