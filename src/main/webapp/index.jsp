<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ru">
<head>
    <title>Лаба 2</title>
    <meta charset="UTF-8">
    <style>
        <%@include file="/css/header.css"%>
    </style>
    <script defer src="${pageContext.request.contextPath}/javaScript/jQuery-3.6.1.js"></script>
    <script defer src="${pageContext.request.contextPath}/javaScript/InputsValidator.js"></script>
    <script defer src="${pageContext.request.contextPath}/javaScript/CanvasListener.js"></script>
</head>
<body class="body_main">
<div class="glow_head">
    <span>Обляшевский С. А., группа Р32312, Вариант - 3110.</span>
</div>
<div class="main">
    <div class="content">
        <div class="input glow">
            <div class="task">
                <div class="canvasDiv">
                    <canvas width="400px" height="400px" id="canvas"></canvas>
                    <script src="${pageContext.request.contextPath}/javaScript/Canvas.js"></script>
                    <script defer src="${pageContext.request.contextPath}/javaScript/Updater.js"></script>
                </div>
                <div class="taskText">
                    <span>Изменение X: Text (-3...3)</span><br><br>
                    <span>Изменение Y: Radio {'-5', '-4','-3','-2','-1','0','1','2','3'}</span><br><br>
                    <span>Изменение R: Checkbox {'1','2','3','4', '5'}</span>
                </div>
            </div>
            <form class = "js-form" action="${pageContext.request.contextPath}/controller-servlet" method="post" class="form">
                <div class="postForm">
                    <div class="chooseX">
                        <span>X:</span>
                        <input class="inputCoordinateX" id="x" name="xCoordinate" type="text" placeholder="Введите число от -3 до 3" maxlength="7">
                    </div>
                    <div class="chooseX">
                        <span>Y:</span>
                        <input type="radio" name="yCoordinate" value="-5" id="y1" class="radio" checked>
                        <label for="y1">-5</label>

                        <input type="radio" name="yCoordinate" value="-4" id="y2" class="radio">
                        <label for="y2">-4</label>

                        <input type="radio" name="yCoordinate" value="-3" id="y3" class="radio">
                        <label for="y3">-3</label>

                        <input type="radio" name="yCoordinate" value="-2" id="y4" class="radio">
                        <label for="y4">-2</label>

                        <input type="radio" name="yCoordinate" value="-1" id="y5" class="radio">
                        <label for="y5">-1</label>

                        <input type="radio" name="yCoordinate" value="0" id="y6" class="radio">
                        <label for="y6">0</label>

                        <input type="radio" name="yCoordinate" value="1" id="y7" class="radio">
                        <label for="y7">1</label>

                        <input type="radio" name="yCoordinate" value="2" id="y8" class="radio">
                        <label for="y8">2</label>

                        <input type="radio" name="yCoordinate" value="3" id="y9" class="radio">
                        <label for="y9">3</label>
                    </div>
                    <div class="chooseX">
                        <span>R:</span>
                        <label class="container"> 1
                            <input type = "checkbox" class = "checkbox" name="Radius" value="1">
                            <span class = "checkmark"></span>
                        </label>
                        <label class="container"> 2
                            <input type = "checkbox" class = "checkbox" name="Radius" value="2">
                            <span class = "checkmark"></span>
                        </label>
                        <label class="container"> 3
                            <input type = "checkbox" class = "checkbox" name="Radius" value="3">
                            <span class = "checkmark"></span>
                        </label>
                        <label class="container"> 4
                            <input type = "checkbox" class = "checkbox" name="Radius" value="4">
                            <span class = "checkmark"></span>
                        </label>
                        <label class="container"> 5
                            <input type = "checkbox" class = "checkbox" name="Radius" value="5">
                            <span class = "checkmark"></span>
                        </label>
                    </div>
                </div>
                <div class="buttons">
                    <div class="resetB">
                        <input type="reset" id="reset" name="resetButton" placeholder="Очистить">
                    </div>
                    <div class="submitB">
                        <input type="submit" id="submit" name="submitButton" placeholder="Отправить" formtarget="_blank">
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>