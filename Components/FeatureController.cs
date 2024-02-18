/*
' Copyright (c) 2024 Zouhdi El Abouti
'  All rights reserved.
' 
' THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED
' TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
' THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF
' CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
' DEALINGS IN THE SOFTWARE.
' 
*/

//using System.Xml;
using DotNetNuke.Entities.Modules;
using DotNetNuke.Services.Search;
using System.Collections.Generic;

namespace ZEA.Modul.DNN_Beispiel.Components
{
    /// -----------------------------------------------------------------------------
    /// <summary>
    /// The Controller class for DNN_Beispiel
    /// 
    /// The FeatureController class is defined as the BusinessController in the manifest file (.dnn)
    /// DotNetNuke will poll this class to find out which Interfaces the class implements. 
    /// 
    /// The IPortable interface is used to import/export content from a DNN module
    /// 
    /// The ISearchable interface is used by DNN to index the content of a module
    /// 
    /// The IUpgradeable interface allows module developers to execute code during the upgrade 
    /// process for a module.
    /// 
    /// Below you will find stubbed out implementations of each, uncomment and populate with your own data
    /// </summary>
    /// -----------------------------------------------------------------------------

    //uncomment the interfaces to add the support.
    public class FeatureController //: IPortable, ISearchable, IUpgradeable
    {


        #region Optional Interfaces

        /// -----------------------------------------------------------------------------
        /// <summary>
        /// ExportModule implements the IPortable ExportModule Interface
        /// </summary>
        /// <param name="ModuleID">The Id of the module to be exported</param>
        /// -----------------------------------------------------------------------------
        //public string ExportModule(int ModuleID)
        //{
        //string strXML = "";

        //List<DNN_BeispielInfo> colDNN_Beispiels = GetDNN_Beispiels(ModuleID);
        //if (colDNN_Beispiels.Count != 0)
        //{
        //    strXML += "<DNN_Beispiels>";

        //    foreach (DNN_BeispielInfo objDNN_Beispiel in colDNN_Beispiels)
        //    {
        //        strXML += "<DNN_Beispiel>";
        //        strXML += "<content>" + DotNetNuke.Common.Utilities.XmlUtils.XMLEncode(objDNN_Beispiel.Content) + "</content>";
        //        strXML += "</DNN_Beispiel>";
        //    }
        //    strXML += "</DNN_Beispiels>";
        //}

        //return strXML;

        //	throw new System.NotImplementedException("The method or operation is not implemented.");
        //}

        /// -----------------------------------------------------------------------------
        /// <summary>
        /// ImportModule implements the IPortable ImportModule Interface
        /// </summary>
        /// <param name="ModuleID">The Id of the module to be imported</param>
        /// <param name="Content">The content to be imported</param>
        /// <param name="Version">The version of the module to be imported</param>
        /// <param name="UserId">The Id of the user performing the import</param>
        /// -----------------------------------------------------------------------------
        //public void ImportModule(int ModuleID, string Content, string Version, int UserID)
        //{
        //XmlNode xmlDNN_Beispiels = DotNetNuke.Common.Globals.GetContent(Content, "DNN_Beispiels");
        //foreach (XmlNode xmlDNN_Beispiel in xmlDNN_Beispiels.SelectNodes("DNN_Beispiel"))
        //{
        //    DNN_BeispielInfo objDNN_Beispiel = new DNN_BeispielInfo();
        //    objDNN_Beispiel.ModuleId = ModuleID;
        //    objDNN_Beispiel.Content = xmlDNN_Beispiel.SelectSingleNode("content").InnerText;
        //    objDNN_Beispiel.CreatedByUser = UserID;
        //    AddDNN_Beispiel(objDNN_Beispiel);
        //}

        //	throw new System.NotImplementedException("The method or operation is not implemented.");
        //}

        /// -----------------------------------------------------------------------------
        /// <summary>
        /// GetSearchItems implements the ISearchable Interface
        /// </summary>
        /// <param name="ModInfo">The ModuleInfo for the module to be Indexed</param>
        /// -----------------------------------------------------------------------------
        //public DotNetNuke.Services.Search.SearchItemInfoCollection GetSearchItems(DotNetNuke.Entities.Modules.ModuleInfo ModInfo)
        //{
        //SearchItemInfoCollection SearchItemCollection = new SearchItemInfoCollection();

        //List<DNN_BeispielInfo> colDNN_Beispiels = GetDNN_Beispiels(ModInfo.ModuleID);

        //foreach (DNN_BeispielInfo objDNN_Beispiel in colDNN_Beispiels)
        //{
        //    SearchItemInfo SearchItem = new SearchItemInfo(ModInfo.ModuleTitle, objDNN_Beispiel.Content, objDNN_Beispiel.CreatedByUser, objDNN_Beispiel.CreatedDate, ModInfo.ModuleID, objDNN_Beispiel.ItemId.ToString(), objDNN_Beispiel.Content, "ItemId=" + objDNN_Beispiel.ItemId.ToString());
        //    SearchItemCollection.Add(SearchItem);
        //}

        //return SearchItemCollection;

        //	throw new System.NotImplementedException("The method or operation is not implemented.");
        //}

        /// -----------------------------------------------------------------------------
        /// <summary>
        /// UpgradeModule implements the IUpgradeable Interface
        /// </summary>
        /// <param name="Version">The current version of the module</param>
        /// -----------------------------------------------------------------------------
        //public string UpgradeModule(string Version)
        //{
        //	throw new System.NotImplementedException("The method or operation is not implemented.");
        //}

        #endregion

    }

}
