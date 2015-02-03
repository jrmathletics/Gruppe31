<%@ Page Title="Sensortest" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Test.aspx.cs" Inherits="Gruppe31.Test" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Sensortest</h2>
    <h3>1 = Opptatt, 0 = Tom</h3>
    
    <div id="meetingrooms" class="container"></div>


    <script src="Scripts/jquery-2.1.3.min.js"></script>
    <script>
        function loadajax() {
            //$.getJSOn("http://bach.molsen.no/status/1", { room_name: "MeetingRoomSouth", status: "3" });
            $.getJSON("http://bach.molsen.no/status/", function (data) {
                
                $.each(data, function (key, val) {
                    createMoterom(val.room_id, val.room_name, val.status);
                
                });
            });
            setTimeout(loadajax, 1000)
        }
        $(document).ready(function () {
            loadajax();
        });

        function createMoterom(id, name, status) {
            if (status == 1) {
                statuscolor = "on"
            }
            else {
                statuscolor = "off"
            }
            if ($('#room_' + id).length == 0) {
                $("#meetingrooms").append('<div id="room_' + id + '"> <span class="nameclass">' + name + '</span> <span class="statusclass"> ' + status + '</span> <div id="' + statuscolor + '"></div> </div>')//'style="color:#' + color + '">XXX</div> </div>')
            } else {
                $('#room_' + id + ' > span.statusclass').html(status)
                $('#room_' + id + ' > span.nameclass').html(name)
            }
            
        }
    </script>
</asp:Content>
