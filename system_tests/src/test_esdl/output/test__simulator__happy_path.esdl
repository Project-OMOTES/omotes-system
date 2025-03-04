<?xml version='1.0' encoding='UTF-8'?>
<esdl:EnergySystem xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:esdl="http://www.tno.nl/esdl" id="28b469cb-f292-48c8-bfb1-439503576f57" name="Untitled EnergySystem with return network_simulator" esdlVersion="v2207" version="1" description="">
  <energySystemInformation xsi:type="esdl:EnergySystemInformation" id="c615f17e-c077-48c4-8a78-6ae05f8a908f">
    <carriers xsi:type="esdl:Carriers" id="c27258b1-f4f6-4e09-a77a-ce466dbd82d2">
      <carrier xsi:type="esdl:HeatCommodity" supplyTemperature="80.0" id="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" name="HeatSupply"/>
      <carrier xsi:type="esdl:HeatCommodity" id="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" returnTemperature="40.0" name="HeatReturn"/>
    </carriers>
    <quantityAndUnits xsi:type="esdl:QuantityAndUnits" id="f61a1799-bf04-416a-b15e-93097722ada7">
      <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="e9405fc8-5e57-4df5-8584-4babee7cdf1b" unit="WATT" physicalQuantity="POWER" multiplier="MEGA" description="Power in MW"/>
    </quantityAndUnits>
  </energySystemInformation>
  <instance xsi:type="esdl:Instance" name="Untitled Instance" id="a357cbbe-f277-42b1-8456-cbbadc8ceb2e">
    <area xsi:type="esdl:Area" id="e4002c22-abd5-43f6-81a8-e6b5f960bfa5" name="Untitled Area">
      <asset xsi:type="esdl:HeatingDemand" id="48f3e425-2143-4dcd-9101-c7e22559e82b" name="HeatingDemand_48f3">
        <geometry xsi:type="esdl:Point" lat="52.158769628869045" lon="4.63726043701172" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" connectedTo="3f2dc09a-0cee-44bd-a337-cea55461a334" name="In" id="af0904f7-ba1f-4e79-9040-71e08041601b" carrier="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a">
          <profile xsi:type="esdl:InfluxDBProfile" id="0b5401a0-9c36-4e7c-9404-6f1ea0f7e94b" field="mass_flow" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="28b469cb-f292-48c8-bfb1-439503576f57" filters="&quot;assetId&quot;='48f3e425-2143-4dcd-9101-c7e22559e82b'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="GRAM" multiplier="KILO"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="2a6c4cca-d0af-492c-9b6a-301bbbf1dd0c" field="pressure" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="28b469cb-f292-48c8-bfb1-439503576f57" filters="&quot;assetId&quot;='48f3e425-2143-4dcd-9101-c7e22559e82b'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="97fef90f-99db-4bb0-a6ca-c56e1b47ba1b" field="temperature" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="28b469cb-f292-48c8-bfb1-439503576f57" filters="&quot;assetId&quot;='48f3e425-2143-4dcd-9101-c7e22559e82b'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="401717d6-8736-4056-84db-bf2f4232166b" field="volume_flow" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="28b469cb-f292-48c8-bfb1-439503576f57" filters="&quot;assetId&quot;='48f3e425-2143-4dcd-9101-c7e22559e82b'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="CUBIC_METRE"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" name="Out" connectedTo="422cb921-23d2-4410-9072-aaa5796a0620" id="e890f65f-80e7-46fa-8c52-5385324bf686" carrier="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret">
          <profile xsi:type="esdl:InfluxDBProfile" id="62d7e2a4-9919-4fa2-90f4-29e8f188919f" field="demand1_MW" endDate="2019-12-31T22:00:00.000000+0000" measurement="WarmingUp default profiles" port="443" startDate="2019-01-01T00:00:00.000000+0000" database="energy_profiles" host="profiles.warmingup.info" filters="">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="e9405fc8-5e57-4df5-8584-4babee7cdf1b"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="25f0d4db-6bbd-4d3e-91e7-3a293ad3ce25" field="mass_flow" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="28b469cb-f292-48c8-bfb1-439503576f57" filters="&quot;assetId&quot;='48f3e425-2143-4dcd-9101-c7e22559e82b'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="GRAM" multiplier="KILO"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="e5c3154a-e8be-487c-bb83-bb9981cd5dc2" field="pressure" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="28b469cb-f292-48c8-bfb1-439503576f57" filters="&quot;assetId&quot;='48f3e425-2143-4dcd-9101-c7e22559e82b'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="d9955cc5-54f8-4c5b-aaee-2b8552b17bfb" field="temperature" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="28b469cb-f292-48c8-bfb1-439503576f57" filters="&quot;assetId&quot;='48f3e425-2143-4dcd-9101-c7e22559e82b'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="07391f36-6cdf-421d-95d2-2e4bc6a8fbee" field="volume_flow" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="28b469cb-f292-48c8-bfb1-439503576f57" filters="&quot;assetId&quot;='48f3e425-2143-4dcd-9101-c7e22559e82b'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="CUBIC_METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="dc666bf6-ee3d-4e5e-9027-532abc9a220f" field="heat_demand_set_point" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="28b469cb-f292-48c8-bfb1-439503576f57" filters="&quot;assetId&quot;='48f3e425-2143-4dcd-9101-c7e22559e82b'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="c17671ad-1b7b-4b92-9d67-58c3d32448e6" field="heat_demand" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="28b469cb-f292-48c8-bfb1-439503576f57" filters="&quot;assetId&quot;='48f3e425-2143-4dcd-9101-c7e22559e82b'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:GenericProducer" id="cf3d4b5e-437f-4c1b-a7f9-7fd7e8a269b4" name="GenericProducer_cf3d" power="5000000.0">
        <geometry xsi:type="esdl:Point" lat="52.148869383489114" lon="4.558639526367188" CRS="WGS84"/>
        <port xsi:type="esdl:OutPort" name="Out" connectedTo="a9793a5e-df4f-4795-8079-015dfaf57f82" id="2d818e3d-8a39-4cec-afa0-f6dbbfd50696" carrier="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a">
          <profile xsi:type="esdl:InfluxDBProfile" id="4ba2d167-39eb-4046-a2ed-3eba8cc78328" field="mass_flow" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="28b469cb-f292-48c8-bfb1-439503576f57" filters="&quot;assetId&quot;='cf3d4b5e-437f-4c1b-a7f9-7fd7e8a269b4'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="GRAM" multiplier="KILO"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="e59216ff-13fa-428b-84e8-d0b0dc2ef01b" field="pressure" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="28b469cb-f292-48c8-bfb1-439503576f57" filters="&quot;assetId&quot;='cf3d4b5e-437f-4c1b-a7f9-7fd7e8a269b4'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="4e494d79-a45f-4341-92c3-60cf22b2a61f" field="temperature" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="28b469cb-f292-48c8-bfb1-439503576f57" filters="&quot;assetId&quot;='cf3d4b5e-437f-4c1b-a7f9-7fd7e8a269b4'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="410faa9a-5abf-4a8e-a6cc-42bd6d3154f6" field="volume_flow" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="28b469cb-f292-48c8-bfb1-439503576f57" filters="&quot;assetId&quot;='cf3d4b5e-437f-4c1b-a7f9-7fd7e8a269b4'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="CUBIC_METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="2a5ef3de-6f15-4c88-bcc7-6e6ece70e26d" field="heat_supply_set_point" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="28b469cb-f292-48c8-bfb1-439503576f57" filters="&quot;assetId&quot;='cf3d4b5e-437f-4c1b-a7f9-7fd7e8a269b4'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="cf33824e-44f1-46f3-9e44-19af48f3ad6b" field="heat_supplied" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="28b469cb-f292-48c8-bfb1-439503576f57" filters="&quot;assetId&quot;='cf3d4b5e-437f-4c1b-a7f9-7fd7e8a269b4'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
        </port>
        <port xsi:type="esdl:InPort" connectedTo="935fb733-9f76-4a8d-8899-1ad8689a4b12" name="In" id="9c258b9d-3149-4720-8931-f4bef1080ec1" carrier="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret">
          <profile xsi:type="esdl:InfluxDBProfile" id="42743c6d-072c-42b3-bce5-4dd4d12c5669" field="mass_flow" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="28b469cb-f292-48c8-bfb1-439503576f57" filters="&quot;assetId&quot;='cf3d4b5e-437f-4c1b-a7f9-7fd7e8a269b4'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="GRAM" multiplier="KILO"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="9e6361a6-3ff5-49d9-9087-a1d5299e0130" field="pressure" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="28b469cb-f292-48c8-bfb1-439503576f57" filters="&quot;assetId&quot;='cf3d4b5e-437f-4c1b-a7f9-7fd7e8a269b4'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="ce16631f-f63b-4d69-aeb4-1cbc152e0c3a" field="temperature" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="28b469cb-f292-48c8-bfb1-439503576f57" filters="&quot;assetId&quot;='cf3d4b5e-437f-4c1b-a7f9-7fd7e8a269b4'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="21341267-39e9-4b53-b886-d4549933a548" field="volume_flow" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="28b469cb-f292-48c8-bfb1-439503576f57" filters="&quot;assetId&quot;='cf3d4b5e-437f-4c1b-a7f9-7fd7e8a269b4'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="CUBIC_METRE"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Pipe" id="Pipe1" length="6267.0" name="Pipe1" related="Pipe1_ret" innerDiameter="0.5">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.148869383489114" lon="4.558639526367188"/>
          <point xsi:type="esdl:Point" lat="52.16740421514521" lon="4.594688415527345"/>
          <point xsi:type="esdl:Point" lat="52.158769628869045" lon="4.63726043701172"/>
        </geometry>
        <port xsi:type="esdl:InPort" connectedTo="2d818e3d-8a39-4cec-afa0-f6dbbfd50696" name="In" id="a9793a5e-df4f-4795-8079-015dfaf57f82" carrier="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a">
          <profile xsi:type="esdl:InfluxDBProfile" id="22e04a83-c734-4e4f-861e-2cc742dc30ba" field="mass_flow" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="28b469cb-f292-48c8-bfb1-439503576f57" filters="&quot;assetId&quot;='Pipe1'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="GRAM" multiplier="KILO"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="b539984b-aa70-433d-bad2-41586e372ddc" field="pressure" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="28b469cb-f292-48c8-bfb1-439503576f57" filters="&quot;assetId&quot;='Pipe1'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="987ba643-7e5f-4034-8d9b-693c17338ea9" field="temperature" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="28b469cb-f292-48c8-bfb1-439503576f57" filters="&quot;assetId&quot;='Pipe1'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="5b1c539a-9f1b-4d1c-9bb7-aa176ee1b586" field="volume_flow" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="28b469cb-f292-48c8-bfb1-439503576f57" filters="&quot;assetId&quot;='Pipe1'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="CUBIC_METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="d6edf740-ed56-4dc1-bfc2-d7a351e697fd" field="velocity" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="28b469cb-f292-48c8-bfb1-439503576f57" filters="&quot;assetId&quot;='Pipe1'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="SPEED" unit="METRE"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" name="Out" connectedTo="af0904f7-ba1f-4e79-9040-71e08041601b" id="3f2dc09a-0cee-44bd-a337-cea55461a334" carrier="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a">
          <profile xsi:type="esdl:InfluxDBProfile" id="d3bffe36-f437-4f08-b8c7-8d1f164fbef9" field="mass_flow" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="28b469cb-f292-48c8-bfb1-439503576f57" filters="&quot;assetId&quot;='Pipe1'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="GRAM" multiplier="KILO"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="640b645b-e9ea-435c-8aac-d2a5675affae" field="pressure" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="28b469cb-f292-48c8-bfb1-439503576f57" filters="&quot;assetId&quot;='Pipe1'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="1c80106f-75ad-4108-a130-8842227d4fe1" field="temperature" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="28b469cb-f292-48c8-bfb1-439503576f57" filters="&quot;assetId&quot;='Pipe1'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="c075d163-05bd-43aa-89b8-88dbf2b9b5aa" field="volume_flow" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="28b469cb-f292-48c8-bfb1-439503576f57" filters="&quot;assetId&quot;='Pipe1'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="CUBIC_METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="9914aa1c-c7d8-4835-80a1-5425904786a0" field="velocity" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="28b469cb-f292-48c8-bfb1-439503576f57" filters="&quot;assetId&quot;='Pipe1'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="SPEED" unit="METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="bcf4e8b7-63c3-473a-8ded-92226d526165" field="pressure_loss" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="28b469cb-f292-48c8-bfb1-439503576f57" filters="&quot;assetId&quot;='Pipe1'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="de60ba95-2606-4a96-b8e9-8cf2214af63b" field="pressure_loss_per_length" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="28b469cb-f292-48c8-bfb1-439503576f57" filters="&quot;assetId&quot;='Pipe1'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="05452acd-a8f8-4221-9850-33bae6a3bdb7" field="heat_loss" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="28b469cb-f292-48c8-bfb1-439503576f57" filters="&quot;assetId&quot;='Pipe1'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Pipe" id="Pipe1_ret" length="6267.0" name="Pipe1_ret" related="Pipe1" innerDiameter="0.5">
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" lat="52.15885962895904" lon="4.636858896813017" CRS="WGS84"/>
          <point xsi:type="esdl:Point" lat="52.16749421523521" lon="4.5942969754153795" CRS="WGS84"/>
          <point xsi:type="esdl:Point" lat="52.14895938357911" lon="4.558225705568235" CRS="WGS84"/>
        </geometry>
        <port xsi:type="esdl:InPort" connectedTo="e890f65f-80e7-46fa-8c52-5385324bf686" name="In_ret" id="422cb921-23d2-4410-9072-aaa5796a0620" carrier="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret">
          <profile xsi:type="esdl:InfluxDBProfile" id="292bfba8-d20d-4fa9-91b1-c116d10b9713" field="mass_flow" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="28b469cb-f292-48c8-bfb1-439503576f57" filters="&quot;assetId&quot;='Pipe1_ret'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="GRAM" multiplier="KILO"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="db5f22cd-af0d-4e7c-a1e7-3f2f22905cbe" field="pressure" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="28b469cb-f292-48c8-bfb1-439503576f57" filters="&quot;assetId&quot;='Pipe1_ret'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="579367f7-2ff5-4885-88d0-b9e9fc158390" field="temperature" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="28b469cb-f292-48c8-bfb1-439503576f57" filters="&quot;assetId&quot;='Pipe1_ret'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="734c01e1-a9dc-4b5c-a017-8a77ac4454d6" field="volume_flow" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="28b469cb-f292-48c8-bfb1-439503576f57" filters="&quot;assetId&quot;='Pipe1_ret'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="CUBIC_METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="023d7388-7dff-44cb-94a7-025be93218e8" field="velocity" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="28b469cb-f292-48c8-bfb1-439503576f57" filters="&quot;assetId&quot;='Pipe1_ret'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="SPEED" unit="METRE"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" name="Out_ret" connectedTo="9c258b9d-3149-4720-8931-f4bef1080ec1" id="935fb733-9f76-4a8d-8899-1ad8689a4b12" carrier="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret">
          <profile xsi:type="esdl:InfluxDBProfile" id="3f7f646c-4541-4c8c-8ead-7ae67e0f9666" field="mass_flow" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="28b469cb-f292-48c8-bfb1-439503576f57" filters="&quot;assetId&quot;='Pipe1_ret'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="GRAM" multiplier="KILO"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="a209916e-d749-47d6-9500-4b44c8d644f5" field="pressure" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="28b469cb-f292-48c8-bfb1-439503576f57" filters="&quot;assetId&quot;='Pipe1_ret'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="9de3eab8-ae94-4637-898c-1e20a084f1c9" field="temperature" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="28b469cb-f292-48c8-bfb1-439503576f57" filters="&quot;assetId&quot;='Pipe1_ret'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="dc358b18-b570-4c47-b627-d69887b5f935" field="volume_flow" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="28b469cb-f292-48c8-bfb1-439503576f57" filters="&quot;assetId&quot;='Pipe1_ret'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="CUBIC_METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="580671b4-c03c-481d-b6ce-fdd7f1ea7a25" field="velocity" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="28b469cb-f292-48c8-bfb1-439503576f57" filters="&quot;assetId&quot;='Pipe1_ret'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="SPEED" unit="METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="0219c183-78ec-4c68-8f4f-cb4e97e1e441" field="pressure_loss" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="28b469cb-f292-48c8-bfb1-439503576f57" filters="&quot;assetId&quot;='Pipe1_ret'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="08486f7d-05fd-4f38-b269-fe983589cdc9" field="pressure_loss_per_length" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="28b469cb-f292-48c8-bfb1-439503576f57" filters="&quot;assetId&quot;='Pipe1_ret'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="c1976f3b-ef1a-41af-b226-aebbfbb691d7" field="heat_loss" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="28b469cb-f292-48c8-bfb1-439503576f57" filters="&quot;assetId&quot;='Pipe1_ret'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
        </port>
      </asset>
    </area>
  </instance>
</esdl:EnergySystem>
