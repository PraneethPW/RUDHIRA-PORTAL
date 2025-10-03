<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*,in.praneeth.Entity.PersonaDetails" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Donor Search Results</title>
    <style>
        body {
            font-family: 'Segoe UI', Arial, sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(135deg, rgba(255,75,43,0.9), rgba(255,65,108,0.9)),
                        url('https://images.unsplash.com/photo-1580281657521-3bdf6401f1c1?ixlib=rb-4.0.3&auto=format&fit=crop&w=1950&q=80') no-repeat center/cover;
            color: #333;
        }

        header {
            background-color: rgba(255,75,43,0.95);
            padding: 15px;
            text-align: center;
            color: white;
            font-size: 24px;
            font-weight: bold;
            letter-spacing: 1px;
        }

        .container {
            background: rgba(255, 255, 255, 0.95);
            margin: 30px auto;
            padding: 20px;
            border-radius: 12px;
            width: 90%;
            max-width: 1100px;
            box-shadow: 0 8px 25px rgba(0,0,0,0.2);
        }

        h1 {
            text-align: center;
            color: #ff4b2b;
            margin-bottom: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 10px;
        }

        th, td {
            padding: 12px 15px;
            text-align: left;
        }

        th {
            background: #ff4b2b;
            color: white;
            text-transform: uppercase;
        }

        tr:nth-child(even) {
            background: #f9f9f9;
        }

        tr:hover {
            background: #ffe5e0;
        }

        .no-data {
            text-align: center;
            padding: 20px;
            color: #c0392b;
            font-size: 18px;
            font-weight: bold;
        }

        .back-btn {
            display: inline-block;
            margin: 20px auto;
            background: #28a745;
            color: white;
            padding: 12px 25px;
            border-radius: 8px;
            text-decoration: none;
            font-size: 16px;
            transition: 0.3s;
            display: block;
            text-align: center;
            width: fit-content;
        }

        .back-btn:hover {
            background: #218838;
        }

        footer {
            background: rgba(0,0,0,0.8);
            color: #ccc;
            text-align: center;
            padding: 10px;
            margin-top: 30px;
            font-size: 14px;
        }

        @media (max-width: 768px) {
            th, td {
                padding: 10px;
                font-size: 14px;
            }
            h1 {
                font-size: 20px;
            }
        }
    </style>
</head>
<body>

<header>🩸 Blood Donor Search Portal</header>

<div class="container">
    <h1>Search Results</h1>

    <%
        List<PersonaDetails> donorList = (List<PersonaDetails>) request.getAttribute("details");
        if (donorList != null && !donorList.isEmpty()) {
    %>
        <table>
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Blood Group</th>
                    <th>City</th>
                    <th>District</th>
                    <th>Pincode</th>
                    <th>Contact</th>
                </tr>
            </thead>
            <tbody>
                <%
                    for (PersonaDetails donor : donorList) {
                %>
                    <tr>
                        <td><%= donor.getName() %></td>
                        <td><%= donor.getBloodgroup() %></td>
                        <td><%= donor.getCity() %></td>
                        <td><%= donor.getDistrict() %></td>
                        <td><%= donor.getPincode() %></td>
                        <td><a href="tel:<%= donor.getContact() %>" style="color:#ff4b2b; font-weight:bold;"><%= donor.getContact() %></a></td>
                    </tr>
                <%
                    }
                %>
            </tbody>
        </table>
    <%
        } else {
    %>
        <div class="no-data">⚠ No donors found for the selected criteria.</div>
    <%
        }
    %>

    <a href="/save/user/finddonars" class="back-btn">🔍 Search Again</a>
</div>

<footer>
    &copy; <%= java.time.Year.now() %> Blood Donation Service | Saving Lives Together ❤️
</footer>

</body>
</html>
