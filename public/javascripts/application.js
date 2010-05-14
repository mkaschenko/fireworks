$(document).ready(function() {

  FB_RequireFeatures(["XFBML"], function() {
    FB.Facebook.init("ee04c13f7e3ce1a4a602f1cc10835b52", "/xd_receiver.htm");
  });

  FB_RequireFeatures(["CanvasUtil"], function() {
    FB.XdComm.Server.init("/xd_receiver.htm");
    FB.CanvasClient.startTimerToSizeToContent();
    FB.CanvasClient.syncUrl();
  });

});