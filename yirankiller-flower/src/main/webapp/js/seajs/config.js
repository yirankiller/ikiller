/*!
 * User: easliu
 * Date: 8/10/12
 * Version: 1.0
 */
seajs.config({
    plugins: ['text'],
    debug : true,
    vars : {
        'jqueryV' : '2.0.2'
    },
    alias: {
        'jQuery' : '/js/jquery/{jqueryV}/jquery',
        'bootstrap' : '/bootstrap/3.0.3/js/bootstrap'
    },
    preload: ["jQuery"]
});