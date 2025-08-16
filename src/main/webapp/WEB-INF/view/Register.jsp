<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Register Blood Donor</title>
    <style>
        body {
        
        
            font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(to bottom, #fff8f8, #ffeaea);
            margin: 0;
            padding: 0;
               
                /* Background image with overlay */
    background: 
        linear-gradient(rgba(255, 245, 245, 0.8), rgba(255, 235, 235, 0.8)), 
        url('https://static.vecteezy.com/system/resources/previews/007/849/061/large_2x/world-blood-donor-background-free-vector.jpg') no-repeat center center fixed;
    background-size: cover;
        }

        .header {
            background: url('https://static.vecteezy.com/system/resources/previews/007/849/061/large_2x/world-blood-donor-background-free-vector.jpg') no-repeat center/cover;
            color: white;
            text-align: center;
            padding: 50px 20px;
            font-size: 32px;
            font-weight: bold;
            letter-spacing: 1px;
            box-shadow: 0 4px 10px rgba(0,0,0,0.3);
            position: relative;
        }

        .header::after {
            content: '"Donate blood, save lives"';
            display: block;
            font-size: 18px;
            font-weight: normal;
            margin-top: 10px;
            font-style: italic;
            opacity: 0.9;
        }

        .form-container {
            width: 50%;
            margin: 30px auto;
            background: #fff;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 4px 20px rgba(0,0,0,0.1);
            position: relative;
        }

        .form-container::before {
            content: "";
            background: url('https://i.pinimg.com/originals/5f/ca/8c/5fca8c2de759bc61ed28eb5a3bf1a384.jpg') no-repeat center/contain;
            position: absolute;
            top: -30px;
            left: 50%;
            transform: translateX(-50%);
            width: 60px;
            height: 60px;
        }

        h2 {
            text-align: center;
            color: #b71c1c;
            margin-bottom: 25px;
        }

        .quote {
            text-align: center;
            font-style: italic;
            color: #777;
            margin-bottom: 25px;
            font-size: 14px;
        }

        label {
            font-weight: bold;
            color: #444;
            display: block;
            margin-top: 15px;
        }

        .input-group {
            position: relative;
        }

        .input-group input, 
        .input-group select {
            width: 100%;
            padding: 10px 40px 10px 10px;
            margin-top: 5px;
            border-radius: 6px;
            border: 1px solid #ccc;
            font-size: 15px;
            transition: 0.3s;
        }

        .input-group input:focus, 
        .input-group select:focus {
            border-color: #d32f2f;
            box-shadow: 0 0 5px rgba(211,47,47,0.4);
            outline: none;
        }

        .input-group img {
            position: absolute;
            right: 10px;
            top: 12px;
            width: 18px;
            opacity: 0.6;
        }

        .age-warning {
            color: red;
            font-size: 14px;
            margin-top: 4px;
            display: none;
        }

        .radio-group {
            margin-top: 8px;
        }

        .radio-group label {
            display: inline-block;
            margin-right: 20px;
            font-weight: normal;
        }

        .btn {
            margin-top: 25px;
            padding: 12px;
            background: #d32f2f;
            color: white;
            border: none;
            border-radius: 8px;
            font-size: 16px;
            cursor: pointer;
            width: 100%;
            transition: 0.3s;
            font-weight: bold;
        }

        .btn:hover {
            background: #b71c1c;
        }

        .footer {
            text-align: center;
            margin-top: 30px;
            padding: 30px;
            background-color: #ffeaea;
            border-top: 2px solid #f5c2c2;
        }

        .footer h3 {
            color: #b71c1c;
            margin-bottom: 10px;
            font-size: 22px;
        }

        .footer p {
            font-size: 14px;
            color: #555;
            max-width: 600px;
            margin: 0 auto;
            line-height: 1.5;
        }

        .footer span {
            font-weight: bold;
            color: #d32f2f;
        }
    </style>
</head>
<body>
  

<div class="header">
    Blood Donor Registration
</div>

<div class="form-container">
    <h2>Be a Life Saver</h2>
    <p class="quote">"Your blood donation could be the reason someone gets to see tomorrow."</p>

    <!-- Auto-generated ID handled in backend; no ID input -->
    <form id="donorForm" action="<%= request.getContextPath() %>/user/success" method="post">

        <label for="name">Name</label>
        <div class="input-group">
            <input type="text" id="name" name="name" placeholder="Enter your full name" required>
            <img src="https://www.bing.com/th/id/OIP.ROOIeEx19MnDTevBZBWDUwHaJJ?w=167&h=211" alt="Name Icon">
        </div>

        <label for="age">Age</label>
        <div class="input-group">
            <input type="number" id="age" name="age" min="0" placeholder="Enter your age" required>
            <img src="https://www.bing.com/th/id/OIP.NA2sASZR4fX323OVdZS6oQHaHa?w=186&h=211" alt="Age Icon">
        </div>
        <div id="ageWarning" class="age-warning">⚠️ You must be at least 18 years old to donate blood.</div>

        <label for="bloodgroup">Blood Group</label>
        <div class="input-group">
            <select id="bloodgroup" name="bloodgroup" required>
                <option value="">Select your blood group</option>
                <option value="A+">A+</option>
                <option value="A-">A-</option>
                <option value="B+">B+</option>
                <option value="B-">B-</option>
                <option value="O+">O+</option>
                <option value="O-">O-</option>
                <option value="AB+">AB+</option>
                <option value="AB-">AB-</option>
            </select>
            <img src="https://www.bing.com/th/id/OIP.Gn8PQGJIvD_AySP3EYohjgHaHa?w=195&h=211" alt="Blood Icon">
        </div>

        <label>Sex</label>
        <div class="radio-group">
            <label><input type="radio" name="sex" value="Male" required> Male</label>
            <label><input type="radio" name="sex" value="Female" required> Female</label>
            <label><input type="radio" name="sex" value="Other" required> Other</label>
        </div>
<!-- Contact -->
<label for="contact">Contact</label>
<div class="input-group">
    <input type="tel" id="contact" name="contact" 
           placeholder="Enter your contact number" 
           pattern="[0-9]{10}" maxlength="10" required>
</div>

<script>
    // Prevent typing more than 10 digits
    document.getElementById("contact").addEventListener("input", function () {
        this.value = this.value.replace(/\D/g, ""); // remove non-digits
        if (this.value.length > 10) {
            this.value = this.value.slice(0, 10);
        }
    });
</script>


        

        <label for="city">City</label>
        <div class="input-group">
            <input type="text" id="city" name="city" placeholder="Enter your city" required>
            <img src="https://www.bing.com/th/id/OIP.84piPA9cpN5ujK7T0OTW3QAAAA?w=195&h=211" alt="City Icon">
        </div>
        
        <!-- District -->
<label for="district">District</label>
<div class="input-group">
    <input type="text" id="district" name="district" placeholder="Enter your district" required>
    <img src="https://www.bing.com/th/id/OIP.vuJtFdu9-c2p6F2JGZmPmgHaHa?w=200&h=200" alt="District Icon">
</div>

<!-- Pincode -->
<label for="pincode">Pincode</label>
<div class="input-group">
    <input type="number" id="pincode" name="pincode" placeholder="Enter your pincode" pattern="[0-9]{6}" required>
    <img src="https://www.bing.com/th/id/OIP.DavLlxndgFjyMtKjYj4W9AHaHa?w=200&h=200" alt="Pincode Icon">
</div>

        <button type="submit" class="btn">Register Now</button>
    </form>
</div>

<!-- Footer -->
<div class="footer">
    <h3>Why Donate Blood?</h3>
    <p>
        Every <span>two seconds</span>, someone in the world needs blood.  
        By donating, you are giving someone a second chance at life —  
        whether it’s for accident victims, cancer patients, or children with severe anemia.  
        Your small act of kindness can make a <span>big difference</span>.
    </p>
</div>

<script>
    document.addEventListener("DOMContentLoaded", function () {
        const ageInput = document.getElementById("age");
        const ageWarning = document.getElementById("ageWarning");
        const donorForm = document.getElementById("donorForm");

        // Age restriction check
        ageInput.addEventListener("input", function () {
            if (parseInt(this.value) < 18) {
                this.style.borderColor = "red";
                ageWarning.style.display = "block";
            } else {
                this.style.borderColor = "";
                ageWarning.style.display = "none";
            }
        });

        donorForm.addEventListener("submit", function (e) {
            if (parseInt(ageInput.value) < 18) {
                e.preventDefault();
                alert("You must be at least 18 years old to donate blood.");
            }
        });
    });
</script>

</body>
</html>
