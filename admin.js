/* ================= ADMIN LOGIN SECTION ================= */

const adminUsername = "admin";
const adminPassword = "12345";

function loginAdmin() {
  const username = document.getElementById("username").value;
  const password = document.getElementById("password").value;
  const message = document.getElementById("loginMessage");

  if (username === adminUsername && password === adminPassword) {
    document.getElementById("loginSection").style.display = "none";
    document.getElementById("dashboard").style.display = "block";

    showData();
  } else {
    message.innerText = "Invalid username or password";
  }
}

function logoutAdmin() {
  document.getElementById("dashboard").style.display = "none";
  document.getElementById("loginSection").style.display = "flex";
}

/* ================= ADD DATA SECTION ================= */

function addData() {
  const sectionName = document.getElementById("sectionName").value;
  const title = document.getElementById("dataTitle").value;
  const description = document.getElementById("dataDescription").value;

  if (title === "" || description === "") {
    alert("Please fill all fields");
    return;
  }

  let websiteData = JSON.parse(localStorage.getItem("websiteData")) || [];

  const newData = {
    id: Date.now(),
    section: sectionName,
    title: title,
    description: description
  };

  websiteData.push(newData);

  localStorage.setItem("websiteData", JSON.stringify(websiteData));

  document.getElementById("dataTitle").value = "";
  document.getElementById("dataDescription").value = "";

  showData();
}

/* ================= SHOW DATA SECTION ================= */

function showData() {
  const dataContainer = document.getElementById("dataContainer");

  let websiteData = JSON.parse(localStorage.getItem("websiteData")) || [];

  dataContainer.innerHTML = "";

  if (websiteData.length === 0) {
    dataContainer.innerHTML = "<p>No data added yet.</p>";
    return;
  }

  websiteData.forEach((item) => {
    dataContainer.innerHTML += `
      <div class="data-item">
        <h4>${item.section}</h4>
        <h3>${item.title}</h3>
        <p>${item.description}</p>
        <button onclick="deleteData(${item.id})">Delete</button>
      </div>
    `;
  });
}

/* ================= DELETE DATA SECTION ================= */

function deleteData(id) {
  let websiteData = JSON.parse(localStorage.getItem("websiteData")) || [];

  websiteData = websiteData.filter(item => item.id !== id);

  localStorage.setItem("websiteData", JSON.stringify(websiteData));

  showData();
}