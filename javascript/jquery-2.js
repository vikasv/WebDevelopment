$(document).ready(function () {
    $("#first").click(function () {
        $("#first-desc").fadeIn(4000);
        $("#third-desc").hide();
        $("#second-desc").hide();
    });
});

$(document).ready(function () {
    $("#second").click(function () {
        $("#second-desc").slideDown(2000);
        $("#first-desc").hide();
        $("#third-desc").hide();
    });
});

$(document).ready(function () {
    $("#third").click(function () {
        $("#third-desc").slideToggle("slow");
        $("#second-desc").hide();
        $("#first-desc").hide();
    });
});