using System;

using System.Net;
using System.Net.Http;
using System.Web.Http;

using DotNetNuke.Common.Utilities;
using DotNetNuke.Web.Api;
using DotNetNuke.Security;


namespace ZEA.Modul.DNN_Beispiel.Models
{
    public class ModuleDNN_BeispielController : DnnApiController
    {
        [HttpGet]
        [DnnAuthorize]
        public HttpResponseMessage Get_Kundenliste()
        {
            try
            {
                var list = new DNN_Beispiel_Controller().GetKundenliste().ToJson();
                return Request.CreateResponse(HttpStatusCode.OK, list);
            }
            catch (Exception exc)
            {
                return Request.CreateErrorResponse(HttpStatusCode.InternalServerError, exc);
            }
        }

        public class Cl_SaveKunde
        {
            public int TTD_ModuleID { get; set; }
            public int TTD_ID { get; set; }
            public string TTD_Name1 { get; set; }
            public string TTD_Name2 { get; set; }
            public string TTD_Strasse { get; set; }
            public string TTD_Land { get; set; }
            public string TTD_PLZ { get; set; }
            public string TTD_Ort { get; set; }
            public int TTD_UserID { get; set; }
        }
        [DnnModuleAuthorize(AccessLevel = SecurityAccessLevel.View)]
        [ValidateAntiForgeryToken]
        [HttpPost]
        public HttpResponseMessage SaveNewKunde(Cl_SaveKunde DTO)
        {
            try
            {
                var Save_Kunde = new ClKunde()
                {
                    ModuleID = DTO.TTD_ModuleID,
                    ID = DTO.TTD_ID,
                    Name1 = DTO.TTD_Name1.Replace(";", ","),
                    Name2 = DTO.TTD_Name2.Replace(";", ","),
                    Strasse = DTO.TTD_Strasse.Replace(";", ","),
                    Land = DTO.TTD_Land.Replace(";", ","),
                    PLZ = DTO.TTD_PLZ.Replace(";", ","),
                    Ort = DTO.TTD_Ort.Replace(";", ","),
                    UserID = DTO.TTD_UserID
                };
                DNN_Beispiel_Controller tc = new DNN_Beispiel_Controller();
                tc.SaveKunde(Save_Kunde);

                return Request.CreateResponse(HttpStatusCode.OK);
            }
            catch (Exception exc)
            {
                return Request.CreateErrorResponse(HttpStatusCode.InternalServerError, exc);
            }
        }

        [DnnModuleAuthorize(AccessLevel = SecurityAccessLevel.View)]
        [ValidateAntiForgeryToken]
        [HttpPost]
        public HttpResponseMessage DeleteKunde(Cl_SaveKunde DTO)
        {
            try
            {
                var delete = new ClKunde()
                {
                    ModuleID = DTO.TTD_ModuleID,
                    ID = DTO.TTD_ID,
                    UserID = DTO.TTD_UserID
                };
                DNN_Beispiel_Controller tc = new DNN_Beispiel_Controller();
                tc.DeleteKunde(delete);

                return Request.CreateResponse(HttpStatusCode.OK);
            }
            catch (Exception exc)
            {
                return Request.CreateErrorResponse(HttpStatusCode.InternalServerError, exc);
            }
        }

        [HttpGet]
        [DnnAuthorize]
        public HttpResponseMessage Get_Ansprechpartner(int ID_Kunde)
        {
            try
            {
                var list = new DNN_Beispiel_Controller().GetAnsprechpartner(ID_Kunde).ToJson();
                return Request.CreateResponse(HttpStatusCode.OK, list);
            }
            catch (Exception exc)
            {
                return Request.CreateErrorResponse(HttpStatusCode.InternalServerError, exc);
            }
        }

        public class Cl_SaveAnsprechpartner
        {
            public int TTD_ModuleID { get; set; }
            public int TTD_ID_Kunde { get; set; }
            public int TTD_ID { get; set; }
            public string TTD_Anrede { get; set; }
            public string TTD_Vorname { get; set; }
            public string TTD_Nachname { get; set; }
            public string TTD_Email { get; set; }
            public string TTD_Telefon { get; set; }
            public string TTD_Mobil { get; set; }
            public string TTD_Fax { get; set; }
            public int TTD_UserID { get; set; }
        }
        [DnnModuleAuthorize(AccessLevel = SecurityAccessLevel.View)]
        [ValidateAntiForgeryToken]
        [HttpPost]
        public HttpResponseMessage SaveNewAnsprechpartner(Cl_SaveAnsprechpartner DTO)
        {
            try
            {
                var Save_Ansprechpartner = new ClAnsprechpartner()
                {
                    ModuleID = DTO.TTD_ModuleID,
                    ID_Kunde = DTO.TTD_ID_Kunde,
                    ID = DTO.TTD_ID,
                    Anrede = DTO.TTD_Anrede.Replace(";", ","),
                    Vorname = DTO.TTD_Vorname.Replace(";", ","),
                    Nachname = DTO.TTD_Nachname.Replace(";", ","),
                    Email = DTO.TTD_Email.Replace(";", ","),
                    Telefon = DTO.TTD_Telefon.Replace(";", ","),
                    Mobil = DTO.TTD_Mobil.Replace(";", ","),
                    Fax = DTO.TTD_Fax.Replace(";", ","),
                    UserID = DTO.TTD_UserID
                };
                DNN_Beispiel_Controller tc = new DNN_Beispiel_Controller();
                tc.SaveAnsprechpartner(Save_Ansprechpartner);

                return Request.CreateResponse(HttpStatusCode.OK);
            }
            catch (Exception exc)
            {
                return Request.CreateErrorResponse(HttpStatusCode.InternalServerError, exc);
            }
        }

        [DnnModuleAuthorize(AccessLevel = SecurityAccessLevel.View)]
        [ValidateAntiForgeryToken]
        [HttpPost]
        public HttpResponseMessage DeleteAnsprechpartner(Cl_SaveAnsprechpartner DTO)
        {
            try
            {
                var delete = new ClAnsprechpartner()
                {
                    ModuleID = DTO.TTD_ModuleID,
                    ID = DTO.TTD_ID,
                    UserID = DTO.TTD_UserID
                };
                DNN_Beispiel_Controller tc = new DNN_Beispiel_Controller();
                tc.DeleteAnsprechpartner(delete);

                return Request.CreateResponse(HttpStatusCode.OK);
            }
            catch (Exception exc)
            {
                return Request.CreateErrorResponse(HttpStatusCode.InternalServerError, exc);
            }
        }

    }
}