<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Bootstrap core CSS -->
    <link href="../static/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="../static/css/template.css" rel="stylesheet">
    <script src="../static/js/jquery-3.1.1.js" type="text/javascript"></script>
    <script src="../static/js/grumblr.js" type="text/javascript"></script>
    {% block head %}
    {% endblock %}
</head>
<body>
<div class="blog-masthead">
    <div class="container">
        <nav class="blog-nav">
            <a class="blog-nav-item" href="{% url 'home' %}">Home</a>
            <a class="blog-nav-item" href="{% url 'friendList' %}">Friends</a>
            <a class="blog-nav-item" href="{% url 'friendPost' %}">Discovery</a>
            <a class="blog-nav-item" href="{% url 'logout' %}">Log out</a>
        </nav>
    </div>
</div>

{% block content %}
{% endblock %}

</body>
</html>