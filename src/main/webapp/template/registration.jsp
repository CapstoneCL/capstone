{% extends 'loginTemplate.html' %}
{% block content %}

<link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.6.4/css/bootstrap-datepicker.min.css"
      rel="stylesheet"/>
<link rel="stylesheet" href="https://formden.com/static/cdn/font-awesome/4.4.0/css/font-awesome.min.css"/>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.6.4/js/bootstrap-datepicker.min.js"></script>


<script>
    $(function () {
        $('#dpicker').datepicker({
            format: 'yyyy-mm-dd'
        });
    });
</script>

<div class="container">

    <h1 class="mytitle"></h1>
    <div id="loginbox" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
        <div class="panel panel-success">
            <div class="panel-heading">
                <div class="panel-title">Registration</div>
            </div>

            <div id="main" class="panel-body">
                <div align="center"><a href="{% url 'login'%}">Already have an account? Log in NOW!</a></div>

                {% for error in errors %}
                <div id="login-alert-username" class="alert alert-danger">
                    {{ error }}
                </div>
                {% endfor %}

                <form id="loginform" class="form-signin" action="{% url 'registration' %}" method="post">


                    <label for="username" class="sr-only">User Name</label>
                    <input type="text" id="username" name="username" class="form-control" placeholder="User name"
                           required
                           value="{{ username }}" autofocus>
                    <h6><span class="star">**</span>6 - 20 characters, including digits, letters and "_".</h6><br>


                    <label for="inputPassword" class="sr-only">Password</label>
                    <input type="password" id="inputPassword" name="password" class="form-control"
                           placeholder="Password" required>
                    <h6><span class="star">**</span>6 - 16 characters, including digits, letters and "_".</h6><br>

                    <label for="confirmPassword" class="sr-only">Password</label>
                    <input type="password" id="confirmPassword" name="confirmPassword" class="form-control"
                           placeholder="Confirm password"
                           required>
                    <h6><span class="star">**</span>Confirm your password.</h6><br>

                    <label for="inputFirstName" class="sr-only">First Name</label>
                    <input type="text" id="inputFirstName" name="firstName" class="form-control"
                           placeholder="First name" required>
                    <h6><span class="star">**</span>Please input your first name.</h6><br>

                    <label for="inputLastName" class="sr-only">Last Name</label>
                    <input type="text" id="inputLastName" name="lastName" class="form-control"
                           placeholder="Last name" required>
                    <h6><span class="star">**</span>Please input your last name.</h6><br>

                    <label for="age" class="sr-only">Age</label>
                    <input type="number" id="age" name="age" class="form-control" placeholder="Age">
                    <h6>Please input your age.</h6><br>


                    <select class="form-control" id="gender" name="gender">
                        <option selected disabled>Gender</option>
                        <option value="male">Male</option>
                        <option value="female">Female</option>
                        <option value="not specified">Not specified</option>
                    </select>
                    <h6>Please select your gender.</h6>
                    <br>

                    <div class="input-group">
                        <div class="input-group-addon">
                            <i class="fa fa-calendar">
                            </i>
                        </div>
                        <input type="text" id="dpicker" name="birthday" class="form-control" placeholder="Birthday"/>
                    </div>
                    <h6>Please input your birthday.</h6>
                    <br>

                    <label for="inputPhone" class="sr-only">Phone</label>
                    <input type="text" id="inputPhone" name="phone" class="form-control" placeholder="Phone">
                    <h6>Please input your phone number in a format of (xxx)xxx-xxxx.</h6><br>

                    <label for="inputEmail" class="sr-only">Email</label>
                    <input type="email" id="inputEmail" name="email" class="form-control" placeholder="Email">
                    <h6><span class="star">**</span>Please input your email address.</h6><br>

                    <div class="form-group" id="submit">
                        <input id="btn-signin" href="registration" class="btn btn-success"
                               type="submit">
                    </div>
                    {% csrf_token %}

                </form>
            </div>
        </div>
    </div>
</div>
{% endblock %}
