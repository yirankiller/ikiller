/*!
 * User: easliu
 * Date: 8/10/12
 * Version: 1.0
 */
seajs.config({
    plugins: ['text'],
    debug : true,
    vars : {
        'jqueryV' : '1.11.1',
        'bootstrapV' : '3.0.3'
    },
    alias : {
        'jQuery' : '/js/jquery/{jqueryV}/jquery',
        'bootstrap' : '/bootstrap/{bootstrapV}/js/bootstrap'
    },
    preload : ["jQuery"]

    ,
    map : ['bootstrap' , 'bootstrap.min']

});