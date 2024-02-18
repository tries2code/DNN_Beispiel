using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ZEA.Modul.DNN_Beispiel.Models
{
    public class ClKunde
    {
        public int ModuleID { get; set; }
        public int ID { get; set; }
        public string Name1 { get; set; }
        public string Name2 { get; set; }
        public string Strasse { get; set; }
        public string Land { get; set; }
        public string PLZ { get; set; }
        public string Ort { get; set; }
        public int UserID { get; set; }
    }

    public class ClAnsprechpartner
    {
        public int ModuleID { get; set; }
        public int ID { get; set; }
        public int ID_Kunde { get; set; }
        public string Anrede { get; set; }
        public string Vorname { get; set; }
        public string Nachname { get; set; }
        public string Email { get; set; }
        public string Telefon { get; set; }
        public string Mobil { get; set; }
        public string Fax { get; set; }
        public int UserID { get; set; }
    }
}