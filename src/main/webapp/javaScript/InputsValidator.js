let form = document.querySelector(".js-form");
let xCoordinate = document.getElementById("x")

form.onsubmit = function (){
    let checkboxes = document.querySelectorAll('input[type = checkbox]:checked');
    let preX = document.getElementById("x").value
    let x = preX.replace(",", ".");
    let parsedX = parseFloat(x);
    console.log(parsedX, isNaN(parsedX))
    if (!isNaN(parsedX)){
        if (parsedX <= -3 || parsedX >= 3) {xCoordinate.style.background = "#ff073a";}
        if (checkboxes.length === 0) return false;
        return (parsedX > -3 && parsedX < 3);
    }
    else {
        if (isNaN(parsedX)) {document.getElementById("x").style.background = "#ff073a";}
        return false;
    }
}

form.oninput = function (){
    xCoordinate.style.background = "black";
}

form.onreset = function (){
    xCoordinate.style.background = "black";
}
