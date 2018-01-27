// setTimeout(function(){  
//   var rlink = new Array();
//   rlink[0] = "sketch_000.html";
//   rlink[1] = "sketch_001.html";
//   // rlink[2] = "sketch_002.html";
//   // rlink[3] = "sketch_003.html";
//   // rlink[4] = "sketch_004.html";
//   // rlink[5] = "sketch_005.html";
//   // rlink[6] = "sketch_006.html";
//   // rlink[7] = "sketch_007.html";
//   // rlink[8] = "sketch_008.html";
//   // rlink[9] = "sketch_009.html";
//   var x = Math.floor(Math.random() * rlink.length);
//   window.location.href = "sketchbook/"+rlink[x];
// }, 5*1000);



function changeScene(){  
  var rlink = new Array();
  rlink[0] = "sketch_000.html"
  rlink[1] = "sketch_001.html";
  rlink[2] = "sketch_002.html";
  // rlink[3] = "sketch_003.html";
  // rlink[4] = "sketch_004.html";
  // rlink[5] = "sketch_005.html";
  // rlink[6] = "sketch_006.html";
  // rlink[7] = "sketch_007.html";
  // rlink[8] = "sketch_008.html";
  // rlink[9] = "sketch_009.html";
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