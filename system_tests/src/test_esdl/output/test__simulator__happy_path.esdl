<?xml version='1.0' encoding='UTF-8'?>
<esdl:EnergySystem xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:esdl="http://www.tno.nl/esdl" name="Untitled EnergySystem with return network_simulator" esdlVersion="v2207" description="" version="1" id="831618bd-b4ec-4091-a4a2-38730bf1d345">
  <energySystemInformation xsi:type="esdl:EnergySystemInformation" id="c615f17e-c077-48c4-8a78-6ae05f8a908f">
    <carriers xsi:type="esdl:Carriers" id="c27258b1-f4f6-4e09-a77a-ce466dbd82d2">
      <carrier xsi:type="esdl:HeatCommodity" id="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" name="HeatSupply" supplyTemperature="80.0"/>
      <carrier xsi:type="esdl:HeatCommodity" id="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" name="HeatReturn" returnTemperature="40.0"/>
    </carriers>
    <quantityAndUnits xsi:type="esdl:QuantityAndUnits" id="f61a1799-bf04-416a-b15e-93097722ada7">
      <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" description="Power in MW" multiplier="MEGA" physicalQuantity="POWER" unit="WATT" id="e9405fc8-5e57-4df5-8584-4babee7cdf1b"/>
    </quantityAndUnits>
  </energySystemInformation>
  <instance xsi:type="esdl:Instance" id="a357cbbe-f277-42b1-8456-cbbadc8ceb2e" name="Untitled Instance">
    <area xsi:type="esdl:Area" id="e4002c22-abd5-43f6-81a8-e6b5f960bfa5" name="Untitled Area">
      <asset xsi:type="esdl:HeatingDemand" name="HeatingDemand_48f3" id="48f3e425-2143-4dcd-9101-c7e22559e82b">
        <geometry xsi:type="esdl:Point" lat="52.158769628869045" lon="4.63726043701172" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" carrier="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" connectedTo="3f2dc09a-0cee-44bd-a337-cea55461a334" name="In" id="af0904f7-ba1f-4e79-9040-71e08041601b">
          <profile xsi:type="esdl:InfluxDBProfile" id="cd34102b-2bdf-47d2-9e09-9ef3d8df0c4a" field="mass_flow" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" port="8096" host="omotes_influxdb" database="831618bd-b4ec-4091-a4a2-38730bf1d345" endDate="2019-01-01T02:00:00.000000" startDate="2019-01-01T00:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" multiplier="KILO" unit="GRAM" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="c6ddb52b-a1af-41d8-aa81-c5f4225958b5" field="pressure" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" port="8096" host="omotes_influxdb" database="831618bd-b4ec-4091-a4a2-38730bf1d345" endDate="2019-01-01T02:00:00.000000" startDate="2019-01-01T00:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PASCAL" physicalQuantity="PRESSURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="ff2fd5cd-f5bc-418f-a1ff-a2afcabc1c4f" field="temperature" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" port="8096" host="omotes_influxdb" database="831618bd-b4ec-4091-a4a2-38730bf1d345" endDate="2019-01-01T02:00:00.000000" startDate="2019-01-01T00:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="KELVIN" physicalQuantity="TEMPERATURE"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" carrier="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" connectedTo="422cb921-23d2-4410-9072-aaa5796a0620" name="Out" id="e890f65f-80e7-46fa-8c52-5385324bf686">
          <profile xsi:type="esdl:InfluxDBProfile" field="demand1_MW" id="62d7e2a4-9919-4fa2-90f4-29e8f188919f" port="443" measurement="WarmingUp default profiles" database="energy_profiles" host="profiles.warmingup.info" endDate="2019-12-31T22:00:00.000000+0000" startDate="2019-01-01T00:00:00.000000+0000" filters="">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="e9405fc8-5e57-4df5-8584-4babee7cdf1b"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="bc98611f-29ba-4792-8a6b-8a07038f3f23" field="mass_flow" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" port="8096" host="omotes_influxdb" database="831618bd-b4ec-4091-a4a2-38730bf1d345" endDate="2019-01-01T02:00:00.000000" startDate="2019-01-01T00:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" multiplier="KILO" unit="GRAM" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="3d602616-f3ad-410e-b2e4-b1b91f8795c0" field="pressure" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" port="8096" host="omotes_influxdb" database="831618bd-b4ec-4091-a4a2-38730bf1d345" endDate="2019-01-01T02:00:00.000000" startDate="2019-01-01T00:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PASCAL" physicalQuantity="PRESSURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="1b414a4f-fa1c-4ec5-9d8c-fb61e1c27c66" field="temperature" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" port="8096" host="omotes_influxdb" database="831618bd-b4ec-4091-a4a2-38730bf1d345" endDate="2019-01-01T02:00:00.000000" startDate="2019-01-01T00:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="KELVIN" physicalQuantity="TEMPERATURE"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:GenericProducer" name="GenericProducer_cf3d" id="cf3d4b5e-437f-4c1b-a7f9-7fd7e8a269b4" power="5000000.0">
        <geometry xsi:type="esdl:Point" lat="52.148869383489114" lon="4.558639526367188" CRS="WGS84"/>
        <port xsi:type="esdl:OutPort" carrier="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" connectedTo="a9793a5e-df4f-4795-8079-015dfaf57f82" name="Out" id="2d818e3d-8a39-4cec-afa0-f6dbbfd50696">
          <profile xsi:type="esdl:InfluxDBProfile" id="fb79efb1-4dea-4dff-a787-e02895249439" field="mass_flow" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" port="8096" host="omotes_influxdb" database="831618bd-b4ec-4091-a4a2-38730bf1d345" endDate="2019-01-01T02:00:00.000000" startDate="2019-01-01T00:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" multiplier="KILO" unit="GRAM" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="c8dbffc4-ff5a-439d-93e4-3f3d44cb0045" field="pressure" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" port="8096" host="omotes_influxdb" database="831618bd-b4ec-4091-a4a2-38730bf1d345" endDate="2019-01-01T02:00:00.000000" startDate="2019-01-01T00:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PASCAL" physicalQuantity="PRESSURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="08d29150-064d-41ae-a94d-1779ddb9a4b0" field="temperature" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" port="8096" host="omotes_influxdb" database="831618bd-b4ec-4091-a4a2-38730bf1d345" endDate="2019-01-01T02:00:00.000000" startDate="2019-01-01T00:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="KELVIN" physicalQuantity="TEMPERATURE"/>
          </profile>
        </port>
        <port xsi:type="esdl:InPort" carrier="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" connectedTo="935fb733-9f76-4a8d-8899-1ad8689a4b12" name="In" id="9c258b9d-3149-4720-8931-f4bef1080ec1">
          <profile xsi:type="esdl:InfluxDBProfile" id="ddc7b66f-b3e2-4392-970e-17313b129e6f" field="mass_flow" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" port="8096" host="omotes_influxdb" database="831618bd-b4ec-4091-a4a2-38730bf1d345" endDate="2019-01-01T02:00:00.000000" startDate="2019-01-01T00:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" multiplier="KILO" unit="GRAM" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="0dcf1916-d2b1-44a6-8dc8-a51f661224b1" field="pressure" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" port="8096" host="omotes_influxdb" database="831618bd-b4ec-4091-a4a2-38730bf1d345" endDate="2019-01-01T02:00:00.000000" startDate="2019-01-01T00:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PASCAL" physicalQuantity="PRESSURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="6e068028-3665-4d3d-b77a-9d6f4082c7f4" field="temperature" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" port="8096" host="omotes_influxdb" database="831618bd-b4ec-4091-a4a2-38730bf1d345" endDate="2019-01-01T02:00:00.000000" startDate="2019-01-01T00:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="KELVIN" physicalQuantity="TEMPERATURE"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Pipe" innerDiameter="0.5" name="Pipe1" id="Pipe1" length="6267.0" related="Pipe1_ret">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.148869383489114" lon="4.558639526367188"/>
          <point xsi:type="esdl:Point" lat="52.16740421514521" lon="4.594688415527345"/>
          <point xsi:type="esdl:Point" lat="52.158769628869045" lon="4.63726043701172"/>
        </geometry>
        <port xsi:type="esdl:InPort" carrier="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" connectedTo="2d818e3d-8a39-4cec-afa0-f6dbbfd50696" name="In" id="a9793a5e-df4f-4795-8079-015dfaf57f82">
          <profile xsi:type="esdl:InfluxDBProfile" id="52c216ae-558b-474f-bd38-af3b1419d891" field="mass_flow" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" port="8096" host="omotes_influxdb" database="831618bd-b4ec-4091-a4a2-38730bf1d345" endDate="2019-01-01T02:00:00.000000" startDate="2019-01-01T00:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" multiplier="KILO" unit="GRAM" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="2ff592dd-25c4-4271-bcfa-076c1bdb8a01" field="pressure" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" port="8096" host="omotes_influxdb" database="831618bd-b4ec-4091-a4a2-38730bf1d345" endDate="2019-01-01T02:00:00.000000" startDate="2019-01-01T00:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PASCAL" physicalQuantity="PRESSURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="737bac8c-2dc7-48fc-b96d-c76459a8d27d" field="temperature" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" port="8096" host="omotes_influxdb" database="831618bd-b4ec-4091-a4a2-38730bf1d345" endDate="2019-01-01T02:00:00.000000" startDate="2019-01-01T00:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="KELVIN" physicalQuantity="TEMPERATURE"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" carrier="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" connectedTo="af0904f7-ba1f-4e79-9040-71e08041601b" name="Out" id="3f2dc09a-0cee-44bd-a337-cea55461a334">
          <profile xsi:type="esdl:InfluxDBProfile" id="f8672789-d7da-41dc-9318-177b6066d4b5" field="mass_flow" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" port="8096" host="omotes_influxdb" database="831618bd-b4ec-4091-a4a2-38730bf1d345" endDate="2019-01-01T02:00:00.000000" startDate="2019-01-01T00:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" multiplier="KILO" unit="GRAM" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="0d0910b0-7255-4374-b86c-c30b43d7e83d" field="pressure" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" port="8096" host="omotes_influxdb" database="831618bd-b4ec-4091-a4a2-38730bf1d345" endDate="2019-01-01T02:00:00.000000" startDate="2019-01-01T00:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PASCAL" physicalQuantity="PRESSURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="8077fe3b-f742-4842-92b4-b48cca2c0c5b" field="temperature" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" port="8096" host="omotes_influxdb" database="831618bd-b4ec-4091-a4a2-38730bf1d345" endDate="2019-01-01T02:00:00.000000" startDate="2019-01-01T00:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="KELVIN" physicalQuantity="TEMPERATURE"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Pipe" innerDiameter="0.5" name="Pipe1_ret" id="Pipe1_ret" length="6267.0" related="Pipe1">
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" lat="52.15885962895904" lon="4.636858896813017" CRS="WGS84"/>
          <point xsi:type="esdl:Point" lat="52.16749421523521" lon="4.5942969754153795" CRS="WGS84"/>
          <point xsi:type="esdl:Point" lat="52.14895938357911" lon="4.558225705568235" CRS="WGS84"/>
        </geometry>
        <port xsi:type="esdl:InPort" carrier="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" connectedTo="e890f65f-80e7-46fa-8c52-5385324bf686" name="In_ret" id="422cb921-23d2-4410-9072-aaa5796a0620">
          <profile xsi:type="esdl:InfluxDBProfile" id="66eb02c1-e268-4850-a538-b88f0eb974c3" field="mass_flow" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" port="8096" host="omotes_influxdb" database="831618bd-b4ec-4091-a4a2-38730bf1d345" endDate="2019-01-01T02:00:00.000000" startDate="2019-01-01T00:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" multiplier="KILO" unit="GRAM" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="24594930-14a6-4686-bf1e-b0fc76286386" field="pressure" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" port="8096" host="omotes_influxdb" database="831618bd-b4ec-4091-a4a2-38730bf1d345" endDate="2019-01-01T02:00:00.000000" startDate="2019-01-01T00:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PASCAL" physicalQuantity="PRESSURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="ffee0f6a-fab8-4b5f-9cdf-c936b0b0e768" field="temperature" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" port="8096" host="omotes_influxdb" database="831618bd-b4ec-4091-a4a2-38730bf1d345" endDate="2019-01-01T02:00:00.000000" startDate="2019-01-01T00:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="KELVIN" physicalQuantity="TEMPERATURE"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" carrier="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" connectedTo="9c258b9d-3149-4720-8931-f4bef1080ec1" name="Out_ret" id="935fb733-9f76-4a8d-8899-1ad8689a4b12">
          <profile xsi:type="esdl:InfluxDBProfile" id="8f7bd24b-dcf8-4025-97a1-156b58aebd73" field="mass_flow" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" port="8096" host="omotes_influxdb" database="831618bd-b4ec-4091-a4a2-38730bf1d345" endDate="2019-01-01T02:00:00.000000" startDate="2019-01-01T00:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" multiplier="KILO" unit="GRAM" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="f24e6f38-89a9-4067-95ec-e07a4095021a" field="pressure" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" port="8096" host="omotes_influxdb" database="831618bd-b4ec-4091-a4a2-38730bf1d345" endDate="2019-01-01T02:00:00.000000" startDate="2019-01-01T00:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PASCAL" physicalQuantity="PRESSURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="637f4a5c-392d-4966-be17-2c212ae29171" field="temperature" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" port="8096" host="omotes_influxdb" database="831618bd-b4ec-4091-a4a2-38730bf1d345" endDate="2019-01-01T02:00:00.000000" startDate="2019-01-01T00:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="KELVIN" physicalQuantity="TEMPERATURE"/>
          </profile>
        </port>
      </asset>
    </area>
  </instance>
</esdl:EnergySystem>
