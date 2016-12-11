<%--<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainApp.aspx.cs" Inherits="WAT.MainApp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">       
        .draggable {
    font: bold 16px sans-serif;
    width: 140px;
    height: 20px;
    text-align: center;
    background: white;
    cursor: move;
    margin-top: 30px;
  }

  .main{
      background-image: url('back.jpg');
      background-color: #cccccc;
  }

  .palettezone {
    width: 300px;
    height: 448px;
    background-image: url('back2.jpg');
    background-color: #cccccc;
    margin-top: 57px;
    float: left;
  }

  #Button1{display: inline-block;
  vertical-align: text-top;
  padding: 35px;
  margin-left: -310px;
  height: 30px;
  }
    </style>
</head>
<body class="main">
    <form id="form1" runat="server">        
        <div class="palettezone" style="display: inline-block; vertical-align: top; padding: 38px; margin-left: 188px;">
        <p draggable="true" ondragstart="drag(event)">tag1</p>
        <p draggable="true" ondragstart="drag(event)">tag2</p>
        <p draggable="true" ondragstart="drag(event)">tag3</p>
        </div>
        <span style="display: inline-block; vertical-align: top; padding: 7px; margin-top: 50px; margin-left: 25px;">              
        <textarea id ="result" class="dropzone"  style="border: solid 2px black; width:450px; height:520px;"></textarea>
        <input id="Button1" type="file" onchange="onFileSelected(event)" />
        </span>
    </form>

<script>
  function onFileSelected(event) {
  var selectedFile = event.target.files[0];
  var reader = new FileReader();

  var result = document.getElementById("result");

  reader.onload = function(event) {
    result.innerHTML = event.target.result;
  };

  reader.readAsText(selectedFile);
  }

  function allowDrop(ev) {
      ev.preventDefault();
  }

  function drag(ev) {
      ev.dataTransfer.setData("text", ev.target.id);
  }

  function drop(ev) {
      ev.preventDefault();
      var data = ev.dataTransfer.getData("text");
      ev.target.appendChild(document.getElementById(data));
  }
</script>
</body>

</html>--%>

<%@ Page Title="Annotation" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MainApp.aspx.cs" Inherits="WAT.MainApp" Async="true" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>
      <div <%--class="main" style ="background-image:url('back.jpg');"--%>>   
        <div class="palettezone" style ="background-image:url('back2.jpg');">
        <p draggable="true" ondragstart="drag(event)">tag1</p>
        <p draggable="true" ondragstart="drag(event)">tag2</p>
        <p draggable="true" ondragstart="drag(event)">tag3</p>
        </div>
        <span style="display: inline-block; vertical-align: top; padding: 7px; margin-top: 50px; margin-left: 25px;">              
        <textarea id ="result" class="dropzone"  style="border: solid 2px black; width:450px; height:520px;"></textarea>
        <input id="Button1" type="file" onchange="onFileSelected(event)" />
        </span>
      </div>
   
</asp:Content>
