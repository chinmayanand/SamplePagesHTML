$(document).ready(function () {
    $("#UserContact").keypress(function (e) {
        if (!(e.keyCode > 47 && e.keyCode < 58)  ) {
            return false;
        }
    });
    var flag = 0;
    $("#btnRegister").click(function () {
        if (!$("#FirstNameTextBox").val()) {
            //alert("*Please specify first name.");
            $('.fNameError').removeClass('hidden');
            $(".fNameError").html('*Please specify first name.');
            $(".fNameError").show();
            flag = 1;
        }
        else if (!(checkValidName($("#FirstNameTextBox").val()))) {
            //alert("*Please specify valid  name.");
            $('.fNameError').removeClass('hidden');
            $(".fNameError").html('*Please Enter a Valid name.');
            $(".fNameError").show();
            flag = 1;
        }


        else {
            $(".fNameError").html('');
            $('.fNameError').addClass('hidden');

            //flag = 0;
        }
        //mobile number validation

        if ($("#UserContact").val()=='') {
            $('.lblcontactError').removeClass('hidden');
            $(".lblcontactError").html('*Please Enter contact number.');
            $(".lblcontactError").show();
            flag = 1;
        }
        else if (!checkValidContactNumber($("#UserContact").val())) {
            $('.lblcontactError').removeClass('hidden');
            $(".lblcontactError").html('*Please Enter a Valid 10 digit contact number.');
            $(".lblcontactError").show();
            flag = 1;
        }
        else {
            $(".lblcontactError").html('');
            $('.lblcontactError').addClass('hidden');
            //flag = 0;
        }

        //alert($("#LastNameTextBox").val() != '');
        if ($("#LastNameTextBox").val() != '' && !(checkValidName($("#LastNameTextBox").val()))) {
            $('.lNameError').removeClass('hidden');
            $(".lNameError").html('*Please Enter a Valid name.');
            $(".lNameError").show();
            flag = 1;
        }
        else {
            $(".lNameError").html('');
            $('.lNameError').addClass('hidden');
            //flag = 0;
        }
        if ($("#UserNameTextBox").val() == '') {
            $('.UserIdError').removeClass('hidden');
            $(".UserIdError").html('*Please specify user ID .');
            $(".UserIdError").show();
            flag = 1;

        }
        else if (!checkValidUserId($("#UserNameTextBox").val())) {
            $('.UserIdError').removeClass('hidden');
            $(".UserIdError").html('*Please specify Valid user ID(No special characters and space).');
            $(".UserIdError").show();
            flag = 1;
        }
        else {
            $(".UserIdError").html('');
            $('.UserIdError').addClass('hidden');
            //flag = 0;
        }
        if ($("#ddl_list_country").val() == 0) {
            $('.UserCountryError').removeClass('hidden');
            $(".UserCountryError").html('*Please select Country.');
            $(".UserCountryError").show();

            flag = 1;

        }
        else {
            $(".UserCountryError").html('');
            $('.UserCountryError').addClass('hidden');

        }
        if ($("#ddl_list_state").val() == 0) {
            $('.UserStateError').removeClass('hidden');
            $(".UserStateError").html('*Please select state.');
            $(".UserStateError").show();

            flag = 1;

        }
        else {
            $(".UserStateError").html('');
            $('.UserStateError').addClass('hidden');

        }
        if ($("#UserPassword").val() == '') {
            $('.UPassError').removeClass('hidden');
            $(".UPassError").html('*Please provide a password.');
            $(".UPassError").show();

            flag = 1;

        }
        else if (!(checkValidPassword($("#UserPassword").val()))) {
            $('.UPassError').removeClass('hidden');
            $(".UPassError").html('*Please provide a Valid Password(No Space and Minimum Length of 8 characters).');
            $(".UPassError").show();
            flag = 1;
        }

        else {
            $(".UPassError").html('');
            $('.UPassError').addClass('hidden');
            //flag = 0;
        }
        if ($("#ConfirmPassword").val() == '' || ($("#ConfirmPassword").val() != $("#UserPassword").val()) || !(checkValidPassword($("#ConfirmPassword").val()))) {
            $('.CPassError').removeClass('hidden');
            $(".CPassError").html('*Password Mismatch.');
            $(".CPassError").show();

            flag = 1;

        }
        else {
            $(".CPassError").html('');
            $('.CPassError').addClass('hidden');
            //flag = 0;
        }
        if (flag == 1) {
            flag = 0;
            return false;
        }


    });
    $("#btnAdmin").click(function () {

        if ($("#txtUserid").val() == '') {
            $('.userID').removeClass('hidden');
            $(".userID").html('*Please specify user ID .');
            $(".userID").show();
            flag = 1;


        }
        else if (!checkValidUserId($("#txtUserid").val())) {
            $('.userID').removeClass('hidden');
            $(".userID").html('*Please specify user ID without any space or special character.');
            $(".userID").show();
            flag = 1;

        }
        else {
            $(".userID").html('');
            $('.userID').addClass('hidden');
            //flag = 0;
        }
        if ($("#txtPassword").val() == '') {
            $('.user_password').removeClass('hidden');
            $(".user_password").html('*Please provide a password.');
            $(".user_password").show();

            flag = 1;

        }
        else if (!checkValidPassword($("#txtPassword").val())) {
            $('.user_password').removeClass('hidden');
            $(".user_password").html('*Please provide a Valid password(without any space and of minimum length 8).');
            $(".user_password").show();
            flag = 1;

        }
        else {
            $(".user_password").html('');
            $('.user_password').addClass('hidden');
            //flag = 0;
        }

        if (flag == 1) {
            flag = 0;
            return false;
        }


    });
    //onuser button click
    $("#btnUserSubmit").click(function () {

        if ($("#txtUserid").val() == '') {
            $('.userID').removeClass('hidden');
            $(".userID").html('*Please specify user ID .');
            $(".userID").show();
            flag = 1;


        }
        else if (!checkValidUserId($("#txtUserid").val())) {
            $('.userID').removeClass('hidden');
            $(".userID").html('*Please specify user ID without any space or special character.');
            $(".userID").show();
            flag = 1;

        }
        else {
            $(".userID").html('');
            $('.userID').addClass('hidden');
            //flag = 0;
        }
        if ($("#txtPassword").val() == '') {
            $('.user_password').removeClass('hidden');
            $(".user_password").html('*Please provide a password.');
            $(".user_password").show();

            flag = 1;

        }
        else if (!checkValidPassword($("#txtPassword").val())) {
            $('.user_password').removeClass('hidden');
            $(".user_password").html('*Please provide a Valid password(without any space and of minimum length 8).');
            $(".user_password").show();
            flag = 1;

        }
        else {
            $(".user_password").html('');
            $('.user_password').addClass('hidden');
            //flag = 0;
        }

        if (flag == 1) {
            flag = 0;
            return false;
        }


    });

});
function checkValidName(name) {
    var regexname = /^[a-zA-Z]+$/;
    if (name.match(regexname)) {
        return true;
    } else {
        //alert("The phone number entered is invalid!");
        return false;
    }
}
function checkValidContactNumber(mobile) {
    var regexValidMobileNumber = /^[0-9]{10}$/;
    if (mobile.match(regexValidMobileNumber)) {
        return true;
    } else {
        //alert("The phone number entered is invalid!");
        return false;
    }
}
function checkValidPassword(password) {
    var regexpassword = /.{8,}/;
    var regexValidEntry = /\s/;
    if (password.match(regexValidEntry)) {
        return false;
    }
    else {
        if (password.match(regexpassword)) {
            return true;
        } else {
            //alert("The phone number entered is invalid!");
            return false;
        }
    }
}
function checkValidUserId(userid) {
    var regexValidEntry = /\s/;
    var regexValidUserId = /[^a-zA-Z 0-9]+/;
    if (userid.match(regexValidEntry)) {
        return false;
    }
    else {
        if (userid.match(regexValidUserId)) {
            return false;
        } else {
            //alert("The phone number entered is invalid!");
            return true;
        }
    }
}