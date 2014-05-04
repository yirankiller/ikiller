/**
 * User: easliu
 * Date: 3/26/13
 * Version: 1.0
 */


function reload(){
    var DEFAULT_RELOAD_TIME = "defaultReloadTime";
    var DEFAULT_RELOAD_TIME_VAL = 5;
    var RELOAD = "reload";
    var RELOAD_CURRENTPAGE = "reloadCurrentPage";
    var TIMES = "times";
    window.reloadInterval = null;

    var divTip = $("<div class='tip' style='left:-130px;width:150px;height:95px;position:fixed;padding:10px 0 0 5px;background-color: #ffc0cb;border-radius: 12px'></div>");
    divTip.append("<div class='reloadTimeDiv' style='width:60px;height:20px;border-radius: 12px'/>");
    divTip.append("<div class='reloadButtonDiv' style='width:60px;height:20px;border-radius: 12px;margin-top: 10px;'/>");
    divTip.append("<div class='reloadTimesDiv' style='width:150px;height:20px;border-radius: 12px;margin-top: 10px;font-size: 13px'/>");
    divTip.find(".reloadTimeDiv").append("<input type='text' defaultValue='5' style='width:55px;border-radius: 5px'/>");
    divTip.find(".reloadButtonDiv").append("<input type='button' value='Start' style='width: 60px;border-radius: 5px;background-color: #add8e6;border-color: #add8e6'/>");
    divTip.find(".reloadTimesDiv").append("<label>Reload Times : </label><label class='reloadTimes'>0</label>");
    divTip.mouseenter(function(){
        $(this).animate({'left':'5px'});
    }).mouseleave(function(){
            $(this).animate({'left':'-130px'},{duration:300});
        });
    $("body").prepend(divTip);


    if(window.localStorage.getItem(DEFAULT_RELOAD_TIME) === null){
        $("div.tip .reloadTimeDiv input").val(DEFAULT_RELOAD_TIME_VAL);
    }else{
        $("div.tip .reloadTimeDiv input").val(window.localStorage.getItem(DEFAULT_RELOAD_TIME));
    }

    $(divTip).find(".reloadButtonDiv input").click(function(){
        var textVal = $(this).val();
        if(textVal === "Start"){
            if((window.localStorage.getItem(RELOAD_CURRENTPAGE) === null || window.localStorage.getItem(RELOAD_CURRENTPAGE) === window.location.href)){
                window.localStorage.setItem(RELOAD,"yes");
                var dafaultReloadTime = $("div.tip .reloadTimeDiv input").val();
                setTimeout(function(){
                    window.location.reload(true);
                }, dafaultReloadTime * 1000);
                window.localStorage.setItem(RELOAD_CURRENTPAGE,window.location.href);
                if(window.localStorage.getItem(TIMES) === null){
                    window.localStorage.setItem(TIMES,0);
                } else{
                    $(divTip).find(".reloadTimesDiv .reloadTimes").text(window.localStorage.getItem(TIMES));
                    window.localStorage.setItem(TIMES,(Number(window.localStorage.getItem(TIMES)) +1));
                }
                $(this).val('Stop');
                window.localStorage.setItem(DEFAULT_RELOAD_TIME, dafaultReloadTime);
            }else{
                alert("Another is reloading.");
            }

        }else if(textVal === 'Stop'){
            window.localStorage.removeItem(RELOAD);
            window.localStorage.removeItem(RELOAD_CURRENTPAGE);
            window.localStorage.removeItem(TIMES);
            $(this).val('Start');
        }
    });

    function init(){
        if(window.localStorage.getItem(RELOAD) === "yes" && (window.localStorage.getItem(RELOAD_CURRENTPAGE) === null || window.localStorage.getItem(RELOAD_CURRENTPAGE) === window.location.href)){
            var dafaultReloadTime = $("div.tip .reloadTimeDiv input").val();
            setTimeout(function(){
                window.location.reload(true);
            }, dafaultReloadTime * 1000);
            if(window.localStorage.getItem(TIMES) === null){
                window.localStorage.setItem(TIMES,0);
            } else{
                $(divTip).find(".reloadTimesDiv .reloadTimes").text(window.localStorage.getItem(TIMES));
                window.localStorage.setItem(TIMES,(Number(window.localStorage.getItem(TIMES)) +1));
            }
            $("div.tip .reloadButtonDiv input").val("Stop");
        }
    }

    init();
}




function unsafeInvoke(callback) {
    var cb = document.createElement("script");
    cb.type = "text/javascript";
    cb.textContent = buildCallback(callback);
    document.head.appendChild(cb);
}

function buildCallback(callback) {
    var content = "";
    content += "window.__cb=" + buildObjectJavascriptCode(callback) + ";\r\n\
    if(typeof(jQuery)!='undefined')window.__cb();\r\n\
    else{\
        var script=document.createElement('script');\r\nscript.src='https://ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js';\r\n\
        script.type='text/javascript';\r\n\
        script.addEventListener('load', window.__cb);\r\n\
        document.head.appendChild(script);\r\n\
    }";

    return content;
}

function buildObjectJavascriptCode(object) {
    if (!object) return null;
    var t = typeof (object);
    if (t == "string") {
        return "\"" + object.replace(/(\r|\n|\\)/gi, function (a, b) {
            switch (b) {
                case "\r":
                    return "\\r";
                case "\n":
                    return "\\n";
                case "\\":
                    return "\\\\";
            }
        }) + "\"";
    }
    if (t != "object") return object + "";

    var code = [];
    for (var i in object) {
        var obj = object[i];
        var objType = typeof (obj);

        if ((objType == "object" || objType == "string") && obj) {
            code.push(i + ":" + buildObjectJavascriptCode(obj));
        } else {
            code.push(i + ":" + obj);
        }
    }

    return "{" + code.join(",") + "}";
}

unsafeInvoke(reload);
