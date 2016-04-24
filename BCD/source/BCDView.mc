using Toybox.WatchUi as Ui;
using Toybox.Graphics as Gfx;
using Toybox.System as Sys;
using Toybox.Lang as Lang;
using Toybox.WatchUi as Ui;


class BCDView extends Ui.WatchFace {

	var isSleep=true;

    function initialize() {
        WatchFace.initialize();
    }

    //! Load your resources here
    function onLayout(dc) {
        setLayout(Rez.Layouts.WatchFace(dc));
    }

    //! Called when this View is brought to the foreground. Restore
    //! the state of this View and prepare it to be shown. This includes
    //! loading resources into memory.
    function onShow() {
    }

    //! Update the view
    function onUpdate(dc) {
        // Get and show the current time
        var view = View.findDrawableById("drawBar");
        view.setSleepMode(isSleep);
        View.onUpdate(dc);
    }

    //! Called when this View is removed from the screen. Save the
    //! state of this View here. This includes freeing resources from
    //! memory.
    function onHide() {
    }

    //! The user has just looked at their watch. Timers and animations may be started here.
    function onExitSleep() {
    	isSleep=false;
    	requestUpdate();
    }

    //! Terminate any active timers and prepare for slow updates.
    function onEnterSleep() {
    	isSleep=true;
    	requestUpdate();
    }

}

class CustomMoveBar extends Ui.Drawable {
	
	hidden var sleep=true;
	
	function setSleepMode(sleepMode){
		sleep=sleepMode;
	}
	
