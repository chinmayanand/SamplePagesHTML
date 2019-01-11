$(document).ready(function () {
    $("#input_date").datepicker({
        dateFormat: "yy-mm-dd",
        inline: true,
        showAnim: 'fadeIn',
        changeMonth: true,
        changeYear: true,
    });
    var flag = 0;
    $("#btnsearch").click(function () {
        if ($("#input_date").val() == '') {
            //alert("*Please specify first name.");
            $('.dateError').removeClass('hidden');
            $(".dateError").html('*Please choose a Date');
            $(".dateError").show();
            flag = 1;
        }
        else if (!(checkValidDate($("#input_date").val()))) {
            //alert("*Please specify valid  name.");
            $('.dateError').removeClass('hidden');
            $(".dateError").html('*Please Enter a Valid Date.');
            $(".dateError").show();
            flag = 1;
        }
        else {
            $(".dateError").html('');
            $('.dateError').addClass('hidden');

            //flag = 0;
        }
        if ($("#ddl_list_boarding").val() == 0) {
            $('.boardingError').removeClass('hidden');
            $(".boardingError").html('*Please choose Boarding Point.');
            $(".boardingError").show();

            flag = 1;

        }
        else {
            $(".boardingError").html('');
            $('.boardingError').addClass('hidden');

        }
        if ($("#ddl_list_destination").val() == 0) {
            $('.destinationError').removeClass('hidden');
            $(".destinationError").html('*Please select Destination.');
            $(".destinationError").show();

            flag = 1;

        }
        else if ($("#ddl_list_destination").val() != 0 && $("#ddl_list_boarding").val() != 0 && $("#ddl_list_destination").val() === $("#ddl_list_boarding").val()) {
            $('.destinationError').removeClass('hidden');
            $(".destinationError").html('*Source and Destination cannot be same.');
            $(".destinationError").show();

            flag = 1;
        }
        else {
            $(".destinationError").html('');
            $('.destinationError').addClass('hidden');

        }
        if (flag == 1) {
            flag = 0;
            
            return false;
        }

    });
    //handle book button click
    $("#btnBook").click(function () {
        flag = 1;
        $(".SearchDetails").find('input[type="radio"]').each(function () {

            //alert("hey got");
            if ($(this).is(":checked")) {
                flag = 0;
            }
            
        });
        if (flag == 1) {
            flag = 0;
            alert("!!!Please select a Flight to continue booking!!!");
            return false;
        }
        
    });



});
function checkValidDate(inputdate) {
    var regexdate = /^\d{4}-\d{2}-\d{2}$/;;
    if (inputdate.match(regexdate)) {
        return true;
    } else {
        return false;
    }
}