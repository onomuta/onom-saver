// setTimeout(function(){  
//   var rlink = new Array();
//   rlink[0] = "sketch000.html";
//   rlink[1] = "sketch001.html";
//   // rlink[2] = "sketch002.html";
//   // rlink[3] = "sketch003.html";
//   // rlink[4] = "sketch004.html";
//   // rlink[5] = "sketch005.html";
//   // rlink[6] = "sketch006.html";
//   // rlink[7] = "sketch007.html";
//   // rlink[8] = "sketch008.html";
//   // rlink[9] = "sketch009.html";
//   var x = Math.floor(Math.random() * rlink.length);
//   window.location.href = "sketchbook/"+rlink[x];
// }, 5*1000);



function changeScene(){  
  var rlink = new Array();
  rlink[0] = "sketch000.html"
  rlink[1] = "sketch001.html";
  // rlink[2] = "sketch002.html";
  // rlink[3] = "sketch003.html";
  // rlink[4] = "sketch004.html";
  // rlink[5] = "sketch005.html";
  // rlink[6] = "sketch006.html";
  // rlink[7] = "sketch007.html";
  // rlink[8] = "sketch008.html";
  // rlink[9] = "sketch009.html";
  var x = Math.floor(Math.random() * rlink.length);
  window.location.href = "../sketchbook/"+rlink[x];
};




document.onkeydown = function (e){
  changeScene();

	// 出力テスト
	console.log(e);
};

function TouchEventFunc(e){
  changeScene();
}
var element = document.getElementById("pde");

// タッチを開始すると実行されるイベント
element.addEventListener("touchstart",TouchEventFunc);