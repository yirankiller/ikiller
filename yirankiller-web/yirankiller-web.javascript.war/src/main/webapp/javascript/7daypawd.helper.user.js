/**
 * User: easliu
 * Date: 3/26/13
 * Version: 1.0
 */


function reload(){
    var _ssnList = "_ssnList";
    var newId = _ssnList+"_gbselect";
    var ssnArr = ["252571944","4608143998","5003072260","5103014303","6112143448","6112181729","6504042224","7607119349","7704179501"];
    if(window.location.pathname.startWith && window.location.pathname.startWith("/mina-sidor/")){
        $("body").append("<div style='width:360px;position: fixed;right: 10px;top: 5px;'><table border='0' width='520'><tbody><tr><td width='84%'><div class='gb-select text-luc3' style=''><select id='"+_ssnList+"' name='"+_ssnList+"' size='1' style='width: 300px; display: none;'></select><div class='list'><table width='100%' cellspacing='0' border='0'><thead><tr><td colspan='12'></td></tr></thead><tbody><tr class='selected'><td class='left'></td><td class='col1'>Konto:</td><td class='col2'>1146745</td><td class='col3'>0</td><td>kr</td><td class='right'></td></tr><tr><td class='left'></td><td class='col1'>Konto:</td><td class='col2'>1129741</td><td class='col3'>0</td><td>kr</td><td class='right'></td></tr></tbody><tfoot><tr><td colspan='12'></td></tr></tfoot></table></div></div></td></tr></tbody></table></div>");

    }
    $.each(ssnArr,function(ind,val){
        $("#"+_ssnList).append("<option value='"+val+"' >"+val+"</option>");
    });

    facetAccountList(_ssnList);
    $("#"+_ssnList + " select option:selected").prop("selected",false);
    $("#"+newId).parent().parent().children().first().remove();
    $("#"+newId+" .col1").css("text-align","center");
    $("#"+_ssnList).change(function(){
        autoLogin(undefined,window.location.pathname == "/mina-sidor/mina-sidor.htm");
    });


    function autoLogin(pass,auto){
        $("#ssn").val($("#"+_ssnList).val());
        if(pass === undefined){
            pass = "123qwe";
        }
        $("#password").val(pass);
        if(auto === undefined){
            auto = true;
        }
        if(auto){
            $("#login").click();
        }
    }

    if(window.location.pathname == "/mina-sidor/mina-sidor.htm"){
        if(document.referrer.endWith("/mina-sidor/mina-sidor.htm")){

        }else if($("#"+_ssnList).val() && $("#"+_ssnList).val().length == 10){
            autoLogin();
        }

    }

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
    var script1=document.createElement('script');\r\n\
    script1.src='http://www.sevenday.se/Scripts/gb-ui/gb-ui-select.js';\r\n\
    script1.type='text/javascript';\r\n\
    document.head.appendChild(script1);\r\n\
    var css1=document.createElement('link');\r\n\
    css1.href='http://www.sevenday.se/Scripts/gb-ui/gb-ui-select/css.css';\r\n\
    css1.type='text/css';\r\n\
    css1.rel='stylesheet'\r\n\
    css1.addEventListener('load', window.__cb);\r\n\
    document.head.appendChild(css1);";
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
































