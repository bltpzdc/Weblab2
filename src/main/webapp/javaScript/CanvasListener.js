const canvas = document.querySelector("#canvas");
const ctx = canvas.getContext('2d');

canvas.addEventListener("click", function (event){
    let x = event.offsetX;
    let y = event.offsetY;
    let checkbox = Array.from(document.querySelectorAll('input.checkbox:checked'));
    let checkboxValues = Array.from(checkbox).map(i => i.value).map(ii => parseInt(ii));
    if (checkboxValues.length === 0) return;
    let maxValue = -1
    for (let i = 0; i < checkboxValues.length; i++){
        if (checkboxValues[i] > maxValue) maxValue = checkboxValues[i];
    }
    x = ((x-200)*maxValue)/150;
    y = ((y-200)*maxValue)/(-150);

    ctx.beginPath();
    ctx.arc(event.offsetX, event.offsetY, 5, 0, Math.PI*2, true);
    ctx.fillStyle = "white";
    ctx.fill();
    ctx.closePath();

    let form = document.createElement("form");
    form.setAttribute("method", "POST");
    form.setAttribute("action", "/demo2-1.0-SNAPSHOT/controller-servlet");
    form.setAttribute("id", "canvas");
    form.style.display = 'none';
    addR(form, maxValue);
    addX(form, x);
    addY(form, Math.round(y));
    document.body.appendChild(form);
    form.submit();

    function addX(form, x){
        let inputX = document.createElement("input");
        inputX.type = "text";
        inputX.name = "xCoordinate";
        inputX.value = x;
        form.append(inputX);
    }

    function addY(form, y){
        let inputY = document.createElement("input");
        inputY.type = "text";
        inputY.name = "yCoordinate";
        inputY.value = y;
        form.append(inputY);
    }

    function addR(form, r){
        let inputR = document.createElement("input");
        inputR.type = "text";
        inputR.name = "Radius";
        inputR.value = r;
        form.append(inputR);
    }
});