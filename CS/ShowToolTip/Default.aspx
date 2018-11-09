<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="ShowToolTip._Default" %>

<%@ Register Assembly="DevExpress.XtraCharts.v13.1.Web, Version=13.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.XtraCharts.Web" TagPrefix="dxchartsui" %>
<%@ Register Assembly="DevExpress.XtraCharts.v13.1, Version=13.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.XtraCharts" TagPrefix="cc1" %>
<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <dxchartsui:WebChartControl ID="WebChartControl1" runat="server" CrosshairEnabled="False"
        Height="264px" SideBySideEqualBarWidth="True" ToolTipEnabled="True" Width="375px">
        <diagramserializable>
            <cc1:XYDiagram>
                <axisx visibleinpanesserializable="-1">
                    <range sidemarginsenabled="True" />
                </axisx>
                <axisy visibleinpanesserializable="-1">
                    <range sidemarginsenabled="True" />
                </axisy>
            </cc1:XYDiagram>
        </diagramserializable>
        <fillstyle><OptionsSerializable>
<cc1:SolidFillOptions></cc1:SolidFillOptions>
</OptionsSerializable>
</fillstyle>
        <seriesserializable>
            <cc1:Series Name="Series 1">
                <points>
                    <cc1:SeriesPoint ArgumentSerializable="A" Values="1">
                    </cc1:SeriesPoint>
                    <cc1:SeriesPoint ArgumentSerializable="B" Values="3">
                    </cc1:SeriesPoint>
                    <cc1:SeriesPoint ArgumentSerializable="C" Values="5">
                    </cc1:SeriesPoint>
                </points>                
               
                <legendpointoptionsserializable>
                    <cc1:PointOptions>
                    </cc1:PointOptions>
                </legendpointoptionsserializable>
            </cc1:Series>
            <cc1:Series Name="Series 2">
                <points>
                    <cc1:SeriesPoint ArgumentSerializable="A" Values="2">
                    </cc1:SeriesPoint>
                    <cc1:SeriesPoint ArgumentSerializable="B" Values="4">
                    </cc1:SeriesPoint>
                    <cc1:SeriesPoint ArgumentSerializable="C" Values="6">
                    </cc1:SeriesPoint>
                </points>
                <viewserializable>
                    <cc1:SideBySideBarSeriesView>
                    </cc1:SideBySideBarSeriesView>
                </viewserializable>
                <labelserializable>
                    <cc1:SideBySideBarSeriesLabel LineVisible="True">
                        <fillstyle>
                            <optionsserializable>
                                <cc1:SolidFillOptions />
                            </optionsserializable>
                        </fillstyle>
                        <pointoptionsserializable>
                            <cc1:PointOptions>
                            </cc1:PointOptions>
                        </pointoptionsserializable>
                    </cc1:SideBySideBarSeriesLabel>
                </labelserializable>
                <legendpointoptionsserializable>
                    <cc1:PointOptions>
                    </cc1:PointOptions>
                </legendpointoptionsserializable>
            </cc1:Series>
        </seriesserializable>
        <seriestemplate><ViewSerializable>
<cc1:SideBySideBarSeriesView></cc1:SideBySideBarSeriesView>
</ViewSerializable>
<LabelSerializable>
<cc1:SideBySideBarSeriesLabel LineVisible="True">
<FillStyle><OptionsSerializable>
<cc1:SolidFillOptions></cc1:SolidFillOptions>
</OptionsSerializable>
</FillStyle>
<PointOptionsSerializable>
<cc1:PointOptions></cc1:PointOptions>
</PointOptionsSerializable>
</cc1:SideBySideBarSeriesLabel>
</LabelSerializable>
<LegendPointOptionsSerializable>
<cc1:PointOptions></cc1:PointOptions>
</LegendPointOptionsSerializable>
</seriestemplate>
        <crosshairoptions><CommonLabelPositionSerializable>
<cc1:CrosshairMousePosition></cc1:CrosshairMousePosition>
</CommonLabelPositionSerializable>
</crosshairoptions>
        <tooltipoptions><ToolTipPositionSerializable>
<cc1:ToolTipMousePosition></cc1:ToolTipMousePosition>
</ToolTipPositionSerializable>
</tooltipoptions>
    </dxchartsui:WebChartControl>
    <p>
        &nbsp;</p>
</asp:Content>
