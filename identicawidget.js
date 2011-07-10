// a modified version of http://blog.foxxtrot.net/2008/10/identica-statuses-widget.html's Foxxtrot.Widget.Identica
IdenticaLedgerUpdates = function () {
    var target;
    var svc = 'http://identi.ca/';
    var defaultcount = 3;
    // Requires YUI 3.0
    /**
     * _timePhrase is a private function which calculates what to print for the time
     * of the post. Taken from Laconica 0.6.1 lib/util.php
     * @method _timePhrase
     * @argument date
     **/
    var _timePhrase = function(date) {
        var delta = (new Date().getTime() - new Date(date).getTime())/1000;
        if (delta < 60) {
            return 'a few seconds ago';
        } else if (delta < 92) {
            return 'about a minute ago';
        } else if (delta < 3300) {
            return 'about ' + Math.round(delta/60) + ' minutes ago';
        } else if (delta < 5400) {
            return 'about an hour ago';
        } else if (delta < 79200) {
            return 'about ' + Math.round(delta/3600) + ' hours ago';
        } else if (delta < 133200) {
            return 'about a day ago';
        } else if (delta < 2073600) {
            return 'about ' + Math.round(delta/86400) + ' days ago';
        } else if (delta < 3974400) {
            return 'about a month ago';
        } else if (delta < 28512000) {
            return 'about ' + Math.round(delta/259200) + ' months ago';
        } else if (delta < 41472000) {
            return 'about a year ago';
        } else {
            return 'a very long time ago';
        }
    };
    
    var _userLink = function(msg) {
    	var le = /@(\w+)/g, i;
    	var r = msg.match(le), s;
        
        for (i = 0 ; r && i < r.length ; i += 1) {
            s = r[i].substr(1);
            s = '@<a href="' + svc + s + '">' + s + '</a>';
            msg = msg.replace(r[i],s);
        }
        return msg;
    };
    
    var _uriLink = function(msg) {
        var le = /([A-Za-z]+\:\/\/[^"\s\<\>]*[^.,;'">\:\s\<\>\)\]\!])/g;
        var r = msg.match(le), s, i;
        for (i = 0 ; r && i < r.length ; i += 1) {
            s = '<a href="' + r[i] + '">' + r[i] + '</a>';
            msg = msg.replace(r[i],s);
        }
        return msg;
    };

    return {
        getUpdates: function (el, o) {
            var URL;
            o = o || {};
            target = YUI().use('node', function (Y) { target = Y.get(el) });
            /* svc = o.service_url || "http://laconi.ca/"; */
            /* URL = svc + "api/statuses/"; */
            /* if (o.user) { */
            /*     URL += "user_timeline/" + o.user + ".json?"; */
            /* } else { */
            /*     URL += "public_timeline.json?"; */
            /* } */
            URL = "http://identi.ca/api/statusnet/tags/timeline/ledger.json?";
            o.count = o.count || defaultcount;
            URL += "count=" + (o.count-1) + "&";  // identi.ca adds one

            URL += "callback=IdenticaLedgerUpdates.updatesCallback";
            YUI().Get.script(URL);
        },
        updatesCallback: function(dents) {
            var i, text = "";
            for (i = 0 ; i < dents.length ; i += 1) {
              if (!dents[i].text.match(/heath/i)) { // filter out off-topic stuff (heath ledger)
                text += "<li><span>" + _userLink(_uriLink(dents[i].text)) + "</span> ";
                text += '<a href="' + svc + 'notice/' + dents[i].id + '">';
                text += _timePhrase(dents[i].created_at) + "</a></li>";
              }
            }
            target.set('innerHTML', text);
        }
    };
}();



