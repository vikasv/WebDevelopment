$(document).ready(function () {
    /* An array holding all the days and months */
    var months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];
    var days = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]


    var dateObj = new Date();
    dateObj.setDate(dateObj.getDate()); //get the current date and set it in the dateObj

    / The day, date, month and year is printed */

    $('.Date').html(days[dateObj.getDay()] + " " + dateObj.getDate() + " " + months[(dateObj.getMonth())] + " " + dateObj.getFullYear());


    /* The setInterval is a standard Javascript function. using this you can call the function specified in it periodically */
    /* These three functions gets the seconds, minutes and hours and sets it using selector.html */

    setInterval(function () {

        var seconds = new Date().getSeconds();
        // Add a leading zero to seconds value
        $(".sec").html((seconds < 10 ? "0" : "") + seconds);
    }, 1000);

    setInterval(function () {

        var min = new Date().getMinutes();
        // Add a leading zero to seconds value
        $(".min").html((min < 10 ? "0" : "") + min);
    }, 1000);

    setInterval(function () {

        var hours = new Date().getHours();

        $(".hours").html((hours < 10 ? "0" : "") + hours);
    }, 1000);

});
