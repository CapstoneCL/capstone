<!DOCTYPE html>
<html lang="en">
<head>
    <title>Sign In</title>

    <link href="../static/css/bootstrap.min.css" rel="stylesheet">

    <link href="../static/css/login.css" rel="stylesheet">

</head>

<body>
<div class="blog-masthead">
    <div class="container">
        <nav class="blog-nav">
            <a class="blog-nav-item" href="{% url 'login'%}"><h4 class="mytitle"
                                                                 style="text-align: center;font-weight: bold">
                Grumblr</h4>
            </a>
        </nav>
    </div>
</div>
<div class="container" id="main">

    <div id="loginbox" class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
        <div class="panel panel-success">
            <div class="panel-heading">
                <div class="panel-title">Login In</div>
            </div>

            <div class="panel-body">


                <form id="loginform" action="login" class="form-signin" role="form" method="POST">

                    <div id="login-alert-username" class="alert alert-danger">
                    </div>

                    <div class="form-control" id="username">{{ form.username.label_tag }} {{ form.username }}</div>
                    <br>
                    <div class="form-control" id="password">{{ form.password.label_tag }} {{ form.password }}</div>

                    <br>


                    <div class="form-group" id="submit">
                        <!-- Button -->
                        <input id="btn-signin" class="btn btn-success"
                               type="submit" value="Sign In">
                        <br>
                    </div>
                    <a href="{% url 'registration' %}">Don't have an account? Sign up NOW!</a>
                    {% csrf_token %}
                </form>

            </div>
        </div>
    </div>
</div>

</body>
</html>


