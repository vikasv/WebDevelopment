$(document).ready(function () {
    $("#first").click(function () {
        $("#first-desc").show();
        $("#third-desc").hide();
        $("#second-desc").hide();
    });
});

$(document).ready(function () {
    $("#second").click(function () {
        $("#second-desc").show();
        $("#first-desc").hide();
        $("#third-desc").hide();
    });
});

$(document).ready(function () {
    $("#third").click(function () {
        $("#third-desc").show();
        $("#second-desc").hide();
        $("#first-desc").hide();
    });
});