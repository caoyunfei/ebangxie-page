;(function($,window,undefined) {
	
	var 
	    wind = $(window),
        docx = $(document);
     
    var Dialog = function(options){
    	this.settings = $.extend({},Dialog.defaults,options);
    	this.init();
    };

    Dialog.prototype = {


    	constructor:Dialog,

    	init:function(){
        
          this.create();
    	   
    	},
    	create:function(){
          
			// <div class="dialog-content">鞋篮还是空的哦~</div>
			// <div class="dialog-button"><a href="javascript:void(0);">好</a></div>

          var temp = '<div class="dialog-content">'+this.settings.content+
                     '<div class="dialog-button"><a href="javascript:void(0);">好</a>'+
                     '</div>';
          this.dialog = $("<div>").addClass("dialog").css({zIndex:this.settings.zIndex}).html("").appendTo("body");
          
          if($.isFunction(this.settings.ok)){
             this.ok();
          }

          if($.isFunction(this.settings.cancel)){
             this.cancel();
          }

          this.size();
          
          this.position();

    	},
    	ok:function(){
            
            var
                _this = $(this),
                footer = this.dialog.find(".dialog-footer");

            $("<a>",{
            	href:"javascript:void(0);",
            	text:this.settings.okText
            }).on("click",function(){
            	var okCallback = _this.settings.ok();
            	if(okCallback === undefined || okCallback){
            		_this.close();
            	}
            }).addClass("dialog-ok").appendTo(footer);

    	},
    	cancel:function(){
            var 
                _this = $(this),
                footer = this.dialog.find(".dialog-footer");
            $("<a>",{
            	href:"javascript:void(0);",
            	text:this.settings.cancelText
            }).on("click",function(){
            	 var cancelCallback = _this.settings.cancel();
                 if (cancelCallback == undefined || cancelCallback) {
                     _this.close();
                 }
            }).addClass("dialog-cancel").appendTo(footer);
    	},

    	size:function(){
          
           var content = this.dialog.find(".dialog-content");
           
           content.css({
           	 width:this.settings.width,
           	 height:this.settings.height
           })

    	},

    	position:function(){
    		var 
    		    _this = this,
    		     winWidth = win.width(),
                winHeight = win.height(),
                scrollTop = 0;
            this.dialog.css({ 
                left : (winWidth - _this.dialog.width()) / 2,
                top : (winHeight - _this.dialog.height()) / 2 + scrollTop
            });
    	},
    	close : function() {
            this.dialog.remove();
            this.unLock();
        },
    };
    
    Dialog.defaults = {
      
      content:"确定吗？",

      height:110,

      width:230,

      ok:null,

      cancel:null,

      okText:"确定",

      cancelText:"取消",

      zIndex:999999

    };

    var newDialog = function(options){
    	return new Dialog(options);
    };

    window.newDialog = $.newDialog = $.dialog = newDialog;

})(window.Zepto || window.jQuery,window);