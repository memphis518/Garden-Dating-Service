/*! LAB.js (LABjs :: Loading And Blocking JavaScript) v1.2.0 (c) Kyle Simpson, MIT License */
(function(p){var q="string",w="head",L="body",M="script",u="readyState",j="preloaddone",x="loadtrigger",N="srcuri",E="preload",Z="complete",y="done",z="which",O="preserve",F="onreadystatechange",ba="onload",P="hasOwnProperty",bb="script/cache",Q="[object ",bw=Q+"Function]",bx=Q+"Array]",e=null,h=true,i=false,k=p.document,bc=p.location,bd=p.ActiveXObject,A=p.setTimeout,be=p.clearTimeout,R=function(a){return k.getElementsByTagName(a)},S=Object.prototype.toString,G=function(){},r={},T={},bf=/^[^?#]*\//.exec(bc.href)[0],bg=/^\w+\:\/\/\/?[^\/]+/.exec(bf)[0],by=R(M),bh=p.opera&&S.call(p.opera)==Q+"Opera]",bi=("MozAppearance"in k.documentElement.style),bj=(k.createElement(M).async===true),v={cache:!(bi||bh),order:bi||bh||bj,xhr:h,dupe:h,base:"",which:w};v[O]=i;v[E]=h;r[w]=k.head||R(w);r[L]=R(L);function B(a){return S.call(a)===bw}function U(a,b){var c=/^\w+\:\/\//,d;if(typeof a!=q)a="";if(typeof b!=q)b="";d=((/^\/\//.test(a))?bc.protocol:"")+a;d=(c.test(d)?"":b)+d;return((c.test(d)?"":(d.charAt(0)==="/"?bg:bf))+d)}function bz(a){return(U(a).indexOf(bg)===0)}function bA(a){var b,c=-1;while(b=by[++c]){if(typeof b.src==q&&a===U(b.src)&&b.type!==bb)return h}return i}function H(t,l){t=!(!t);if(l==e)l=v;var bk=i,C=t&&l[E],bl=C&&l.cache,I=C&&l.order,bm=C&&l.xhr,bB=l[O],bC=l.which,bD=l.base,bn=G,J=i,D,s=h,m={},K=[],V=e;C=bl||bm||I;function bo(a,b){if((a[u]&&a[u]!==Z&&a[u]!=="loaded")||b[y]){return i}a[ba]=a[F]=e;return h}function W(a,b,c){c=!(!c);if(!c&&!(bo(a,b)))return;b[y]=h;for(var d in m){if(m[P](d)&&!(m[d][y]))return}bk=h;bn()}function bp(a){if(B(a[x])){a[x]();a[x]=e}}function bE(a,b){if(!bo(a,b))return;b[j]=h;A(function(){r[b[z]].removeChild(a);bp(b)},0)}function bF(a,b){if(a[u]===4){a[F]=G;b[j]=h;A(function(){bp(b)},0)}}function X(b,c,d,g,f,n){var o=b[z];A(function(){if("item"in r[o]){if(!r[o][0]){A(arguments.callee,25);return}r[o]=r[o][0]}var a=k.createElement(M);if(typeof d==q)a.type=d;if(typeof g==q)a.charset=g;if(B(f)){a[ba]=a[F]=function(){f(a,b)};a.src=c;if(bj){a.async=i}}r[o].insertBefore(a,(o===w?r[o].firstChild:e));if(typeof n==q){a.text=n;W(a,b,h)}},0)}function bq(a,b,c,d){T[a[N]]=h;X(a,b,c,d,W)}function br(a,b,c,d){var g=arguments;if(s&&a[j]==e){a[j]=i;X(a,b,bb,d,bE)}else if(!s&&a[j]!=e&&!a[j]){a[x]=function(){br.apply(e,g)}}else if(!s){bq.apply(e,g)}}function bs(a,b,c,d){var g=arguments,f;if(s&&a[j]==e){a[j]=i;f=a.xhr=(bd?new bd("Microsoft.XMLHTTP"):new p.XMLHttpRequest());f[F]=function(){bF(f,a)};f.open("GET",b);f.send("")}else if(!s&&a[j]!=e&&!a[j]){a[x]=function(){bs.apply(e,g)}}else if(!s){T[a[N]]=h;X(a,b,c,d,e,a.xhr.responseText);a.xhr=e}}function bt(a){if(typeof a=="undefined"||!a)return;if(a.allowDup==e)a.allowDup=l.dupe;var b=a.src,c=a.type,d=a.charset,g=a.allowDup,f=U(b,bD),n,o=bz(f);if(typeof d!=q)d=e;g=!(!g);if(!g&&((T[f]!=e)||(s&&m[f])||bA(f))){if(m[f]!=e&&m[f][j]&&!m[f][y]&&o){W(e,m[f],h)}return}if(m[f]==e)m[f]={};n=m[f];if(n[z]==e)n[z]=bC;n[y]=i;n[N]=f;J=h;if(!I&&bm&&o)bs(n,f,c,d);else if(!I&&bl)br(n,f,c,d);else bq(n,f,c,d)}function Y(a){if(t&&!I)K.push(a);if(!t||C)a()}function bu(a){var b=[],c;for(c=-1;++c<a.length;){if(S.call(a[c])===bx)b=b.concat(bu(a[c]));else b[b.length]=a[c]}return b}D={script:function(){be(V);var a=bu(arguments),b=D,c;if(bB){for(c=-1;++c<a.length;){if(B(a[c]))a[c]=a[c]();if(c===0){Y(function(){bt((typeof a[0]==q)?{src:a[0]}:a[0])})}else b=b.script(a[c]);b=b.wait()}}else{for(c=-1;++c<a.length;){if(B(a[c]))a[c]=a[c]()}Y(function(){for(c=-1;++c<a.length;){bt((typeof a[c]==q)?{src:a[c]}:a[c])}})}V=A(function(){s=i},5);return b},wait:function(a){be(V);s=i;if(!B(a))a=G;var b=H(t||J,l),c=b.trigger,d=function(){try{a()}catch(err){}c()};delete b.trigger;var g=function(){if(J&&!bk)bn=d;else d()};if(t&&!J)K.push(g);else Y(g);return b}};if(t){D.trigger=function(){var a,b=-1;while(a=K[++b])a();K=[]}}else D.trigger=G;return D}function bv(a){var b,c={},d={"UseCachePreload":"cache","UseLocalXHR":"xhr","UsePreloading":E,"AlwaysPreserveOrder":O,"AllowDuplicates":"dupe"},g={"AppendTo":z,"BasePath":"base"};for(b in d)g[b]=d[b];c.order=!(!v.order);for(b in g){if(g[P](b)&&v[g[b]]!=e)c[g[b]]=(a[b]!=e)?a[b]:v[g[b]]}for(b in d){if(d[P](b))c[d[b]]=!(!c[d[b]])}if(!c[E])c.cache=c.order=c.xhr=i;c.which=(c.which===w||c.which===L)?c.which:w;return c}p.$LAB={setGlobalDefaults:function(a){v=bv(a)},setOptions:function(a){return H(i,bv(a))},script:function(){return H().script.apply(e,arguments)},wait:function(){return H().wait.apply(e,arguments)}};(function(a,b,c){if(k[u]==e&&k[a]){k[u]="loading";k[a](b,c=function(){k.removeEventListener(b,c,i);k[u]=Z},i)}})("addEventListener","DOMContentLoaded")})(window);

/*! TheKernal */
(function(){

	////////////////////////////////////////////////////////////////////////////////////////
	TheKernal = function(a, b) {
		if (typeof a == 'string') { TheKernal.require(a, b); }
		if (typeof a == 'function') { TheKernal.unit(a); }
		if (a instanceof Array){ for(var v in a) { TheKernal(a[v], b); }; } // for arrays
		if (typeof a == 'undefined') { TheKernal.next(); }
	};
	
	////////////////////////////////////////////////////////////////////////////////////////
	// the library: an interface for $LAB
	TheKernal.library = [];
	
	// would require jquery
	//$('script').each(function(v){
		//TheKernal.library.push(v.attr('src'));
	//});
	
	TheKernal.require = function(a, b){ 
		var found = false;
		for(var v in TheKernal.library){
			if (TheKernal.library[v] === a) { found = true; }
		}
		if (!found) {
			TheKernal.fn.push(
					function(){ 
						$LAB.script(a).wait( function(){ TheKernal.library.push(a); TheKernal.log('loaded: '+ a); 
						if (typeof b == 'function') { b(); } else { TheKernal(); } });
					}
			); 
		} return true;
	}
	
	////////////////////////////////////////////////////////////////////////////////////////
	// The Kernal Keeper
	// TODO: disable-able, production version 
	
	var testDuration 	= 1000;
	var initialTimeout 	= 250;
	var keeperSteps 	= 5;
	var keeperDuration  = TheKernal.timeout / keeperSteps;
	
	TheKernal.machineSpeed = 3; // higher is slower
	TheKernal.timeout = initialTimeout * TheKernal.machineSpeed;
	
	TheKernal.resetTimeout = function(){
		TheKernal.timeout = initialTimeout * TheKernal.machineSpeed;
		keeperDuration = TheKernal.timeout / keeperSteps;
		return TheKernal.timeout;
	}
	
	// Machine Speed Test
	TheKernal.runSpeedTest = function (){
		var ticks = 1;
		var ticker = setInterval(function(){ ticks++; }, 1);
		var speedTest = setTimeout(function(){
			ticker = clearInterval(ticker); ticker = false;
			TheKernal.machineSpeed = Math.ceil(testDuration/ticks);
			if (TheKernal.machineSpeed < 1) { TheKernal.machineSpeed = 1; }
			if (TheKernal.timeout === initialTimeout * TheKernal.machineSpeed){ // if the user hasn't changed it
				TheKernal.resetTimeout();
			}
			TheKernal.debug.log('Kernal: Speed test complete, Machine Speed: '+ TheKernal.machineSpeed + ', Timeout: '+ TheKernal.timeout);
		}, testDuration);
	}
	TheKernal.resetTimeout();
	TheKernal.runSpeedTest();
	
	////////////////////////////////////////////////////////////////////////////////////////
	// The Kernal Que
	var keeper 	= false;
	var timer	= false;
	
	TheKernal.started = false;
	TheKernal.fn = [], 
	TheKernal.fn.last = false;
	
	TheKernal.start = function(){ 
		TheKernal.started = true; TheKernal.debug.speed = 0; 
		timer = clearInterval(timer); timer = false;
		keeper = clearInterval(keeper); keeper = false;
		keeper = setInterval(function(){
			if (TheKernal.debug.speed > TheKernal.timeout){
				TheKernal.debug.error({timeout :'skipping ahead'});
				TheKernal();
			}
		}, keeperDuration );
	}
	TheKernal.stop = function(){ 
		keeper = clearInterval(keeper); keeper = false;
		timer = clearInterval(timer); timer = false;
		TheKernal.started = false; 
	}
	TheKernal.unit = function(a, b){ 
		if(typeof a =='string'){ TheKernal.require(a,b); }
		if(typeof a =='function'){ TheKernal.fn.push(a); return TheKernal.fn.length -1; }
	}
	TheKernal.now = function(a, b){ 
		if(typeof a =='string'){ $LAB.script(a).wait(b);  }
		if(typeof a =='function'){ TheKernal.fn.unshift(a); return 0; }
	}
	
	TheKernal.init = function(){
		if(TheKernal.started === false){ TheKernal.log('TheKernal started'); } 
		else { TheKernal.title('TheKernal already running'); }
		TheKernal.next(); 
	};
	TheKernal.next = function(){
		var me = TheKernal.fn.shift(); 
		TheKernal.run(me);
	}
	TheKernal.report = function(){
		TheKernal.debug.push({fn: TheKernal.fn.last, speed: TheKernal.debug.speed });
		TheKernal.trace('ran: ', TheKernal.debug.speed + 'ms', TheKernal.fn.last, 'left: '+ TheKernal.fn.length);
		TheKernal.fn.last = false; TheKernal.debug.speed = 0; 
		timer = clearInterval(timer); timer = false;
	};
	TheKernal.run = function(me){
		if (typeof TheKernal.fn.last === 'function') { TheKernal.report(); }
		if (typeof optional(me) == 'function') { 
			TheKernal.start(); 
			TheKernal.trace('TheKernal: running', optional(me), TheKernal.fn.length);
			TheKernal.fn.last = me, TheKernal.debug.speed = 0, timer = setInterval(function(){TheKernal.debug.speed++;}, 1);
			try { 
				me(); 
			} catch(e) {
				timer = clearInterval(timer); timer = false;
				TheKernal.error(e, me);
				TheKernal(); // move on
			}
		} else { 
			TheKernal.stop(); 
		}
	}
	
	
	////////////////////////////////////////////////////////////////////////////////////////
	// Debug helpers
	
	TheKernal.debug = [];
	TheKernal.debug.speed = 0;
	TheKernal.debug.level = 0;
	
	// rewire console
	if (console) { _console = console; }
	console = TheKernal.debug;
	
	// two good functions
	TheKernal.log = TheKernal.debug.log = function(){ 
		if (TheKernal.debug.level > 0) {
			try {
				_console.log.apply(console, arguments);
			} catch(e) {
				try {
					opera.postError.apply(opera, arguments);
				} catch(e){
					alert(Array.prototype.join.call( arguments, ' '));
				}
			}
		}
	}
	// helper function, works like <cf_param>, but better
	TheKernal.optional= function (){ 
		for (var a=0; a<arguments.length; a++) {
			if (typeof arguments[a] !== 'undefined' && arguments[a] !== null) { 
				if (String(arguments[a]) !== 'NaN') {
					return arguments[a];	// if a default set with param
				}
			} 
		}
		return ''; // if all else fails, return an empty string
	}

	
	// create various levels of error handlers
	TheKernal.error = TheKernal.debug.error = function(){ 
		TheKernal.debug.push({'error': arguments });
		switch(TheKernal.debug.level) {
			case 1 : case 2 :  TheKernal.debug.log.apply(TheKernal, arguments); break;
			case 3 : TheKernal.debug.log.apply(TheKernal, arguments); alert(arguments[0]); break;
		};
	}
	TheKernal.trace = TheKernal.debug.trace = function(){ 
		switch(TheKernal.debug.level) {
			case 0 : case 1 : break;
			case 2 : TheKernal.debug.push({'trace': arguments }); break;
			case 3 :  TheKernal.debug.push({'trace': arguments }); TheKernal.debug.log.apply(TheKernal, arguments); break;
		};
	}
	TheKernal.title = function(){ 
		switch(TheKernal.debug.level) {
			case 0 : case 1 : break;
			case 2 : case 3 : arguments[0] = 'Title: '+arguments[0]; TheKernal.debug.log.apply(TheKernal, arguments); break;
		};
	}
	
	// expose two good functions to window
	log = console.log;
	optional = TheKernal.optional;
	
	TheKernal.title('TheKernal init loaded');

})();