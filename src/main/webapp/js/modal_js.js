const modal = document.getElementById("modal");
const updateBtn = document.getElementById("update-btn");
const closeModal = document.getElementById("close-modal");

updateBtn.addEventListener("click", function() {
    modal.style.display = "block";
});

closeModal.addEventListener("click", function() {
    modal.style.display = "none";
});