<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register assembly="DevExpress.XtraCharts.v11.2.Web, Version=11.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.XtraCharts.Web" tagprefix="dxchartsui" %>
<%@ Register assembly="DevExpress.XtraCharts.v11.2, Version=11.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.XtraCharts" tagprefix="cc1" %>
<%@ Register assembly="DevExpress.Web.v11.2, Version=11.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPopupControl" tagprefix="dx" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<style type="text/css">
		.style1
		{
			height: 94px;
		}
	</style>
</head>
<body>
	<form id="form1" runat="server">
	<script type="text/javascript">
	_aspxAttachEventToElement(window, "load", f);

	function f() {
		var panel = document.getElementById("panel");
		_aspxAttachEventToDocument("mousemove", OnMouseMove);
	}
	function CalculateRelativeX(x, clickedElement) {
		var left = _aspxGetAbsoluteX(clickedElement);
		return Math.abs(x - left);
	}
	function CalculateRelativeY(y, clickedElement) {
		var top = _aspxGetAbsoluteY(clickedElement);
		return Math.abs(y - top);
	}
	function OnMouseMove(evt) {
		var srcElement = _aspxGetEventSource(evt);
		if (chart.GetMainDOMElement() != srcElement)
			return;
		var x = CalculateRelativeX(_aspxGetEventX(evt), srcElement);
		var y = CalculateRelativeY(_aspxGetEventY(evt), srcElement);
		var hitInfo = chart.HitTest(x, y);

		var text = "";
		for (var i = 0; i < hitInfo.length; i++)
			if (hitInfo[i].additionalObject instanceof ASPxClientSeriesPoint) {
			text += "Argument: " + hitInfo[i].additionalObject.argument;
			if (!hitInfo[i].additionalObject.isEmpty)
				text += "<br>Value: " + hitInfo[i].additionalObject.values[0] + "<br>";
			break;
		}

		if (text.length > 0) {
			Tooltip.ShowAtPos(_aspxGetEventX(evt), _aspxGetEventY(evt));
			Tooltip.SetContentHtml(text);
		} else
			Tooltip.Hide();
	}
	</script>
	<table><tr>
		<td id="panel" class="style1" />
	<dxchartsui:WebChartControl ID="chart" runat="server" Height="200px"
		Width="300px" ClientInstanceName="chart">
<SeriesTemplate><ViewSerializable>
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
</SeriesTemplate>

<FillStyle><OptionsSerializable>
<cc1:SolidFillOptions></cc1:SolidFillOptions>
</OptionsSerializable>
</FillStyle>
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
	</dxchartsui:WebChartControl>
	</tr>
	</table>
	<dx:ASPxPopupControl ID="ASPxPopupControl1" runat="server" 
		 ClientInstanceName="Tooltip" ShowHeader="false" Width="0" Height="0">
		<ContentStyle Wrap="False"></ContentStyle>
	</dx:ASPxPopupControl>
	</form>
</body>
</html>