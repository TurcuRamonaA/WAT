<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="WAT.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <%--<h2><%: Title %>.</h2>--%>
   <%-- <h3>Your application description page.</h3>--%>
    <h3 id ="WAT_Title" class="color">(WAT) Web Annotator for Temporality</h3>

<div class="color">
<p>WAT is an online annotation tool associated with a web resource, typically a web page. </p>
<p>You can add, modify,remove or share information from an XML-annotated resource as you want in order to obtain your own annotation. <p>
<p>For each XML element, you can specify useful information, like type, relations with other elements, perspective and more others.</p> 
<p>The user will have some default tags for annotation and also he will be able to set his own tags for the text analyzed.</p>
</div>
</asp:Content>
