<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="View.ascx.cs" Inherits="ZEA.Modul.DNN_Beispiel.View" %>





<script src="<%= UrlPrefix() %>/DesktopModules/DNN_Beispiel/Scripts/jquery-4.0.0-beta.js" type="text/javascript"></script>
<script src="<%= UrlPrefix() %>/DesktopModules/DNN_Beispiel/Scripts/jquery-4.0.0-beta.min.js" type="text/javascript"></script>
<script src="<%= UrlPrefix() %>/DesktopModules/DNN_Beispiel/Scripts/datatables.min.js" type="text/javascript"></script>
<script src="<%= UrlPrefix() %>/DesktopModules/DNN_Beispiel/Scripts/jquery-confirm.js" type="text/javascript"></script>
<script src="<%= UrlPrefix() %>/DesktopModules/DNN_Beispiel/Scripts/jquery-ui.js" type="text/javascript"></script>
<script src="<%= UrlPrefix() %>/DesktopModules/DNN_Beispiel/Scripts/dnn.servicesframework.js" type="text/javascript"></script>

<link  href="<%= UrlPrefix() %>/DesktopModules/DNN_Beispiel/Scripts/jquery-ui.css" rel="stylesheet">
<link  href="<%= UrlPrefix() %>/DesktopModules/DNN_Beispiel/Scripts/datatables.min.css" rel="stylesheet">


<div class="Titel">
    <label id="lTitel"><%= ModuleTitel() %></label>
</div>


<div id="ListeKunden">
        <button id="btNeuerKunde" class="ui-button ui-widget ui-corner-all" title="Neuen Kunden anlegen!">Neuen Kunden anlegen</button>
        <br />
        <br />
        <table class="display" id="KundenLste" style="width:100%">
            <thead>
                <tr>
                    <th style="text-align: center">ID</th>
                    <th style="text-align: center">Name 1</th>
                    <th style="text-align: center">Name 2</th>
                    <th style="text-align: center">Strasse</th>
                    <th style="text-align: center">Land</th>
                    <th style="text-align: center">PLZ</th>
                    <th style="text-align: center">Ort</th>
                    <th style="text-align: center">Ansprechpartner</th>
                    <th style="text-align: center">Bearbeiten</th>
                    <th style="text-align: center">Löschen</th>
                </tr>
            </thead>
            <tbody class="bodyKundenListe"></tbody>
            <tfoot>
                <tr>
                    <th style="text-align: center">ID</th>
                    <th style="text-align: center">Name 1</th>
                    <th style="text-align: center">Name 2</th>
                    <th style="text-align: center">Strasse</th>
                    <th style="text-align: center">Land</th>
                    <th style="text-align: center">PLZ</th>
                    <th style="text-align: center">Ort</th>
                    <th style="text-align: center">Ansprechpartner</th>
                    <th style="text-align: center">Bearbeiten</th>
                    <th style="text-align: center">Löschen</th>
                </tr>
            </tfoot>
        </table>
</div>
   

<div id="dialogNeuerKunde" title="Kunde anlegen / anpassen" hidden="hidden">
    <table style="width: 40%; ">
        <tr>
            <td style="width: 30%">
                <label for="tbID">ID</label>
            </td>
            <td style="width: 70%">
                <input type="text" name="tbID" id="tbID" value="" class="text ui-widget-content ui-corner-all" title="Eindeutige ID des Kunden!" >
            </td>
        </tr>
        <tr>
            <td style="width: 30%">
                <label for="tbName1">Name 1</label>
            </td>
            <td style="width: 70%">
                <input type="text" name="tbName1" id="tbName1" value="" class="text ui-widget-content ui-corner-all" title="Name des Kunden!" onkeydown="fieldKeyDown(event)">
            </td>
            </tr>
        <tr>
            <td style="width: 30%">
                <label for="tbName2">Name 2</label>
            </td>
            <td style="width: 70%">
                <input type="text" name="tbName2" id="tbName2" value="" class="text ui-widget-content ui-corner-all" title="Name des Kunden!" onkeydown="fieldKeyDown(event)">
            </td>
        </tr>
        <tr>
            <td style="width: 30%">
                <label for="tbStrasse">Strasse</label>
            </td>
            <td style="width: 70%">
                <input type="text" name="tbStrasse" id="tbStrasse" value="" class="text ui-widget-content ui-corner-all" title="Adresse des Kunden, Strasse!" onkeydown="fieldKeyDown(event)">
            </td>
        </tr>
        <tr>
            <td style="width: 30%">
                <label for="tbLand">Land</label>
            </td>
            <td style="width: 70%">
                <input type="text" name="tbLand" id="tbLand" value="" class="text ui-widget-content ui-corner-all" title="Adresse des Kunden, Länderkennzeichen!" onkeydown="fieldKeyDown(event)">
            </td>
        </tr>
        <tr>
            <td style="width: 30%">
                <label for="tbPLZ">PLZ</label>
            </td>
            <td style="width: 70%">
                <input type="text" name="tbPLZ" id="tbPLZ" value="" class="text ui-widget-content ui-corner-all" title="Adresse des Kunden, Postleitzahl!" onkeydown="fieldKeyDown(event)">
            </td>
        </tr>
        <tr>
            <td style="width: 30%">
                <label for="tbOrt">Ort</label>
            </td>
            <td style="width: 70%">
                <input type="text" name="tbOrt" id="tbOrt" value="" class="text ui-widget-content ui-corner-all" title="Adresse des Kunden, Ort!" onkeydown="fieldKeyDown(event)">
            </td>
        </tr>
    </table>
     <button id="btKundeSpeichern" class="ui-button ui-widget ui-corner-all" title="Kunde Speichern!">Speichern</button>
     <button id="btKundeAbbrechen" class="ui-button ui-widget ui-corner-all" title="Eingabe Abbrechen!">Abbrechen</button>
   
</div>


 <div id="ListeAnsprechpartner">
        <button id="btCreateAnsprechpartner" class="ui-button ui-widget ui-corner-all" title="Neuer Ansprechpartner für den Kunden erstellen!">Neuer Ansprechpartner</button>
        <button id="btBackToKunde" class="ui-button ui-widget ui-corner-all" title="Zurück zur Kunden-Übersicht">Zurück</button>
     <br />
        <br />
        <table class="display" id="AnsprechpartnerListe" style="width:100%">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Anrede</th>
                    <th>Vorname</th>
                    <th>Nachname</th>
                    <th>Email</th>
                    <th>Telefon</th>
                    <th>Mobil</th>
                    <th>FAX</th>
                    <th>Bearbeiten</th>
                    <th>Löschen</th>
                </tr>
            </thead>
            <tbody class="bodyAnsprechpartnerListe"></tbody>
            <tfoot>
                <tr>
                    <th>ID</th>
                    <th>Anrede</th>
                    <th>Vorname</th>
                    <th>Nachname</th>
                    <th>Email</th>
                    <th>Telefon</th>
                    <th>Mobil</th>
                    <th>FAX</th>
                    <th>Bearbeiten</th>
                    <th>Löschen</th>
                </tr>
            </tfoot>
        </table>
    </div>



