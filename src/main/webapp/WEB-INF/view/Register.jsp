<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Register Blood Donor</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(rgba(255,245,245,0.85), rgba(255,235,235,0.85)),
                        url('https://static.vecteezy.com/system/resources/previews/007/849/061/large_2x/world-blood-donor-background-free-vector.jpg')
                        no-repeat center center fixed;
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
            width: 500px;
            max-width: 90%;
            margin: 40px auto;
            background: #fff;
            padding: 40px 30px;
            border-radius: 12px;
            box-shadow: 0 4px 20px rgba(0,0,0,0.15);
            position: relative;
        }

        .form-container::before {
            content: "";
            background: url('https://i.pinimg.com/originals/5f/ca/8c/5fca8c2de759bc61ed28eb5a3bf1a384.jpg') no-repeat center/contain;
            position: absolute;
            top: -35px;
            left: 50%;
            transform: translateX(-50%);
            width: 60px;
            height: 60px;
        }

        h2 {
            text-align: center;
            color: #b71c1c;
            margin-bottom: 10px;
        }

        .quote {
            text-align: center;
            font-style: italic;
            color: #777;
            margin-bottom: 25px;
            font-size: 14px;
        }

        form {
            display: flex;
            flex-direction: column;
            align-items: stretch;
        }

        label {
            font-weight: bold;
            color: #444;
            margin-top: 12px;
            margin-bottom: 4px;
        }

        .input-group {
            position: relative;
        }

        .input-group input, 
        .input-group select {
            width: 100%;
            padding: 10px 12px;
            border-radius: 6px;
            border: 1px solid #ccc;
            font-size: 15px;
            transition: 0.3s;
            box-sizing: border-box;
        }

        .input-group input:focus, 
        .input-group select:focus {
            border-color: #d32f2f;
            box-shadow: 0 0 5px rgba(211,47,47,0.4);
            outline: none;
        }

        .radio-group {
            margin-top: 6px;
        }

        .radio-group label {
            display: inline-block;
            margin-right: 20px;
            font-weight: normal;
            color: #555;
        }

        .age-warning {
            color: red;
            font-size: 13px;
            margin-top: 4px;
            display: none;
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
            font-weight: bold;
            transition: 0.3s;
        }

        .btn:hover {
            background: #b71c1c;
        }

        .footer {
            text-align: center;
            margin-top: 40px;
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

    <form id="donorForm" action="<%= request.getContextPath() %>/success" method="post">

        <label for="name">Name</label>
        <div class="input-group">
            <input type="text" id="name" name="name" placeholder="Enter your full name" required>
        </div>

        <label for="age">Age</label>
        <div class="input-group">
            <input type="number" id="age" name="age" min="0" placeholder="Enter your age" required>
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
        </div>

        <label>Sex</label>
        <div class="radio-group">
            <label><input type="radio" name="sex" value="Male" required> Male</label>
            <label><input type="radio" name="sex" value="Female" required> Female</label>
            <label><input type="radio" name="sex" value="Other" required> Other</label>
        </div>

        <label for="contact">Contact</label>
        <div class="input-group">
            <input type="tel" id="contact" name="contact" placeholder="Enter your contact number" pattern="[0-9]{10}" maxlength="10" required>
        </div>

        <label for="city">City</label>
        <div class="input-group">
            <input type="text" id="city" name="city" placeholder="Enter your city" required>
        </div>

        <label for="district">District</label>
        <div class="input-group">
            <input type="text" id="district" name="district" placeholder="Enter your district" required>
        </div>

        <label for="pincode">Pincode</label>
        <div class="input-group">
            <input type="text" id="pincode" name="pincode" placeholder="Enter your 6-digit pincode" maxlength="6" required>
        </div>

        <button type="submit" class="btn">Register Now</button>
    </form>
</div>

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

        // Restrict age under 18
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

        // Restrict contact to 10 digits
        const contactInput = document.getElementById("contact");
        contactInput.addEventListener("input", function () {
            this.value = this.value.replace(/\D/g, "");
            if (this.value.length > 10) this.value = this.value.slice(0, 10);
        });

        // Restrict pincode to 6 digits only
        const pincodeInput = document.getElementById("pincode");
        pincodeInput.addEventListener("input", function () {
            this.value = this.value.replace(/\D/g, ""); // Remove non-digits
            if (this.value.length > 6) this.value = this.value.slice(0, 6);
        });
    });
</script>
</body>
</html>
