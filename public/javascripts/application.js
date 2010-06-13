function hideDiv(ele) {
if (document.getElementById) { // DOM3 = IE5, NS6
document.getElementById(ele).style.display = 'none';
}
else {
if (document.layers) { // Netscape 4
document.ele.display = 'none';
}
else { // IE 4
document.all.ele.style.display = 'none';
}
}
}

function showDiv(ele) {
if (document.getElementById) { // DOM3 = IE5, NS6
document.getElementById(ele).style.display = 'block';
}
else {
if (document.layers) { // Netscape 4
document.ele.display = 'block';
}
else { // IE 4
document.all.ele.style.display = 'block';
}
}
} 