<div id="dialogAnsprechpartner" title="Kunde anlegen / anpassen" hidden="hidden">
    <table style="width: 40%; ">
        <tr>
            <td style="width: 30%">
                <label for="tbID">ID</label>
            </td>
            <td style="width: 70%">
                <input type="text" name="tbID" id="tbIDAnsprechpartner" value="" class="text ui-widget-content ui-corner-all" title="Eindeutige ID des Ansprechpartners!" >
            </td>
        </tr>
        <tr>
            <td style="width: 30%">
                <label for="tbAnrede">Anrede</label>
            </td>
            <td style="width: 70%">
                <input type="text" name="tbAnrede" id="tbAnrede" value="" class="text ui-widget-content ui-corner-all" title="Anrede des Ansprechpartners!" onkeydown="fieldKeyDown(event)">
            </td>
        </tr>
        <tr>
            <td style="width: 30%">
                <label for="tbVorname">Vorname</label>
            </td>
            <td style="width: 70%">
                <input type="text" name="tbVorname" id="tbVorname" value="" class="text ui-widget-content ui-corner-all" title="Vorname des Ansprechpartners!" onkeydown="fieldKeyDown(event)">
            </td>
        </tr>
        <tr>
            <td style="width: 30%">
                <label for="tbNachname">Nachname</label>
            </td>
            <td style="width: 70%">
                <input type="text" name="tbNachname" id="tbNachname" value="" class="text ui-widget-content ui-corner-all" title="Nachname des Ansprechpartners!" onkeydown="fieldKeyDown(event)">
            </td>
            </tr>
        <tr>
            <td style="width: 30%">
                <label for="tbEmail">Email</label>
            </td>
            <td style="width: 70%">
                <input type="text" name="tbEmail" id="tbEmail" value="" class="text ui-widget-content ui-corner-all" title="Email Adresse des Ansprechpartners!" onkeydown="fieldKeyDown(event)">
            </td>
        </tr>
        <tr>
            <td style="width: 30%">
                <label for="tbTelefon">Telefon</label>
            </td>
            <td style="width: 70%">
                <input type="text" name="tbTelefon" id="tbTelefon" value="" class="text ui-widget-content ui-corner-all" title="Telefon des Ansprechpartners!" onkeydown="fieldKeyDown(event)">
            </td>
        </tr>
        <tr>
            <td style="width: 30%">
                <label for="tbMobil">Mobil</label>
            </td>
            <td style="width: 70%">
                <input type="text" name="tbMobil" id="tbMobil" value="" class="text ui-widget-content ui-corner-all" title="Mobil Nummer des Ansprechpartners!" onkeydown="fieldKeyDown(event)">
            </td>
        </tr>
        <tr>
            <td style="width: 30%">
                <label for="tbFax">FAX</label>
            </td>
            <td style="width: 70%">
                <input type="text" name="tbFax" id="tbFax" value="" class="text ui-widget-content ui-corner-all" title="FAX Nummer des Ansprechpartners!" onkeydown="fieldKeyDown(event)">
            </td>
        </tr>
    </table>
    <button id="btAnsprechpartnerSpeichern" class="ui-button ui-widget ui-corner-all" title="Ansprechpartner Speichern!">Speichern</button>
    <button id="btAnsprechpartnerAbbrechen" class="ui-button ui-widget ui-corner-all" title="Eingabe Abbrechen!">Abbrechen</button>

</div>



