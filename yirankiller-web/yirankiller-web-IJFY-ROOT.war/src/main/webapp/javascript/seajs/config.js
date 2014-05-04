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
        'jQuery' : '/javascript/jquery/{jqueryV}/jquery',
        'bootstrap' : '/bootstrap/2.3.2/js/bootstrap'
    }
});