function slideSwitch() {
    var $present = $('#slide img.present');

    if ($present.length == 0)
        $present = $('#slide img:last');


    var $next = $present.next().length ? $present.next() : $('#slide img:first');


    $present.addClass('previous');

    $next.css({ opacity: 0.0 })
.addClass('present')
.animate({ opacity: 1.0 }, 1500, function () {
    $present.removeClass('present previous');
});
}
$(function () {
    setInterval("slideSwitch()", 4000);

});