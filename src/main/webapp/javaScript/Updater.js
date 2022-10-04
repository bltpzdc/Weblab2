$(document).ready(function () {
    $.ajax({
        url: "/demo2-1.0-SNAPSHOT/controller-servlet",
        async: true,
        type: "POST",
        cache: false,
        data : {
            "getOldValues" : "ok",
        },
        success: function (response) {
            drawPoints(response);
        }

    })
})

function drawPoints(response){
    const canvas = document.querySelector("#canvas");
    const ctx = canvas.getContext('2d');
    let rows = response.split('\n');
    rows.forEach(function (value, index, array){
        let columns = value.split(' ');
        let x = parseFloat(columns[0]);
        let y = parseInt(columns[1]);
        let r = parseInt(columns[2]);
        x = (x/r)*150+200;
        y = (-y/r)*150+200;

        ctx.beginPath();
        ctx.arc(x, y, 5, 0, Math.PI*2, true);
        ctx.fillStyle = "white";
        ctx.fill();
        ctx.closePath();
    })
}