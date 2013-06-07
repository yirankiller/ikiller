/*!
 * User: easliu
 * Date: 8/10/12
 * Version: 1.0
 */
seajs.config({
    plugins: ['shim' , 'text'],
    debug : true,
    vars : {
        'jqueryV' : '2.0.2'
    },
    alias: {
        'jQuery' : {
            src : '/javascript/jquery/{jqueryV}/jquery' ,
            exports : function (){
                return jQuery.noConflict(true);
            }
        }

    }
});