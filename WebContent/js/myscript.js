/**
 * 
 */
function proc2(){
	// 버튼을 클릭하면 textarea의 배경색을 변경 - random 이용
	
	vr = parseInt(Math.random() * 256);
	vg = parseInt(Math.random() * 256);
	vb = parseInt(Math.random() * 256);
	 //Math.floor(Math.random()*256)  //math.random 난수범위는 0~1  색은 255까지표현해야함 그래서 256을 곱함
	
	// textarea 의 배경색 변경
	txt = document.getElementById("text"); //아이디이름 text
	txt.style.backgroundColor = "rgb("+ vr + ","
									  + vg + ","
									  + vb + ")";  //자바스크립트에서는 background-color 이아니라  backgroundColor 씀
}

