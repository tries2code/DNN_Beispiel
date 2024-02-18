using DotNetNuke.Common.Utilities;
using System.Collections.Generic;
using DotNetNuke.Data;


namespace ZEA.Modul.DNN_Beispiel.Models
{
    public class DNN_Beispiel_Controller
    {

        public IList<ClKunde> GetKundenliste()
        {
            var Result = CBO.FillCollection<ClKunde>(DataProvider.Instance().ExecuteReader("TunnelSP 'DNN_Beispiel_Kunden_Liste'"));

            return Result;
        }

        public void SaveKunde(ClKunde task)
        {
            DataProvider.Instance().ExecuteSQL("TunnelSP 'DNN_Beispiel_Kunden_Save ["
                                            + @""+task.ModuleID
                                            + @"],[" + task.ID
                                            + @"],[" + task.Name1.ToString().Replace("'", "''")
                                            + @"],[" + task.Name2.ToString().Replace("'", "''")
                                            + @"],[" + task.Strasse.ToString().Replace("'", "''")
                                            + @"],[" + task.Land.ToString().Replace("'", "''")
                                            + @"],[" + task.PLZ.ToString().Replace("'", "''")
                                            + @"],[" + task.Ort.ToString().Replace("'", "''")
                                            + @"],[" + task.UserID + "]'"
                                            );
        }

        public void DeleteKunde(ClKunde task)
        {
            DataProvider.Instance().ExecuteSQL("TunnelSP 'DNN_Beispiel_Kunden_Delete ["
                                            + @""+task.ModuleID
                                            + @"],[" + task.ID
                                            + @"],[" + task.UserID + "]'"
                                            );
        }



        public IList<ClAnsprechpartner> GetAnsprechpartner(int ID_Kunde)
        {
            var Result = CBO.FillCollection<ClAnsprechpartner>(DataProvider.Instance().ExecuteReader("TunnelSP 'DNN_Beispiel_Kunden_Get_Ansprechpartner [" + ID_Kunde.ToString() + "]'"));

            return Result;
        }


        public void SaveAnsprechpartner(ClAnsprechpartner task)
        {
            string strSQL = @"TunnelSP 'DNN_Beispiel_KundenAnsprechpartner_Save ["
                                            + @""+task.ModuleID.ToString()
                                            + @"],[" + task.ID_Kunde.ToString()
                                            + @"],[" + task.ID.ToString()
                                            + @"],[" + task.Anrede.Replace("'", "''")
                                            + @"],[" + task.Vorname.Replace("'", "''")
                                            + @"],[" + task.Nachname.Replace("'", "''")
                                            + @"],[" + task.Email.Replace("'", "''")
                                            + @"],[" + task.Telefon.Replace("'", "''")
                                            + @"],[" + task.Mobil.Replace("'", "''")
                                            + @"],[" + task.Fax.Replace("'", "''")
                                            + @"],[" + task.UserID + "]'";

            DataProvider.Instance().ExecuteSQL(strSQL);
        }

        // Ansprechpartner löschen
        public void DeleteAnsprechpartner(ClAnsprechpartner task)
        {
            DataProvider.Instance().ExecuteSQL("TunnelSP 'DNN_Beispiel_KundenAnsprechpartner_Delete ["
                                           + @""+ task.ModuleID
                                           + @"],[" + task.ID
                                           + @"],[" + task.UserID + "]'"
                                            );
        }
    }
}
