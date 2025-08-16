<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Find Blood Donor</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            margin: 0;
            padding: 0;
            background: url('https://static.vecteezy.com/system/resources/previews/007/849/061/large_2x/world-blood-donor-background-free-vector.jpg') no-repeat center center fixed;
            background-size: cover;
        }

        /* Overlay for better text readability */
        .overlay {
            background: rgba(255, 255, 255, 0.92);
            min-height: 100vh;
            display: flex;
            flex-direction: column;
        }

        .header {
            background: rgba(183, 28, 28, 0.9);
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

        .content {
            text-align: center;
            padding: 40px 20px;
            max-width: 800px;
            margin: auto;
        }

        .content h2 {
            color: #b71c1c;
            margin-bottom: 15px;
        }

        .content p {
            color: #444;
            font-size: 16px;
            max-width: 600px;
            margin: 0 auto 25px;
            line-height: 1.6;
        }

        .btn {
            padding: 12px 24px;
            background: linear-gradient(135deg, #d32f2f, #ff4b2b);
            color: white;
            border: none;
            border-radius: 8px;
            font-size: 16px;
            cursor: pointer;
            transition: 0.3s;
            font-weight: bold;
            box-shadow: 0 4px 8px rgba(0,0,0,0.3);
        }

        .btn:hover {
            background: linear-gradient(135deg, #b71c1c, #e13b5a);
            transform: translateY(-2px);
        }

        .footer {
            text-align: center;
            margin-top: auto;
            padding: 30px 20px;
            background-color: rgba(255, 234, 234, 0.95);
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

        /* Mobile responsiveness */
        @media (max-width: 600px) {
            .header {
                font-size: 24px;
                padding: 30px 15px;
            }

            .btn {
                width: 90%;
                font-size: 15px;
            }
        }
    </style>
</head>
<body>

<div class="overlay">

    <div class="header">
        Find Blood Donor
    </div>

    <div class="content">
        <h2>Looking for a Blood Donor?</h2>
        <p>
            Enter your city, district, pincode, and blood group in our search tool to find donors instantly.  
            Thousands of heroes are ready to help — your match could be just a click away.
        </p>
        <form method="get" action="/save/user/finddonars">
            <button type="submit" class="btn">🔍 Find Donors Now</button>
        </form>
    </div>

    <div class="content">
        <h2>Want to Save a Life?</h2>
        <p>
            Join our growing community of blood donors.  
            A few minutes of your time could mean a lifetime for someone in need.
        </p>
        <form method="get" action="/save/user/saveddata">
            <button type="submit" class="btn">❤️ Become a Donor</button>
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

</div>

</body>
</html>
