<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Find a Blood Donor</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background: url('https://img.freepik.com/premium-photo/red-blood-donation-heart-world-blood-donor-day-background_1033244-11604.jpg') no-repeat center center/cover;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            position: relative;
        }

        /* Dark overlay for background image */
        body::before {
            content: "";
            position: absolute;
            top: 0; left: 0;
            width: 100%; height: 100%;
            background: rgba(0, 0, 0, 0.6);
            z-index: 0;
        }

        .container {
            position: relative;
            z-index: 1;
            background: rgba(255, 255, 255, 0.15);
            backdrop-filter: blur(15px);
            padding: 35px 30px;
            border-radius: 16px;
            width: 100%;
            max-width: 480px;
            box-shadow: 0 8px 30px rgba(0, 0, 0, 0.5);
            animation: fadeIn 1s ease-in-out;
        }

        h2 {
            text-align: center;
            color: #fff;
            margin-bottom: 25px;
            font-size: 28px;
            letter-spacing: 0.5px;
            font-weight: 700;
        }

        label {
            font-weight: 600;
            margin-top: 10px;
            display: block;
            color: #fff;
            font-size: 15px;
        }

        select, input {
            width: 100%;
            padding: 12px;
            margin-top: 6px;
            margin-bottom: 15px;
            border-radius: 8px;
            border: none;
            outline: none;
            background: rgba(255, 255, 255, 0.95);
            font-size: 15px;
            transition: 0.3s;
        }

        select:focus, input:focus {
            background: white;
            box-shadow: 0 0 10px rgba(255, 75, 43, 0.8);
        }

        button {
            width: 100%;
            padding: 14px;
            background: linear-gradient(90deg, #ff4b2b, #ff416c);
            color: white;
            font-weight: bold;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            font-size: 17px;
            letter-spacing: 0.5px;
            transition: all 0.3s ease;
        }

        button:hover {
            background: linear-gradient(90deg, #e6381c, #e42b55);
            transform: translateY(-2px);
            box-shadow: 0 5px 15px rgba(255, 65, 108, 0.4);
        }

        .note {
            font-size: 14px;
            text-align: center;
            color: #f5f5f5;
            margin-top: 12px;
            font-style: italic;
        }

        /* Animation */
        @keyframes fadeIn {
            from { opacity: 0; transform: scale(0.95); }
            to { opacity: 1; transform: scale(1); }
        }

        @media (max-width: 500px) {
            .container {
                padding: 25px;
            }
            h2 {
                font-size: 24px;
            }
        }
    </style>
</head>
<body>

    <div class="container">
        <h2>Find a Blood Donor</h2>
        <form action="/user/donarslist" method="post">
            
            <label for="bloodgroup">Blood Group</label>
            <select id="bloodgroup" name="bloodgroup" required>
                <option value="">-- Select Blood Group --</option>
                <option value="A+">A+</option>
                <option value="A-">A-</option>
                <option value="B+">B+</option>
                <option value="B-">B-</option>
                <option value="O+">O+</option>
                <option value="O-">O-</option>
                <option value="AB+">AB+</option>
                <option value="AB-">AB-</option>
            </select>

            <label for="city">City</label>
            <input type="text" id="city" name="city" placeholder="Enter city name" required>

            <label for="district">District</label>
            <input type="text" id="district" name="district" placeholder="Enter district" required>

            <label for="pincode">Pincode</label>
            <input type="number" id="pincode" name="pincode" placeholder="Enter pincode" required>

            <button type="submit">Search Donors</button>
            <div class="note">Your search could help save a life ❤️</div>
        </form>
    </div>

</body>
</html>
