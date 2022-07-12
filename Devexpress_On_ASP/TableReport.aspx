<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TableReport.aspx.cs" Inherits="Devexpress_On_ASP.TableReport" %>

<%@ Register Assembly="DevExpress.Web.v22.1, Version=22.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:GridViewOnASPConnectionString %>" DeleteCommand="DELETE FROM [zamowienia] WHERE [id] = @original_id AND (([numer_zamowienia] = @original_numer_zamowienia) OR ([numer_zamowienia] IS NULL AND @original_numer_zamowienia IS NULL)) AND (([opis] = @original_opis) OR ([opis] IS NULL AND @original_opis IS NULL)) AND (([nazwa_klienta] = @original_nazwa_klienta) OR ([nazwa_klienta] IS NULL AND @original_nazwa_klienta IS NULL))" InsertCommand="INSERT INTO [zamowienia] ([numer_zamowienia], [opis], [nazwa_klienta]) VALUES (@numer_zamowienia, @opis, @nazwa_klienta)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [zamowienia]" UpdateCommand="UPDATE [zamowienia] SET [numer_zamowienia] = @numer_zamowienia, [opis] = @opis, [nazwa_klienta] = @nazwa_klienta WHERE [id] = @original_id AND (([numer_zamowienia] = @original_numer_zamowienia) OR ([numer_zamowienia] IS NULL AND @original_numer_zamowienia IS NULL)) AND (([opis] = @original_opis) OR ([opis] IS NULL AND @original_opis IS NULL)) AND (([nazwa_klienta] = @original_nazwa_klienta) OR ([nazwa_klienta] IS NULL AND @original_nazwa_klienta IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_id" Type="Int32" />
            <asp:Parameter Name="original_numer_zamowienia" Type="Int32" />
            <asp:Parameter Name="original_opis" Type="String" />
            <asp:Parameter Name="original_nazwa_klienta" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="numer_zamowienia" Type="Int32" />
            <asp:Parameter Name="opis" Type="String" />
            <asp:Parameter Name="nazwa_klienta" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="numer_zamowienia" Type="Int32" />
            <asp:Parameter Name="opis" Type="String" />
            <asp:Parameter Name="nazwa_klienta" Type="String" />
            <asp:Parameter Name="original_id" Type="Int32" />
            <asp:Parameter Name="original_numer_zamowienia" Type="Int32" />
            <asp:Parameter Name="original_opis" Type="String" />
            <asp:Parameter Name="original_nazwa_klienta" Type="String" />
        </UpdateParameters>
</asp:SqlDataSource>
    <dx:aspxgridview runat="server" Theme="PlasticBlue" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" KeyFieldName="id" Font-Size="16px">

        <SettingsEditing Mode="Batch" NewItemRowPosition="Bottom">
        </SettingsEditing>
        <SettingsDataSecurity AllowDelete="False" />
<SettingsPopup>
<FilterControl AutoUpdatePosition="False"></FilterControl>
</SettingsPopup>

        <Columns>
            <dx:GridViewCommandColumn ShowNewButtonInHeader="True" VisibleIndex="0">
            </dx:GridViewCommandColumn>
            <dx:GridViewDataTextColumn FieldName="id" ReadOnly="True" VisibleIndex="1">
                <EditFormSettings Visible="False" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="numer_zamowienia" VisibleIndex="2">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="opis" VisibleIndex="3">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="nazwa_klienta" VisibleIndex="4">
            </dx:GridViewDataTextColumn>
        </Columns>

    </dx:aspxgridview>
    </asp:Content>
