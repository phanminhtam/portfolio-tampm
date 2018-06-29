(function($){

    $(document).ready(function () {
        init_counters();
    });
    /* ---------------------------------------------
     Some facts section
     --------------------------------------------- */

     function init_counters(){
        $(".count-number").appear(function(){
            var count = $(this);
            count.countTo({
                from: 0,
                to: count.html(),
                speed: 1300,
                refreshInterval: 60,
            });

        });
    }
})(jQuery);