    function draw(dc) {
   		
    	var clockTime = Sys.getClockTime();
    	var hour=clockTime.hour;
    	var minute=clockTime.min;
    	var second=clockTime.sec;
    	if(sleep){
    		second=0;
    	}
    	var width=dc.getWidth();
    	var height=dc.getHeight();
    	var x=width/7;
    	var y=height/4;
    	width=width/7*5;
    	height=height/2;
    	var elementWidth=width/12;
    	var elementHeight=height/9;
    	dc.setColor(Gfx.COLOR_WHITE, Gfx.COLOR_WHITE);
    	dc.drawRectangle(x, y, width, height);
    	
    	var eWidth=elementWidth+x;
    	var eHeight=elementHeight*5+y;
    	var tmpHour=hour/20;
    	tmpHour=tmpHour.toNumber();
    	if(tmpHour==1){
    		hour=hour-20;
    		dc.fillRectangle(eWidth, eHeight, elementWidth, elementHeight);
    	}else{
    		dc.drawRectangle(eWidth, eHeight, elementWidth, elementHeight);
    	}
    	
    	eWidth=elementWidth+x;
    	eHeight=elementHeight*7+y;
    	tmpHour=hour/10;
    	tmpHour=tmpHour.toNumber();
    	if(tmpHour==1){
    		hour=hour-10;
    		dc.fillRectangle(eWidth, eHeight, elementWidth, elementHeight);
    	}else{
    		dc.drawRectangle(eWidth, eHeight, elementWidth, elementHeight);
    	}
    	
    	eWidth=elementWidth*3+x;
    	eHeight=elementHeight*1+y;
    	tmpHour=hour/8;
    	tmpHour=tmpHour.toNumber();
    	if(tmpHour==1){
    		hour=hour-8;
    		dc.fillRectangle(eWidth, eHeight, elementWidth, elementHeight);
    	}else{
    		dc.drawRectangle(eWidth, eHeight, elementWidth, elementHeight);
    	}
    	
    	eWidth=elementWidth*3+x;
    	eHeight=elementHeight*3+y;
    	tmpHour=hour/4;
    	tmpHour=tmpHour.toNumber();
    	if(tmpHour==1){
    		hour=hour-4;
    		dc.fillRectangle(eWidth, eHeight, elementWidth, elementHeight);
    	}else{
    		dc.drawRectangle(eWidth, eHeight, elementWidth, elementHeight);
    	}
    	
    	eWidth=elementWidth*3+x;
    	eHeight=elementHeight*5+y;
    	tmpHour=hour/2;
    	tmpHour=tmpHour.toNumber();
    	if(tmpHour==1){
    		hour=hour-2;
    		dc.fillRectangle(eWidth, eHeight, elementWidth, elementHeight);
    	}else{
    		dc.drawRectangle(eWidth, eHeight, elementWidth, elementHeight);
    	}
    	
    	eWidth=elementWidth*3+x;
    	eHeight=elementHeight*7+y;
    	tmpHour=hour/1;
    	tmpHour=tmpHour.toNumber();
    	if(tmpHour==1){
    		hour=hour-1;
    		dc.fillRectangle(eWidth, eHeight, elementWidth, elementHeight);
    	}else{
    		dc.drawRectangle(eWidth, eHeight, elementWidth, elementHeight);
    	}
    	
    	eWidth=elementWidth*5+x;
    	eHeight=elementHeight*3+y;
    	var tmpminute=minute/40;
    	tmpminute=tmpminute.toNumber();
    	if(tmpminute==1){
    		minute=minute-40;
    		dc.fillRectangle(eWidth, eHeight, elementWidth, elementHeight);
    	}else{
    		dc.drawRectangle(eWidth, eHeight, elementWidth, elementHeight);
    	}
    	
    	
    	eWidth=elementWidth*5+x;
    	eHeight=elementHeight*5+y;
    	tmpminute=minute/20;
    	tmpminute=tmpminute.toNumber();
    	if(tmpminute==1){
    		minute=minute-20;
    		dc.fillRectangle(eWidth, eHeight, elementWidth, elementHeight);
    	}else{
    		dc.drawRectangle(eWidth, eHeight, elementWidth, elementHeight);
    	}
    	
    	
    	eWidth=elementWidth*5+x;
    	eHeight=elementHeight*7+y;
    	tmpminute=minute/10;
    	tmpminute=tmpminute.toNumber();
    	if(tmpminute==1){
    		minute=minute-10;
    		dc.fillRectangle(eWidth, eHeight, elementWidth, elementHeight);
    	}else{
    		dc.drawRectangle(eWidth, eHeight, elementWidth, elementHeight);
    	}
    	
    	eWidth=elementWidth*7+x;
    	eHeight=elementHeight*1+y;
    	tmpminute=minute/8;
    	tmpminute=tmpminute.toNumber();
    	if(tmpminute==1){
    		minute=minute-8;
    		dc.fillRectangle(eWidth, eHeight, elementWidth, elementHeight);
    	}else{
    		dc.drawRectangle(eWidth, eHeight, elementWidth, elementHeight);
    	}
    	
    	eWidth=elementWidth*7+x;
    	eHeight=elementHeight*3+y;
    	tmpminute=minute/4;
    	tmpminute=tmpminute.toNumber();
    	if(tmpminute==1){
    		minute=minute-4;
    		dc.fillRectangle(eWidth, eHeight, elementWidth, elementHeight);
    	}else{
    		dc.drawRectangle(eWidth, eHeight, elementWidth, elementHeight);
    	}
    	
    	eWidth=elementWidth*7+x;
    	eHeight=elementHeight*5+y;
    	tmpminute=minute/2;
    	tmpminute=tmpminute.toNumber();
    	if(tmpminute==1){
    		minute=minute-2;
    		dc.fillRectangle(eWidth, eHeight, elementWidth, elementHeight);
    	}else{
    		dc.drawRectangle(eWidth, eHeight, elementWidth, elementHeight);
    	}
    	
    	eWidth=elementWidth*7+x;
    	eHeight=elementHeight*7+y;
    	tmpminute=minute/1;
    	tmpminute=tmpminute.toNumber();
    	if(tmpminute==1){
    		minute=minute-1;
    		dc.fillRectangle(eWidth, eHeight, elementWidth, elementHeight);
    	}else{
    		dc.drawRectangle(eWidth, eHeight, elementWidth, elementHeight);
    	}
    	
    	    	
    	eWidth=elementWidth*9+x;
    	eHeight=elementHeight*3+y;
    	var tmpsecond=second/40;
    	tmpsecond=tmpsecond.toNumber();
    	if(tmpsecond==1){
    		second=second-40;
    		dc.fillRectangle(eWidth, eHeight, elementWidth, elementHeight);
    	}else{
    		dc.drawRectangle(eWidth, eHeight, elementWidth, elementHeight);
    	}
    	
    	
    	eWidth=elementWidth*9+x;
    	eHeight=elementHeight*5+y;
    	tmpsecond=second/20;
    	tmpsecond=tmpsecond.toNumber();
    	if(tmpsecond==1){
    		second=second-20;
    		dc.fillRectangle(eWidth, eHeight, elementWidth, elementHeight);
    	}else{
    		dc.drawRectangle(eWidth, eHeight, elementWidth, elementHeight);
    	}
    	
    	
    	eWidth=elementWidth*9+x;
    	eHeight=elementHeight*7+y;
    	tmpsecond=second/10;
    	tmpsecond=tmpsecond.toNumber();
    	if(tmpsecond==1){
    		second=second-10;
    		dc.fillRectangle(eWidth, eHeight, elementWidth, elementHeight);
    	}else{
    		dc.drawRectangle(eWidth, eHeight, elementWidth, elementHeight);
    	}
    	
    	eWidth=elementWidth*11+x;
    	eHeight=elementHeight*1+y;
    	tmpsecond=second/8;
    	tmpsecond=tmpsecond.toNumber();
    	if(tmpsecond==1){
    		second=second-8;
    		dc.fillRectangle(eWidth, eHeight, elementWidth, elementHeight);
    	}else{
    		dc.drawRectangle(eWidth, eHeight, elementWidth, elementHeight);
    	}
    	
    	eWidth=elementWidth*11+x;
    	eHeight=elementHeight*3+y;
    	tmpsecond=second/4;
    	tmpsecond=tmpsecond.toNumber();
    	if(tmpsecond==1){
    		second=second-4;
    		dc.fillRectangle(eWidth, eHeight, elementWidth, elementHeight);
    	}else{
    		dc.drawRectangle(eWidth, eHeight, elementWidth, elementHeight);
    	}
    	
    	eWidth=elementWidth*11+x;
    	eHeight=elementHeight*5+y;
    	tmpsecond=second/2;
    	tmpsecond=tmpsecond.toNumber();
    	if(tmpsecond==1){
    		second=second-2;
    		dc.fillRectangle(eWidth, eHeight, elementWidth, elementHeight);
    	}else{
    		dc.drawRectangle(eWidth, eHeight, elementWidth, elementHeight);
    	}
    	
    	eWidth=elementWidth*11+x;
    	eHeight=elementHeight*7+y;
    	tmpsecond=second/1;
    	tmpsecond=tmpsecond.toNumber();
    	if(tmpsecond==1){
    		second=second-1;
    		dc.fillRectangle(eWidth, eHeight, elementWidth, elementHeight);
    	}else{
    		dc.drawRectangle(eWidth, eHeight, elementWidth, elementHeight);
    	}
    	
    	
    	
    }
}