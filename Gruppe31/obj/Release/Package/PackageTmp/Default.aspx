<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Gruppe31._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>MAKING ROOM</h1>
        <p class="lead">Gruppe 31 sin bacheloroppgave</p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Dokumenter</h2>
            <p>
                Her finner du dokumentasjonen om oppgaven vår.
            </p>
            <p>
                <a class="btn btn-default" href="/Documents">Dokumenter &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Om Gruppe 31</h2>
            <p>
                Her finner du mer informasjon bak heltene som gruppe 31 består av.
            </p>
            <p>
                <a class="btn btn-default" href="/About">Om Gruppe 31 &raquo;</a>
                <a class="btn btn-default" href="/WebForm1">Test</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Om Making Waves</h2>
            <p>
                Her kan du lære mer om hva Making Waves gjør til daglig.
            </p>
            <p>
                <a class="btn btn-default" href="http://www.makingwaves.no/hva-vi-gjor/">Om Making Waves &raquo;</a>
            </p>
        </div>
    </div>

</asp:Content>
