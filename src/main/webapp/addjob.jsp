<%@page language="java" %>
<html>
    <head>
        <title>Job App - Add Job</title>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css">
    </head>
    <body>
        <nav>
            <a href="home">Home</a>
            <a href="alljobs">All Jobs</a>
            <a href="contact">Contact Us</a>
        </nav>

        <div class="container">
            <h2>Please Submit Job Description</h2>
            <form action="handleForm" method="post">
                <label for="postId">Job Id</label>
                <input type="text" id="postId" name="postId" required>

                <label for="postProfile">Job Title</label>
                <input type="text" id="postProfile" name="postProfile" required>

                <label for="postDescription">Job Description</label>
                <textarea id="postDescription" name="postDescription" required></textarea>

                <label for="reqExperience">Required Experience</label>
                <input type="number" id="reqExperience" name="reqExperience" required>

                <label for="postTechStack">Select Tech Stacks</label>
                <select id="postTechStack" name="postTechStack" multiple required>
                    <option value="Java">Java</option>
                    <option value="Python">Python</option>
                    <option value="JavaScript">JavaScript</option>
                    <option value="C#">C#</option>
                    <option value="Ruby">Ruby</option>
                </select>

                <button type="submit" class="submit-btn">Submit Job Post</button>
            </form>
        </div>
    </body>
</html>