<script type="text/javascript">

    var moduleId = <%= ModuleId %>;
    var CurrentUserID = <%= UserId %>;
    var land = ["DE", "NL", "A", "PL"];
    var IdKunde = -1;
    var anrede = ["Frau", "Herr","Person"];

    // 
    // Steuerung Tooltip
    //
    $(function () {
        $("#btNeuerKunde").tooltip({ track: true }),                               
        $("#btKundeAbbrechen").tooltip({ track: true }),
        $("#btKundeSpeichern").tooltip({ track: true }),
        $("#btCreateAnsprechpartner").tooltip({ track: true }),
        $("#btAnsprechpartnerAbbrechen").tooltip({ track: true }),
        $("#btAnsprechpartnerSpeichern").tooltip({ track: true }),
        $('.text').tooltip({ track: true })
        
        $("#tbLand").autocomplete({
            source: land,
            minLength: 0
        });
        $("#tbAnrede").autocomplete({
            source: anrede,
            minLength: 0
         });
        loadKundenlist();
    });


   $('#tbLand').focus(function () {
       $("#tbLand").autocomplete("search", "");
       event.preventDefault();
       event.stopPropagation();
   });
   $('#tbLand').click(function () {
       $("#tbLand").autocomplete("search", "");
       event.preventDefault();
       event.stopPropagation();
   });
  
   $('#tbAnrede').focus(function () {
       $("#tbAnrede").autocomplete("search", "");
       event.preventDefault();
       event.stopPropagation();
   });
   $('#tbAnrede').click(function () {
       $("#tbAnrede").autocomplete("search", "");
       event.preventDefault();
       event.stopPropagation();
   });

    //???
    function fieldKeyDown(event) {
        if (event.which == 13) {
            event.preventDefault();
            event.stopPropagation();
        }
    }

    //
    // Liste der Kunden erstellen
    //
    function loadKundenlist() {
        $("#ListeAnsprechpartner").hide();

        $.getJSON("<%= UrlPrefix() %>/DesktopModules/DNN_Beispiel/API/ModuleDNN_Beispiel/Get_Kundenliste",
            function (result) {
                var parsedTaskJSONObject = JSON.parse(result);

                //$('#KundenLste').dataTable().fnDestroy();
                $('.bodyKundenListe').html("");

                $.each(parsedTaskJSONObject, function () {
                    var newBodyList = '';
                    newBodyList = '<tr>' +
                        '<td id="' + this.ID + '">' + this.ID + '</td>' +
                        '<td>' + this.Name1 + '</td>' +
                        '<td>' + this.Name2 + '</td>' +
                        '<td>' + this.Strasse + '</td>' +
                        '<td style="text-align: center">' + this.Land + '</td>' +
                        '<td>' + this.PLZ + '</td>' +
                        '<td>' + this.Ort + '</td>' + 
                        '<td style="text-align: center"><input type="image" class="aspr" title="Ansprechpartner!" src="data:image/gif;base64,R0lGODlhIAAgAMQfAP7RkE+7/mfI//63Zv+rUoLP+/j5+QaT/uuLK7Lp/q7V8f/FezWu/v7oydb1/hV64v/bnfmcPf/jtH+z5eeyfBek/x+Y/Nive8zEqsjd7prf/0mP2IyioOSZUMyfbf///yH5BAEAAB8ALAAAAAAgACAAAAX/4CeOZGmeaKquJUAMAwEYpbG8McASS+M3N5rIMOj9FgsVACCBOCESQFK0gD6hCx2K0LxCCTQD1/tFNQbLdHrQ+Eiy6nXbdJYi7wtYrIi/s09nfTcRVU4LEXxIRRFCJoh6A4g+EhI/BDh6ESkAEZeeDV1PlZ6XCFomBgoUEZ0RoWQQrBEIFwUOJwkOCRgdCGMAEHFMBAgdGLkTJg4KCc0GQMJpWWwOGtYKGSXM1gUaQIJ9BA0aBeUaySQFCQUC5Qo8fnl5MBEKAgIB9xsl7Pj3AY8gCUQQoCADBgHQjZgg4GDBABw6kSKFgMNBBhYsVNhHYgJGCwcrFOggcSICDwIqtKg8cMACxxEONlg4UOFAAAUOLiCQNYvWMgYsHwjNVmPChgcWcDbLQKGDUwoZNCCzIHRCoxMZCmRo5syA12rWpE4gusKArbDWvBog106dVRYfMiggx65cAgMJ/t1rpwAus3L59vbDhzBAAYUqCtgLgBDfQ4MgGQhAnGJCAcYWHl682LICA8ooMmCO7Fml6QdB+8I1itr0SpYHhD4ArSLDUdSwYctWDZdEBtayH2yYwLu3cRUhAAA7" /></td>' +
                        '<td style="text-align: center"><input type="image" class="edit" title="Kunde bearbeiten!" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAA2ZpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMC1jMDYwIDYxLjEzNDc3NywgMjAxMC8wMi8xMi0xNzozMjowMCAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9tbS8iIHhtbG5zOnN0UmVmPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVzb3VyY2VSZWYjIiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtcE1NOk9yaWdpbmFsRG9jdW1lbnRJRD0ieG1wLmRpZDowMTgwMTE3NDA3MjA2ODExOTVGRUYxQjdBODNERUE0NCIgeG1wTU06RG9jdW1lbnRJRD0ieG1wLmRpZDo5NzcyQ0I1MzhCMDUxMUUwQkM3NEVCQUVDRUQ3ODVFMCIgeG1wTU06SW5zdGFuY2VJRD0ieG1wLmlpZDo5NzcyQ0I1MjhCMDUxMUUwQkM3NEVCQUVDRUQ3ODVFMCIgeG1wOkNyZWF0b3JUb29sPSJBZG9iZSBQaG90b3Nob3AgQ1M1IE1hY2ludG9zaCI+IDx4bXBNTTpEZXJpdmVkRnJvbSBzdFJlZjppbnN0YW5jZUlEPSJ4bXAuaWlkOjA0ODAxMTc0MDcyMDY4MTFBQjA4Qjc0NTNDMzdFQTgyIiBzdFJlZjpkb2N1bWVudElEPSJ4bXAuZGlkOjAxODAxMTc0MDcyMDY4MTE5NUZFRjFCN0E4M0RFQTQ0Ii8+IDwvcmRmOkRlc2NyaXB0aW9uPiA8L3JkZjpSREY+IDwveDp4bXBtZXRhPiA8P3hwYWNrZXQgZW5kPSJyIj8+sPDm1QAABQlJREFUeNrEV2tQlFUYfnbZO7vsLizIJcGyZLiojIiC4zCFRpaOtxoSHdAKZXQYx2msJGZq+iPJv2JKmxynJqc0C5360cCYOEjlahmGq4SgXMLlIrg3XPbee75W2tgLu4T1zjzznX33nO95vve85z3n8Orr6/F/WFVVFfcUeH/zCEKCxAvm50/zDhfBQZgg2Fn7elOtJ1wBe5pq/yGAkSsJSYQEgsLnv0Dm8ZKaCCOEYdbOLK62RyLCVwD76qS0tLQDSqVyS7iDnU6nwWQynR4dHf3MarXeIJchiIh5hB2EM4S2YAISiLw0Ly8PUqk0LAFErtZqtWstFssdm81md7vd3QFEHIyNlVXnLUvDtfY7bw8MGN8gX92Dd/B9poCFPWxyZjExMRCLxXPIdhFeonYGuVXsfSSC5dXB5BRl9b5Xn8Lqp9Oxfcdyer/wEPl3TRXAm2bOg1phYSEoagkqlep5iuBmgUDwBLnVN87WvZu5KKu6cs+zEAmj4HK6SbAEO3etYCI+oj4lCCPTwzIiR05OjpoJUKvVm/uvnNyvUopeL3khG6p5L8PtFsHlcHGYEy/Htq25bNhuhPrqkZERGugGj8cLvhQ8HkgkEhAx4uLi2PSl9Fxr3umw9MnLti8D32XAeP9JyOZWwNz9ATxuOzdu3GJjD0NIAV1dXSzLQwpg/yclJXECuHBa+/C79gt5OX2hJlYGp91F6IXL1YDo1FdgvHkEVusEms93se6HQwooKCiIaBpaG4+j4WgNtpXkQKOWErHzb6FjnZRlckhTy3DkrUoMDVtYFWrCTBMvEPnXRF66aSHilBI4bU6/Pndv/4i287fgESa8D1jenLoK/h35xzUoWZuBWIWYI5+KcfMEPm9oR2tz43uarBdfC1SI/Eyv19PcuULmwK+tp/H9qTpsKl4AlVwEh83h18dGeXC6qRPC2Oz29NxVR8kl9pbx0AJ6e3vhcDiCCui6ehZXzx3D+qL5UEeLAobdRsvum3PdWFhYBs38wkd1Oh3bZ4YI5mkF5Ofnhwx7G5GvWzkPKqkwIDnX78oAcldXYEP5AbS0tMi91Vbo2yfiHPil9VucbahHTd0JxEiiuLAHQvPlfiRmrefIfUw4lTNiARe++xSLE10QCqLwWFFNwKS70KZH8qKN2LK7dupwXrDt2M96enq4SsiN8uaBcUyPgc7LWLI0Gb+d2IeMrcegzKnAqPbI5DjtzVHEZ68LRB7yPOBng4ODfknY/sMppGn+KjI/3zag8Z0KVB86AbHDgL6Lxzmf4vFVeHLj3ogPJGElYeMn+5EbJ4bJYsfAPSuWzDXg0oelWLH3K+hu3kKqRhb2l0ecA53tP9EuMggxz8NhTXosEmRRsJiMOFz9HOQpmRGTR1SKL577EilyIbelMhuyODA07uCeRZursGpD5YwqadgC/ritQ6qAB93QfQzfd2LB0mIULX8Gi/PXQBodM+NS7ieAZT7bZs1mMwwGA4xGI4eYpEVo041BnpgBpSwFdz0KXNINonPgDLcdMygUCu5wwsDadDoCn8+fnQg8kr4SisSFnCg6hM7aBcVPAFMsEom4Ew7DwzaBz0XD/R/cyFgGe+jEPHk1ezBBbDcZf1isdGd40DR7r3N+EWA9Rux2+3XatTIfhgh2g/Je4SYCCWDOOx0dHeX0jCdEz9aR3Rt2s5dcH0wAO6HcI1jZkvf6ebMkwONzi57wTvek/SnAAPo/GscMKFQNAAAAAElFTkSuQmCC" /></td>' +
                        '<td style="text-align: center"><input type="image" class="delete" title="Kunde aus der Liste löschen!" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAGYktHRAAAAAAAAPlDu38AAAAJdnBBZwAAACAAAAAgAIf6nJ0AAAAldEVYdGRhdGU6Y3JlYXRlADIwMTAtMTAtMDdUMTU6MjU6NDEtMDU6MDAfOKp9AAAAJXRFWHRkYXRlOm1vZGlmeQAyMDEwLTEwLTA3VDE1OjI1OjQyLTA1OjAwX40IXAAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAgfSURBVFhHzZd5UNTnGcef3QVE5NDEY4zUKsGotZWuSZzYGMdQYzyRiQeX3J5IVIjaYD2i0VTiEY9obKKxTk2jthNN1XaqxoBOoklQPFAEAyJeiCAox7LX79vvu8sasgqD/avMPMMev/f5PPfzrsj/8Z/uhxjpkZ8gfWij/n+wU3/ZQ/rlekgQz+qe9Lz+yEQZUP9xaJZle9i50xM8QqnA0EolCuaR084w3DJ04EXTi/1PZIm88CRO6E/GymDTznE5uJMHVF2HeXtiYc4Iw1gq8WyFEZ65vh7h5jGhRdj6IbDqPTQ8b8z9TmRoa5zwOJ2sH2neHX0JlT8CmgbYzEDZFVg+TCrJe7XNxJaM8Bbxym/vFWUJH34dWzYC2z8BtmwGFi2CacCAgu91uuadaMPDF1O8Jlm+mFqC6lKCrYDpPvDgLnDvFlCUC+uapFtXBrWN+wWfdYuEjoXiXfR02yTrhFFl2Lwe2ErwB+uAzExoK1fClp6OGqOx9IzBEN3Ref6nuujtI97F89omWw/NLcMDwsx1QE0FwTeBO8XAjcvA1QvA2WzY3k28W2z0nfmiiE+jEt0rIu2KO7ebbYsYW4mNhG6kAe9nAitWwL5kCWwZGbDMn4+G6dNRFRJSnqvXz+gr0tblhH5OgATVTvbNxSmGrL4aqKYRd68CNwuAkvNAYQ6Q9y1wJhvIPkCF8dUlff3nMal+jKl/aVf/DFt0+H2sXwOsXQ3QY23pUtgXLoRt3jxY5sxBQ0oK6pOTcd9oxC2d7myKOLrD0V0GutK9wEcOWsd0Br5i4ZQVAqUswB9PA5dO0vMs4LvDwPGDwNF9wJe7YJ8zuaa4h//KkmcCVtljx9di7SpHwWHZO9AIttNj69y5sBDcMG0a6uLiUB0SgiqDAZdEDrBeuruKUlnRcb/IyioP0R4M6QBt73LgMsHnjwM5R4BvDgHHCP73HmD/X4E9nwI7NsM+LdqiJURYkLmS4V7GYvsjtAULYCfYOmsWzASbEhNRFxWFqn79cFuvxz0RbZ/ICsV0RUAVg2+SyOjLIgXXDIJyox/sW9KAkwRn7wcO7wUO7AL+TvCurcA2VvjmtcC6PwHv0dili4C3F0BLS4M9NRVW5tpMsCk2FnUTJuBe794oIfyaiPL+UqzIKMVsWoiqv7vTiKnfihSe1wmuPecD2/JE4CA93rcD+PzP9HoTq5vg9Qx3JsHLFgML/wC8lQ7tzVTYCbYmJcFMsIle140bh8pnn0W+TofzhH8jkj9ZJFmx3NtZRUFVdfAbNOJftPI4jcgPbAPr7PHAzg30+gNgE8Fr3mW4CV78NjA/HZj9JrQZM2BngVmZZzPBJnpdN3o0Knr0wBnCTxB+SCSPBavgwY2sR8bzQyNeE0n6TOTCP3kw52lPmKOHA6uXssiWAO9kMNxvAWmzgZSZ0KYkw06wlWDzxIkwhYejdtgwlAcG4gThB6mDus6+KpLYEtzVki4jeg0SSdgskruTCr73M0AbTyMWzQfmzQFSZwJTp0CLj4c9OhrWSZNgJrg+NBQP+vRBpb8/sgjfxbNbRHIGisQR0Ks5z93H+8NI/Eok9lO95N0M6gIkRgJzZwEzpvJ1ArSYGNgjImAluGHIENQGBaHaxweVhJZTVM630nMOnKjWeO5uhGpNv3XeEln+6+7FSCI8dTowJQGInQwtMgL2sDBYXnoJpm7dUOPlhWoCXfDbfH2DcpoFvVCEZSXtXC3nDmruvecpPxllMgZdRmIEvU4CEmKBqEhoY0bDNmAAzJ06oZ5DpYagpvBbjfAS/i+m5Ilc3CPCshKPVsPPtde9YX4+uBgJk5jreCCGERg5AhqHiS0gAGbmt57KW4IX8ftCCmcLckWu0Ihx7q33iEEduKUKntLHWAf2voF4wuMIHv57oFcwNObXRmVmSmvh+c4I4JwqZJHSvSIRzRmh+w23U1Enz6m2QX3vIDIMGPYK0DMQ8PaCRgWPg3Os4i6ladhdnjeFn+EzPzgH0W0akfCMCLf/T+tY95qn+F3t4plmM/a8h8FGoDuXkrcB4DBqDq7ybqIoI1TBqZy3BD/lNABZIhV/E0l9rskoNmS3k7HWLl5V6OoL+OgBDwH0zcNVtdc6DbBWUK63En6cz31NOSpSyRYdwyg47pne6XoZVuElNzRvgj1bht+hgjKn5yZ68o8dIl+w2htUsV1sknNX2F2eu+DKgByRm3OdncGt7LweBR8W+ewevba14PlNHr5CuSpS9xeRbVxnr/uJjKA3O86K1FOx6n00Bz/G79SAOiKym4OGWXDUguNW0mEwFXEJZZVyX6tKd692Qh2K2VK1G0S2cnO9zHNdldCQwe+LfMylU8ccO3Lt7vlX/Iw3Y+0/IieGOtfxU41sRzeqddzNKBLGsH7NUGr3ecDV5wXO4lHyYLnIJobsd3y+E0UNFyWdGMuXF4ts4darUQuIeUaTnKuzGjvgOPdCuGI1Rt4BV39q/qtwBHL+h30kcoweaCrfFyhqK34pUrVAZDVp1OG4zTSdbA4j6MWgNJENu0Xuf84zB5zhBiOrbRPJDnEOo8BG1mPXscMILuywVSJHeXWyq43GjVg5k1c2nvgtv+e8euyvJGVER5b1C9NFMj+hwRS1irV1jCqXUovwRyLxS5GxGSJHNoqU8RazjA/QAQmgtPQ7UbVVexoaEsN7H8HlSxhN5VBLnj/Mg3s6erIwh/AiQa39WwF36VEGBjAc/YfyBkT4yCeBu0eiMz9QBePfTNjdjXe9V5FQZ9RZpeNno7fpof8C15s36juHaRkAAAAASUVORK5CYII=" /></td>' +
                        '</tr>';
                    $('.bodyKundenListe').append(newBodyList);
                });
                $('.aspr').hide();
                $('.edit').hide();
                $('.delete').hide();

               $(".aspr").tooltip({ track: true });
               $(".edit").tooltip({ track: true });
               $(".delete").tooltip({ track: true });

               // $('#KundenLste').DataTable({"order": [0, "desc"]});
                var table = new DataTable('#KundenLste');
                table.order();
            }
        );
    }

    $('#KundenLste tbody').on('click', 'tr', function () {
        var table = new DataTable('#KundenLste');

        if ($(this).hasClass('selected')) {
            $(this).removeClass('selected');
            $('tr').find('.aspr').hide();
            $('tr').find('.edit').hide();
            $('tr').find('.delete').hide();
        }
        else {
            table.$('tr.selected').removeClass('selected');
            $(this).addClass('selected');
            $('tr').find('.aspr').hide();
            $(this).find(".aspr").show();
            $('tr').find('.edit').hide();
            $(this).find(".edit").show();
            $('tr').find('.delete').hide();
            $(this).find(".delete").show();           
        }
    });

    //
    // Neuen Kunden anlegen
    //
    $("#btNeuerKunde").on("click", function () {
        $("#ListeKunden").hide();
        cleardialogNeuerKunde();

        $("#dialogNeuerKunde").show();
        tbID.value = "-1";
        tbLand.value = "DE";
        event.preventDefault();
        event.stopPropagation();
    });

    $("#btKundeAbbrechen").on("click", function () {
        $.confirm({
            title: 'Eingabe Abbrechen!',
            content: 'Eingabe / Änderung Abbrechen!',
            buttons: {
                Ja: function () {
                    $("#ListeKunden").show();
                    $("#dialogNeuerKunde").hide();
                },
                Nein: function () {
                }
            }
        });
        event.preventDefault();
        event.stopPropagation();
    })

    $('#KundenLste tbody').on('click', '.aspr', function () {

       
        var currentRow = $(this).closest("tr");
        IdKunde = currentRow.find("td:eq(0)").text();

        let name1Kunde = currentRow.find("td:eq(1)").text();
        let name2Kunde = currentRow.find("td:eq(2)").text();

        $("#lTitel").text('Ansprechpartner des Kunden ' + name1Kunde + ' ' + name2Kunde);
      
        loadAnsprechpartnerlist(IdKunde);
        
        $("#ListeKunden").hide();
        $("#ListeAnsprechpartner").show();
        event.preventDefault();
        event.stopPropagation();
    });

    $('#KundenLste tbody').on('click', '.edit', function () {
        var currentRow = $(this).closest("tr");
        cleardialogNeuerKunde();

        $("#lTitel").text('Kunde bearbeiten');

        tbID.value = currentRow.find("td:eq(0)").text();
        tbName1.value = currentRow.find("td:eq(1)").text();
        tbName2.value = currentRow.find("td:eq(2)").text();
        tbStrasse.value = currentRow.find("td:eq(3)").text();
        tbLand.value = currentRow.find("td:eq(4)").text();
        tbPLZ.value = currentRow.find("td:eq(5)").text();
        tbOrt.value = currentRow.find("td:eq(6)").text();
       
        $("#ListeKunden").hide();
        $("#dialogNeuerKunde").show();
        event.preventDefault();
        event.stopPropagation();

    });

    $('#KundenLste tbody').on('click', '.delete', function () {
        var currentRow = $(this).closest("tr");
        var ID = currentRow.find("td:eq(0)").text();
        $.confirm({
            //backgroundDismiss: true,
            title: 'Kunde löschen!',
            content: 'Kunde aus der Liste löschen?',
            buttons: {
                Ja: function () {
                    delete_Kunde(ID);
                    loadKundenlist();
                },
                Nein: function () {
                }
            }
        });
        event.preventDefault();
        event.stopPropagation();
    });

    //
    // Reset Formularfelder Kunde
    //
    function cleardialogNeuerKunde() {
        $("#tbID").prop("disabled", true);

        tbID.value = "";
        tbName1.value = "";
        tbName2.value = "";
        tbStrasse.value = "";
        tbLand.value = "";
        tbPLZ.value = "";
        tbOrt.value = "";
   

        event.preventDefault();
        event.stopPropagation();
    }

    $("#btKundeSpeichern").on("click", function () {
        $.confirm({
            //backgroundDismiss: true,
            title: 'Eingabe Speichern!',
            content: 'Eingabe / Änderung Speichern!',
            buttons: {
                Ja: function () {
                    if (checkInputKunde() == true) {
                        saveNewKunde();
                        $("#ListeKunden").show();
                        $("#dialogNeuerKunde").hide();
                    }
                },
                Nein: function () {
                }
            }
        });
        event.preventDefault();
        event.stopPropagation();
    })

    //
    // Neuen Kunden speichern oder updaten
    //
    function saveNewKunde() {
        var saveKunde = {
            TTD_ModuleID: moduleId,
            TTD_ID: tbID.value,
            TTD_Name1: tbName1.value,
            TTD_Name2: tbName2.value,
            TTD_Strasse: tbStrasse.value,
            TTD_Land: tbLand.value,
            TTD_PLZ: tbPLZ.value,
            TTD_Ort: tbOrt.value,
            TTD_UserID: CurrentUserID
        };
        var sf = $.ServicesFramework(<%:ModuleContext.ModuleId%>);
        $.ajax({
            url: "<%= UrlPrefix() %>/DesktopModules/DNN_Beispiel/API/ModuleDNN_Beispiel/SaveNewKunde",
            type: "POST",
            contentType: "application/json",
            beforeSend: sf.setModuleHeaders,
            data: JSON.stringify(saveKunde),
            async: false,
            success: function (data) {
               loadKundenlist();
                $.alert({
                    backgroundDismiss: true,
                    title: 'Hinweis!',
                    content: "Kundenliste wurde aktualisiert!"
                });
            },
            error: function (data) {
                $.alert({
                    backgroundDismiss: true,
                    title: 'Fehler!',
                    content: "<p style='color: #FF0000;'>" + "Fehler beim Speichern der Daten!" + "</p>",
                });
            }

        });
    }

    function checkInputKunde() {
        if ($('#tbName1').val().length <= 1) {
            $.alert({
                backgroundDismiss: true,
                title: 'Hinweis!',
                content: "Name 1 erforderlich!"
            });
            return false;
        }
        if ($('#tbStrasse').val().length <= 1) {
            $.alert({
                backgroundDismiss: true,
                title: 'Hinweis!',
                content: "Strasse erforderlich!"
            });
            return false;
        }
        if ($('#tbPLZ').val().length <= 1) {
            $.alert({
                backgroundDismiss: true,
                title: 'Hinweis!',
                content: "PLZ erforderlich!"
            });
            return false;
        }
        if ($('#tbOrt').val().length <= 1) {
            $.alert({
                backgroundDismiss: true,
                title: 'Hinweis!',
                content: "Ort erforderlich!"
            });
            return false;
        }
        return true;
    }

    //
    // Kunden löschen
    //
    function delete_Kunde(ID_Kunde) {
        var DeleteKunde = {
            TTD_ModuleID: moduleId,
            TTD_ID: ID_Kunde,
            TTD_UserID: CurrentUserID
        };
        var sf = $.ServicesFramework(<%:ModuleContext.ModuleId%>);
        $.ajax({
            url: "<%= UrlPrefix() %>/DesktopModules/DNN_Beispiel/API/ModuleDNN_Beispiel/DeleteKunde",
            type: "POST",
            contentType: "application/json",
            beforeSend: sf.setModuleHeaders,
            data: JSON.stringify(DeleteKunde),
            async: false,
            success: function (data) {
                loadKundenlist();
                $.alert({
                    backgroundDismiss: true,
                    title: 'Hinweis!',
                    content: "Kunden-Liste wurden aktualisiert!"
                });
            },
            error: function (data) {
                $.alert({
                    backgroundDismiss: true,
                    title: 'Fehler!',
                    content: "<p style='color: #FF0000;'>" + "Fehler beim Löschen der Daten!" + "</p>",
                });
            }
        });
    }

    //
    // Liste der Ansprechpartner erstellen
    //
    function loadAnsprechpartnerlist(ID_Kunde) {
        $.getJSON("<%= UrlPrefix() %>/DesktopModules/DNN_Beispiel/API/ModuleDNN_Beispiel/Get_Ansprechpartner?ID_Kunde=" + ID_Kunde,
            function (result) {
                var parsedTaskJSONObject = JSON.parse(result);

               //$('#AnsprechpartnerListe').dataTable().fnDestroy();
                $('.bodyAnsprechpartnerListe').html("");

                $.each(parsedTaskJSONObject, function () {
                    var newBodyList = '';
                    newBodyList = '<tr>' +
                        '<td>' + this.ID + '</td>' +
                        '<td>' + this.Anrede + '</td>' +
                        '<td>' + this.Vorname + '</td>' +
                        '<td>' + this.Nachname + '</td>' +
                        '<td>' + this.Email + '</td>' +
                        '<td>' + this.Telefon + '</td>' +
                        '<td>' + this.Mobil + '</td>' +
                        '<td>' + this.Fax + '</td>'
                    newBodyList = newBodyList + 
                        '<td style="text-align: center"><input type="image" class="edit" style="text-align: center" title="Ansprechpartner bearbeiten!" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAA2ZpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMC1jMDYwIDYxLjEzNDc3NywgMjAxMC8wMi8xMi0xNzozMjowMCAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9tbS8iIHhtbG5zOnN0UmVmPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVzb3VyY2VSZWYjIiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtcE1NOk9yaWdpbmFsRG9jdW1lbnRJRD0ieG1wLmRpZDowMTgwMTE3NDA3MjA2ODExOTVGRUYxQjdBODNERUE0NCIgeG1wTU06RG9jdW1lbnRJRD0ieG1wLmRpZDo5NzcyQ0I1MzhCMDUxMUUwQkM3NEVCQUVDRUQ3ODVFMCIgeG1wTU06SW5zdGFuY2VJRD0ieG1wLmlpZDo5NzcyQ0I1MjhCMDUxMUUwQkM3NEVCQUVDRUQ3ODVFMCIgeG1wOkNyZWF0b3JUb29sPSJBZG9iZSBQaG90b3Nob3AgQ1M1IE1hY2ludG9zaCI+IDx4bXBNTTpEZXJpdmVkRnJvbSBzdFJlZjppbnN0YW5jZUlEPSJ4bXAuaWlkOjA0ODAxMTc0MDcyMDY4MTFBQjA4Qjc0NTNDMzdFQTgyIiBzdFJlZjpkb2N1bWVudElEPSJ4bXAuZGlkOjAxODAxMTc0MDcyMDY4MTE5NUZFRjFCN0E4M0RFQTQ0Ii8+IDwvcmRmOkRlc2NyaXB0aW9uPiA8L3JkZjpSREY+IDwveDp4bXBtZXRhPiA8P3hwYWNrZXQgZW5kPSJyIj8+sPDm1QAABQlJREFUeNrEV2tQlFUYfnbZO7vsLizIJcGyZLiojIiC4zCFRpaOtxoSHdAKZXQYx2msJGZq+iPJv2JKmxynJqc0C5360cCYOEjlahmGq4SgXMLlIrg3XPbee75W2tgLu4T1zjzznX33nO95vve85z3n8Orr6/F/WFVVFfcUeH/zCEKCxAvm50/zDhfBQZgg2Fn7elOtJ1wBe5pq/yGAkSsJSYQEgsLnv0Dm8ZKaCCOEYdbOLK62RyLCVwD76qS0tLQDSqVyS7iDnU6nwWQynR4dHf3MarXeIJchiIh5hB2EM4S2YAISiLw0Ly8PUqk0LAFErtZqtWstFssdm81md7vd3QFEHIyNlVXnLUvDtfY7bw8MGN8gX92Dd/B9poCFPWxyZjExMRCLxXPIdhFeonYGuVXsfSSC5dXB5BRl9b5Xn8Lqp9Oxfcdyer/wEPl3TRXAm2bOg1phYSEoagkqlep5iuBmgUDwBLnVN87WvZu5KKu6cs+zEAmj4HK6SbAEO3etYCI+oj4lCCPTwzIiR05OjpoJUKvVm/uvnNyvUopeL3khG6p5L8PtFsHlcHGYEy/Htq25bNhuhPrqkZERGugGj8cLvhQ8HkgkEhAx4uLi2PSl9Fxr3umw9MnLti8D32XAeP9JyOZWwNz9ATxuOzdu3GJjD0NIAV1dXSzLQwpg/yclJXECuHBa+/C79gt5OX2hJlYGp91F6IXL1YDo1FdgvHkEVusEms93se6HQwooKCiIaBpaG4+j4WgNtpXkQKOWErHzb6FjnZRlckhTy3DkrUoMDVtYFWrCTBMvEPnXRF66aSHilBI4bU6/Pndv/4i287fgESa8D1jenLoK/h35xzUoWZuBWIWYI5+KcfMEPm9oR2tz43uarBdfC1SI/Eyv19PcuULmwK+tp/H9qTpsKl4AlVwEh83h18dGeXC6qRPC2Oz29NxVR8kl9pbx0AJ6e3vhcDiCCui6ehZXzx3D+qL5UEeLAobdRsvum3PdWFhYBs38wkd1Oh3bZ4YI5mkF5Ofnhwx7G5GvWzkPKqkwIDnX78oAcldXYEP5AbS0tMi91Vbo2yfiHPil9VucbahHTd0JxEiiuLAHQvPlfiRmrefIfUw4lTNiARe++xSLE10QCqLwWFFNwKS70KZH8qKN2LK7dupwXrDt2M96enq4SsiN8uaBcUyPgc7LWLI0Gb+d2IeMrcegzKnAqPbI5DjtzVHEZ68LRB7yPOBng4ODfknY/sMppGn+KjI/3zag8Z0KVB86AbHDgL6Lxzmf4vFVeHLj3ogPJGElYeMn+5EbJ4bJYsfAPSuWzDXg0oelWLH3K+hu3kKqRhb2l0ecA53tP9EuMggxz8NhTXosEmRRsJiMOFz9HOQpmRGTR1SKL577EilyIbelMhuyODA07uCeRZursGpD5YwqadgC/ritQ6qAB93QfQzfd2LB0mIULX8Gi/PXQBodM+NS7ieAZT7bZs1mMwwGA4xGI4eYpEVo041BnpgBpSwFdz0KXNINonPgDLcdMygUCu5wwsDadDoCn8+fnQg8kr4SisSFnCg6hM7aBcVPAFMsEom4Ew7DwzaBz0XD/R/cyFgGe+jEPHk1ezBBbDcZf1isdGd40DR7r3N+EWA9Rux2+3XatTIfhgh2g/Je4SYCCWDOOx0dHeX0jCdEz9aR3Rt2s5dcH0wAO6HcI1jZkvf6ebMkwONzi57wTvek/SnAAPo/GscMKFQNAAAAAElFTkSuQmCC" /></td>' +
                        '<td style="text-align: center"><input type="image" class="delete" style="text-align: center" title="Ansprechpartner aus der Liste löschen!" src="data:image/png;base64,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" /></td>' +
                        '</tr>';
                    $('.bodyAnsprechpartnerListe').append(newBodyList);
                });
                $('.edit').hide();
                $('.delete').hide();

                $(".edit").tooltip({ track: true });
                $(".delete").tooltip({ track: true });

                var table = new DataTable('#AnsprechpartnerListe');
                table.order();
            });
    }


    $('#AnsprechpartnerListe tbody').on('click', 'tr', function () {
        var table = $('#AnsprechpartnerListe').DataTable();

        if ($(this).hasClass('selected')) {
            $(this).removeClass('selected');
            $('tr').find('.edit').hide();
            $('tr').find('.delete').hide();
        }
        else {
            table.$('tr.selected').removeClass('selected');
            $(this).addClass('selected');
            $('tr').find('.edit').hide();
            $(this).find(".edit").show();
            $('tr').find('.delete').hide();
            $(this).find(".delete").show();
        }
    });

    //
    // Neuen Ansprechpartner anlegen
    //
    $("#btCreateAnsprechpartner").on("click", function () {
        clearFormFieldsAnsprechpartner();

        $("#ListeAnsprechpartner").hide();
        $("#dialogAnsprechpartner").show();
        tbIDAnsprechpartner.value = "-1";
        event.preventDefault();
        event.stopPropagation();
    });

    $("#btAnsprechpartnerAbbrechen").on("click", function () {
        $.confirm({
            //backgroundDismiss: true,
            title: 'Eingabe Abbrechen!',
            content: 'Eingabe / Änderung Abbrechen!',
            buttons: {
                Ja: function () {
                    
                    $("#ListeAnsprechpartner").show();
                    $("#dialogAnsprechpartner").hide();
                },
                Nein: function () {
                }
            }
        });
        event.preventDefault();
        event.stopPropagation();
    })

    //
    // Reset Formularfelder Ansprechpartner
    //
    function clearFormFieldsAnsprechpartner() {
        $("#tbIDAnsprechpartner").prop("disabled", true);

        tbIDAnsprechpartner.value = "";
        tbAnrede.value = "";
        tbVorname.value = "";
        tbNachname.value = "";
        tbEmail.value = "";
        tbTelefon.value = "";
        tbMobil.value = "";
        tbFax.value = "";
        event.preventDefault();
        event.stopPropagation();
    }

    $('#AnsprechpartnerListe tbody').on('click', '.edit', function () {
        var currentRow = $(this).closest("tr");
        clearFormFieldsAnsprechpartner();

        tbIDAnsprechpartner.value = currentRow.find("td:eq(0)").text();
        tbAnrede.value = currentRow.find("td:eq(1)").text();
        tbVorname.value = currentRow.find("td:eq(2)").text();
        tbNachname.value = currentRow.find("td:eq(3)").text();
        tbEmail.value = currentRow.find("td:eq(4)").text();
        tbTelefon.value = currentRow.find("td:eq(5)").text();
        tbMobil.value = currentRow.find("td:eq(6)").text();
        tbFax.value = currentRow.find("td:eq(7)").text();

        $("#ListeAnsprechpartner").hide();
        $("#dialogAnsprechpartner").show();
        event.preventDefault();
        event.stopPropagation();

    });

    $('#AnsprechpartnerListe tbody').on('click', '.delete', function () {
        var currentRow = $(this).closest("tr");
        var ID = currentRow.find("td:eq(0)").text();
        $.confirm({
            //backgroundDismiss: true,
            title: 'Ansprechpartner löschen!',
            content: 'Ansprechpartner aus der Liste löschen?',
            buttons: {
                Ja: function () {
                    delete_Ansprechpartner(ID);
                    loadAnsprechpartnerlist(IdKunde);
                },
                Nein: function () {
                }
            }
        });
        event.preventDefault();
        event.stopPropagation();
    });

    function checkFormFieldsAnsprechpartner() {
        if ($('#tbVorname').val().length <= 1) {
            $.alert({
                backgroundDismiss: true,
                title: 'Hinweis!',
                content: "Vorname erforderlich!"
            });
            return false;
        }
        if ($('#tbNachname').val().length <= 1) {
            $.alert({
                backgroundDismiss: true,
                title: 'Hinweis!',
                content: "Nachname erforderlich!"
            });
            return false;
        }
        var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        if ($('#tbEmail').val().length <= 1 || !emailRegex.test($('#tbEmail').val())) {
            $.alert({
                backgroundDismiss: true,
                title: 'Hinweis!',
                content: "Email erforderlich!"
            });
            return false;
        }
        event.preventDefault();
        event.stopPropagation();

        return true;
    }

    $("#btAnsprechpartnerSpeichern").on("click", function () {
        $.confirm({
            //backgroundDismiss: true,
            title: 'Eingabe Speichern!',
            content: 'Eingabe / Änderung Speichern!',
            buttons: {
                Ja: function () {
                    if (checkFormFieldsAnsprechpartner() == true) {
                        saveNewAnsprechpartner();
                        $("#ListeAnsprechpartner").show();
                        $("#dialogAnsprechpartner").hide();
                        loadAnsprechpartnerlist(IdKunde);
                    }
                },
                Nein: function () {
                }
            }
        });
        event.preventDefault();
        event.stopPropagation();
    })

    //
    // Neuer Ansprechpartner speichern oder updaten
    //
    function saveNewAnsprechpartner() {
        var save = {
            TTD_ModuleID: moduleId,
            TTD_ID_Kunde: IdKunde,
            TTD_ID: tbIDAnsprechpartner.value,
            TTD_Anrede: tbAnrede.value,
            TTD_Vorname: tbVorname.value,
            TTD_Nachname: tbNachname.value,
            TTD_Email: tbEmail.value,
            TTD_Telefon: tbTelefon.value,
            TTD_Mobil: tbMobil.value,
            TTD_Fax: tbFax.value,
            TTD_UserID: CurrentUserID
        };
        var sf = $.ServicesFramework(<%:ModuleContext.ModuleId%>);
        $.ajax({
            url: "<%= UrlPrefix() %>/DesktopModules/DNN_Beispiel/API/ModuleDNN_Beispiel/SaveNewAnsprechpartner",
            type: "POST",
            contentType: "application/json",
            beforeSend: sf.setModuleHeaders,
            data: JSON.stringify(save),
            async: false,
            success: function (data) {
                loadAnsprechpartnerlist(IdKunde);
                $.alert({
                    backgroundDismiss: true,
                    title: 'Hinweis!',
                    content: "Ansprechpartneliste wurde aktualisiert!"
                });
            },
            error: function (data) {
                $.alert({
                    backgroundDismiss: true,
                    title: 'Fehler!',
                    content: "<p style='color: #FF0000;'>" + "Fehler beim Speichern der Daten!" + "</p>",
                });
            }
        });
    }

    //
    // Ansprechpartner löschen
    //
    function delete_Ansprechpartner(ID) {
        var deleteAnsprechpartner = {
            TTD_ModuleID: moduleId,
            TTD_ID: ID,
            TTD_UserID: CurrentUserID
        };
        var sf = $.ServicesFramework(<%:ModuleContext.ModuleId%>);
        $.ajax({
            url: "<%= UrlPrefix() %>/DesktopModules/DNN_Beispiel/API/ModuleDNN_Beispiel/DeleteAnsprechpartner",
            type: "POST",
            contentType: "application/json",
            beforeSend: sf.setModuleHeaders,
            data: JSON.stringify(deleteAnsprechpartner),
            async: false,
            success: function (data) {
                loadAnsprechpartnerlist(IdKunde);
                $.alert({
                    backgroundDismiss: true,
                    title: 'Hinweis!',
                    content: "Ansprechpartnerliste wurde aktualisiert!"
                });
            },
            error: function (data) {
                $.alert({
                    backgroundDismiss: true,
                    title: 'Fehler!',
                    content: "<p style='color: #FF0000;'>" + "Fehler beim Löschen der Daten!" + "</p>",
                });
            }

        });
    }

</script>
