
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Sign In</title>

    <!-- Bootstrap core CSS -->
    <link href="../static/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="../static/css/login.css" rel="stylesheet">
</head>

<body>
<div class="blog-masthead">
    <div class="container">
        <nav class="blog-nav">
            <a class="blog-nav-item" href="{% url 'login'%}"><h4 class="mytitle" style="text-align: center;font-weight: bold">
                Grumblr</h4>
            </a>
        </nav>
    </div>
</div>

{% block content %}
{% endblock %}
</body>
</html>
