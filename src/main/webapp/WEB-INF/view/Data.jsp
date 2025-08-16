<%@ page import="java.util.*, in.praneeth.Entity.PersonaDetails" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Blood Donor Records</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(to bottom, #fff5f5, #ffe5e5);
            margin: 0;
            padding: 0;
        }
        .header {
            background: #d32f2f;
            color: white;
            text-align: center;
            padding: 20px;
            font-size: 28px;
            font-weight: bold;
            letter-spacing: 1px;
            position: relative;
        }
        .header::before {
            content: "💉";
            font-size: 36px;
            margin-right: 10px;
        }
        .container {
            width: 95%;
            margin: 30px auto;
            background: #fff;
            padding: 20px;
            border-radius: 12px;
            box-shadow: 0 4px 15px rgba(0,0,0,0.1);
        }
        h2 {
            text-align: center;
            margin-bottom: 15px;
            color: #b71c1c;
        }
        p.tagline {
            text-align: center;
            font-size: 16px;
            color: #666;
            margin-bottom: 20px;
            font-style: italic;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            overflow: hidden;
            border-radius: 10px;
        }
        th, td {
            border: 1px solid #f0f0f0;
            padding: 10px 12px;
            text-align: center;
            font-size: 14px;
        }
        th {
            background: #d32f2f;
            color: white;
        }
        tr:nth-child(even) {
            background: #fff5f5;
        }
        tr:hover {
            background: #ffe5e5;
            transition: 0.3s;
        }
        .btn {
            padding: 6px 12px;
            color: #fff;
            background: #1976d2;
            border: none;
            border-radius: 5px;
            text-decoration: none;
            font-size: 13px;
            cursor: pointer;
            transition: 0.3s;
        }
        .btn:hover {
            background: #0b5cab;
        }
        .btn-delete {
            background: #e53935;
        }
        .btn-delete:hover {
            background: #c62828;
        }
        form {
            display: inline;
        }
        .footer {
            margin-top: 25px;
            text-align: center;
            font-size: 14px;
            color: #888;
        }
    </style>
</head>
<body>

<div class="header">
    Blood Donation Records
</div>

<div class="container">
    <h2>Registered Donors</h2>
    <p class="tagline">"A drop of blood can save a life. Thank you for being a hero!"</p>

    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Age</th>
            <th>Blood Group</th>
            <th>Sex</th>
            <th>City</th>
            <th>District</th>
            <th>Pincode</th>
            <th>Contact</th>
            <th>Actions</th>
        </tr>

        <%
            List<PersonaDetails> detailsList = (List<PersonaDetails>) request.getAttribute("details");
            if (detailsList != null && !detailsList.isEmpty()) {
                for (PersonaDetails p : detailsList) {
        %>
            <tr>
                <td><%= p.getId() %></td>
                <td><%= p.getName() %></td>
                <td><%= p.getAge() %></td>
                <td><%= p.getBloodgroup() %></td>
                <td><%= p.getSex() %></td>
                <td><%= p.getCity() %></td>
                <td><%= p.getDistrict() %></td>
                <td><%= p.getPincode() %></td>
                <td><%= p.getContact() %></td>

                <td>
                    <form action="<%= request.getContextPath() %>/user/display2" method="post">
                        <input type="hidden" name="id" value="<%= p.getId() %>">
                        <button type="submit" class="btn btn-delete"
                                onclick="return confirm('Are you sure you want to delete this record?');">
                            Delete
                        </button>
                    </form>
                </td>
            </tr>
        <%
                }
            } else {
        %>
            <tr>
                <td colspan="10" style="text-align:center; color:#888;">No donor records found</td>
            </tr>
        <%
            }
        %>
    </table>

    <div class="footer">
        ❤️ Your donation is priceless. Keep saving lives!
    </div>
</div>

</body>
</html>
