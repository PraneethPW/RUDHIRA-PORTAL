<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registration Successful</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(to bottom, #fff5f5, #ffe0e0);
            text-align: center;
            padding: 50px;
        }

        .success-container {
            background: #fff;
            padding: 40px;
            border-radius: 12px;
            display: inline-block;
            box-shadow: 0 4px 20px rgba(0,0,0,0.1);
            animation: fadeIn 1s ease-in-out;
        }

        h1 {
            color: #b71c1c;
            margin-bottom: 10px;
        }

        p {
            color: #444;
            font-size: 18px;
            margin-bottom: 20px;
        }

        .btn {
            display: inline-block;
            padding: 10px 25px;
            background: #d32f2f;
            color: white;
            border-radius: 6px;
            text-decoration: none;
            font-weight: bold;
            transition: 0.3s;
        }

        .btn:hover {
            background: #b71c1c;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(-20px); }
            to { opacity: 1; transform: translateY(0); }
        }
    </style>
</head>
<body>
<form action="/user/success" method="post">
<div class="success-container">
    <h1>✅ Registration Successful!</h1>
    <p>Thank you for registering as a blood donor.<br>
       Your willingness to donate could help save lives.</p>
    <a href="<%= request.getContextPath() %>/saveddata" class="btn">Go to Home</a>
    <a href="<%= request.getContextPath() %>/clientdata" class="btn ">Here are the details of Donars</a>
   
</div>
</form>

 


</body>
</html>
