# 🩸 RUDHIRA PORTAL (Spring Boot + MVC)


A Blood Donation Management Portal built using Spring Boot (MVC).
This portal allows users to register as donors, find donors, and manage blood donation data easily with **Spring Data JPA**.  
It’s designed to be **straight-to-the-point**, with a clean and layered structure, so you can understand CRUD logic at a glance.

---

## 📌 Features

-🔐 User Registration – Donors can register with their details.

-🔍 Search Donors – Find donors by location, blood group, etc.

-🗄️ Database Integration – Stores donor details in MySQL/Postgres.

-🌐 Deployable on Railway / Vercel for public access.

-🎨 Clean UI with JSP/HTML & CSS.

---

## 📂 Project Structure

RUDHIRA-PORTAL/
 ├── src/main/java/in/praneeth/SRudhira/
 │   ├── controller/        # Controllers (MVC)
 │   ├── model/             # Entity classes
 │   ├── repository/        # JPA Repositories
 │   ├── service/           # Business Logic
 │   └── RudhiraporatlmvcApplication.java  # Main App
 ├── src/main/resources/
 │   ├── application.properties
 │   └── templates/         # JSP/HTML Views
 ├── pom.xml                # Maven Dependencies
 └── README.md              # Project Docs


---

## 🛠 Tech Stack
- **Java 17**
- **Spring Boot(MVC)**
- **Spring Data JPA**
- **Hibernate**
- **Maven**
- **MySQL**

---

## ▶️ How to Run
1️⃣ Clone the Repository
git clone https://github.com/PraneethPW/RUDHIRA-PORTAL.git
cd RUDHIRA-PORTAL

2️⃣ Build the Project
mvn clean install

3️⃣ Run the Application
mvn spring-boot:run


or

java -jar target/rudhiraportalmvc-0.0.1-SNAPSHOT.jar

4️⃣ Access the Portal

Open in browser:

http://localhost:9999/save/user/savedata

## 💡 📸 Screenshots

(Add screenshots of your form/UI here once hosted 👀)


## 🤝 Contribution


Contributions are welcome! Please fork the repo and submit a PR.

Star ⭐ the repo

Fork 🍴 and improve it

Share it with fellow Java/Spring learners

## 📜 License

This project is licensed under the MIT License.

## 👨‍💻 Author
Praneeth Reddy. J


