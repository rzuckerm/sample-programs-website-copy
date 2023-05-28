function image_titler() {
    // TBD
}

// Run image titler under the following conditions:
// - Web page is ready and image is loaded
// - Web page is resized
$(
    function() {
        // Reference: https://stackoverflow.com/questions/3877027/jquery-callback-on-image-load-even-when-the-image-is-cached
        $(".featured-image img").one("load", function() {
            image_titler();
        }).each(function() {
            $(this).trigger('load');
        });

        $(window).on("resize", function() {
            image_titler();
        })
    }
);
