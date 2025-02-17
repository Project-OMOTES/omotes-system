<?xml version='1.0' encoding='UTF-8'?>
<esdl:EnergySystem xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:esdl="http://www.tno.nl/esdl" version="1" id="b4c7e0fc-a77e-4df4-964e-6243be169c5b" name="Untitled EnergySystem with return network_simulator" esdlVersion="v2207" description="">
  <energySystemInformation xsi:type="esdl:EnergySystemInformation" id="c615f17e-c077-48c4-8a78-6ae05f8a908f">
    <quantityAndUnits xsi:type="esdl:QuantityAndUnits" id="f61a1799-bf04-416a-b15e-93097722ada7">
      <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="e9405fc8-5e57-4df5-8584-4babee7cdf1b" multiplier="MEGA" description="Power in MW" physicalQuantity="POWER" unit="WATT"/>
    </quantityAndUnits>
    <carriers xsi:type="esdl:Carriers" id="c27258b1-f4f6-4e09-a77a-ce466dbd82d2">
      <carrier xsi:type="esdl:HeatCommodity" supplyTemperature="80.0" name="HeatSupply" id="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a"/>
      <carrier xsi:type="esdl:HeatCommodity" name="HeatReturn" id="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" returnTemperature="40.0"/>
    </carriers>
  </energySystemInformation>
  <instance xsi:type="esdl:Instance" name="Untitled Instance" id="a357cbbe-f277-42b1-8456-cbbadc8ceb2e">
    <area xsi:type="esdl:Area" name="Untitled Area" id="e4002c22-abd5-43f6-81a8-e6b5f960bfa5">
      <asset xsi:type="esdl:HeatingDemand" name="HeatingDemand_48f3" id="48f3e425-2143-4dcd-9101-c7e22559e82b">
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="4.63726043701172" lat="52.158769628869045"/>
        <port xsi:type="esdl:InPort" connectedTo="3f2dc09a-0cee-44bd-a337-cea55461a334" id="af0904f7-ba1f-4e79-9040-71e08041601b" carrier="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" name="In">
          <profile xsi:type="esdl:InfluxDBProfile" field="mass_flow" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="ac148c32-1627-4a84-a142-fbd3f5613b41" database="b4c7e0fc-a77e-4df4-964e-6243be169c5b" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="GRAM" multiplier="KILO" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="pressure" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="c99c2921-31be-4154-9bb4-bae47f574b9c" database="b4c7e0fc-a77e-4df4-964e-6243be169c5b" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PASCAL" physicalQuantity="PRESSURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="temperature" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="04b03985-9595-4d06-865f-0987fdc7a9be" database="b4c7e0fc-a77e-4df4-964e-6243be169c5b" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="KELVIN" physicalQuantity="TEMPERATURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="volume_flow" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="b486793c-eb1f-4a72-a1eb-16966d1598e8" database="b4c7e0fc-a77e-4df4-964e-6243be169c5b" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="CUBIC_METRE" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" id="e890f65f-80e7-46fa-8c52-5385324bf686" carrier="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" connectedTo="422cb921-23d2-4410-9072-aaa5796a0620" name="Out">
          <profile xsi:type="esdl:InfluxDBProfile" field="demand1_MW" port="443" measurement="WarmingUp default profiles" host="profiles.warmingup.info" startDate="2019-01-01T00:00:00.000000+0000" id="62d7e2a4-9919-4fa2-90f4-29e8f188919f" database="energy_profiles" endDate="2019-12-31T22:00:00.000000+0000" filters="">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="e9405fc8-5e57-4df5-8584-4babee7cdf1b"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="mass_flow" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="b801d1e2-d81a-4454-8432-72b687756202" database="b4c7e0fc-a77e-4df4-964e-6243be169c5b" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="GRAM" multiplier="KILO" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="pressure" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="a6d143c9-039c-41d9-972f-3e1e15757945" database="b4c7e0fc-a77e-4df4-964e-6243be169c5b" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PASCAL" physicalQuantity="PRESSURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="temperature" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="c2dd17d9-3515-4d9b-b454-294537b316fb" database="b4c7e0fc-a77e-4df4-964e-6243be169c5b" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="KELVIN" physicalQuantity="TEMPERATURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="volume_flow" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="9f8f693a-0fbf-4fed-9a9b-e015c09f1bc4" database="b4c7e0fc-a77e-4df4-964e-6243be169c5b" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="CUBIC_METRE" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="heat_demand_set_point" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="9f467d05-fdd7-48a6-ba71-d2879a3f3e82" database="b4c7e0fc-a77e-4df4-964e-6243be169c5b" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="WATT" physicalQuantity="POWER"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="heat_demand" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="9b549f6a-5b0a-4763-9481-a4e98e73ff1c" database="b4c7e0fc-a77e-4df4-964e-6243be169c5b" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="WATT" physicalQuantity="POWER"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:GenericProducer" name="GenericProducer_cf3d" power="5000000.0" id="cf3d4b5e-437f-4c1b-a7f9-7fd7e8a269b4">
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="4.558639526367188" lat="52.148869383489114"/>
        <port xsi:type="esdl:OutPort" id="2d818e3d-8a39-4cec-afa0-f6dbbfd50696" carrier="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" connectedTo="a9793a5e-df4f-4795-8079-015dfaf57f82" name="Out">
          <profile xsi:type="esdl:InfluxDBProfile" field="mass_flow" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="ac77bc5c-e092-48d1-aba1-65af1914fd83" database="b4c7e0fc-a77e-4df4-964e-6243be169c5b" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="GRAM" multiplier="KILO" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="pressure" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="96e5d83b-9244-4b1f-95af-36100b714188" database="b4c7e0fc-a77e-4df4-964e-6243be169c5b" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PASCAL" physicalQuantity="PRESSURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="temperature" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="7298cb9a-df5a-4fd4-a371-08c4890ad42e" database="b4c7e0fc-a77e-4df4-964e-6243be169c5b" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="KELVIN" physicalQuantity="TEMPERATURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="volume_flow" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="80ee0170-5028-4184-b506-fa008777aaff" database="b4c7e0fc-a77e-4df4-964e-6243be169c5b" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="CUBIC_METRE" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="heat_supply_set_point" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="62856b87-b873-46c7-a335-785c169c0adb" database="b4c7e0fc-a77e-4df4-964e-6243be169c5b" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="WATT" physicalQuantity="POWER"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="heat_supplied" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="cd9f9e69-5494-421f-869a-09ec587fdac9" database="b4c7e0fc-a77e-4df4-964e-6243be169c5b" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="WATT" physicalQuantity="POWER"/>
          </profile>
        </port>
        <port xsi:type="esdl:InPort" connectedTo="935fb733-9f76-4a8d-8899-1ad8689a4b12" id="9c258b9d-3149-4720-8931-f4bef1080ec1" carrier="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" name="In">
          <profile xsi:type="esdl:InfluxDBProfile" field="mass_flow" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="ae3f5c17-caec-4813-895e-367c716f0e1d" database="b4c7e0fc-a77e-4df4-964e-6243be169c5b" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="GRAM" multiplier="KILO" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="pressure" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="1ac561dd-2d33-4ba4-b7d9-ade66d772bf7" database="b4c7e0fc-a77e-4df4-964e-6243be169c5b" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PASCAL" physicalQuantity="PRESSURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="temperature" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="4d9e9e3f-352e-4930-b3c4-6330e4e958ec" database="b4c7e0fc-a77e-4df4-964e-6243be169c5b" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="KELVIN" physicalQuantity="TEMPERATURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="volume_flow" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="8bd50e06-dff3-47b6-a213-86a6017ea9f0" database="b4c7e0fc-a77e-4df4-964e-6243be169c5b" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="CUBIC_METRE" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Pipe" related="Pipe1_ret" length="6267.0" name="Pipe1" id="Pipe1" innerDiameter="0.5">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lon="4.558639526367188" lat="52.148869383489114"/>
          <point xsi:type="esdl:Point" lon="4.594688415527345" lat="52.16740421514521"/>
          <point xsi:type="esdl:Point" lon="4.63726043701172" lat="52.158769628869045"/>
        </geometry>
        <port xsi:type="esdl:InPort" connectedTo="2d818e3d-8a39-4cec-afa0-f6dbbfd50696" id="a9793a5e-df4f-4795-8079-015dfaf57f82" carrier="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" name="In">
          <profile xsi:type="esdl:InfluxDBProfile" field="mass_flow" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="aead945e-c081-4c7b-8d32-714824ac774d" database="b4c7e0fc-a77e-4df4-964e-6243be169c5b" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="GRAM" multiplier="KILO" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="pressure" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="23f54353-7deb-4b89-b5a4-2da19ec8772d" database="b4c7e0fc-a77e-4df4-964e-6243be169c5b" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PASCAL" physicalQuantity="PRESSURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="temperature" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="f002f684-9035-4cda-a3e0-0f8f557d8136" database="b4c7e0fc-a77e-4df4-964e-6243be169c5b" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="KELVIN" physicalQuantity="TEMPERATURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="volume_flow" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="ad57a0bb-dd6b-41c5-ad8d-4b19d010a860" database="b4c7e0fc-a77e-4df4-964e-6243be169c5b" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="CUBIC_METRE" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="velocity" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="7cb772a2-12ba-47d9-8536-4ddebad01e15" database="b4c7e0fc-a77e-4df4-964e-6243be169c5b" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="METRE" perTimeUnit="SECOND" physicalQuantity="SPEED"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" id="3f2dc09a-0cee-44bd-a337-cea55461a334" carrier="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" connectedTo="af0904f7-ba1f-4e79-9040-71e08041601b" name="Out">
          <profile xsi:type="esdl:InfluxDBProfile" field="mass_flow" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="f339120b-a2b8-4584-9d50-1617a05bbd68" database="b4c7e0fc-a77e-4df4-964e-6243be169c5b" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="GRAM" multiplier="KILO" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="pressure" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="24b9a5f2-7d2c-41a4-bab6-4ffbb74962c0" database="b4c7e0fc-a77e-4df4-964e-6243be169c5b" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PASCAL" physicalQuantity="PRESSURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="temperature" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="f681532d-1b8b-4fc4-9862-16b398af9e95" database="b4c7e0fc-a77e-4df4-964e-6243be169c5b" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="KELVIN" physicalQuantity="TEMPERATURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="volume_flow" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="e9448f23-b901-4730-997b-b57759ece3c5" database="b4c7e0fc-a77e-4df4-964e-6243be169c5b" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="CUBIC_METRE" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="velocity" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="dca2e568-9f88-4691-ae8c-c7d39715ccd6" database="b4c7e0fc-a77e-4df4-964e-6243be169c5b" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="METRE" perTimeUnit="SECOND" physicalQuantity="SPEED"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="pressure_loss" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="c0248cd2-351c-4f38-90a1-130b79b29331" database="b4c7e0fc-a77e-4df4-964e-6243be169c5b" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PASCAL" physicalQuantity="PRESSURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="pressure_loss_per_length" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="826f39f0-6d39-482b-9ba3-9dca9ff889b9" database="b4c7e0fc-a77e-4df4-964e-6243be169c5b" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PASCAL" physicalQuantity="PRESSURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="heat_loss" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="3cb0b2b8-4358-4351-96d1-b53686813ad4" database="b4c7e0fc-a77e-4df4-964e-6243be169c5b" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="WATT" physicalQuantity="POWER"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Pipe" related="Pipe1" length="6267.0" name="Pipe1_ret" id="Pipe1_ret" innerDiameter="0.5">
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" CRS="WGS84" lon="4.636858896813017" lat="52.15885962895904"/>
          <point xsi:type="esdl:Point" CRS="WGS84" lon="4.5942969754153795" lat="52.16749421523521"/>
          <point xsi:type="esdl:Point" CRS="WGS84" lon="4.558225705568235" lat="52.14895938357911"/>
        </geometry>
        <port xsi:type="esdl:InPort" connectedTo="e890f65f-80e7-46fa-8c52-5385324bf686" id="422cb921-23d2-4410-9072-aaa5796a0620" carrier="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" name="In_ret">
          <profile xsi:type="esdl:InfluxDBProfile" field="mass_flow" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="32c51fff-f265-482a-96fb-f182dd313d93" database="b4c7e0fc-a77e-4df4-964e-6243be169c5b" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="GRAM" multiplier="KILO" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="pressure" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="1de02267-5bda-4119-903b-ee9e2ebc0e57" database="b4c7e0fc-a77e-4df4-964e-6243be169c5b" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PASCAL" physicalQuantity="PRESSURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="temperature" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="84a026cd-4294-43fb-a3d3-d508fddbff81" database="b4c7e0fc-a77e-4df4-964e-6243be169c5b" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="KELVIN" physicalQuantity="TEMPERATURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="volume_flow" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="ffda8336-2623-4105-8747-1cb724ce59f4" database="b4c7e0fc-a77e-4df4-964e-6243be169c5b" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="CUBIC_METRE" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="velocity" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="495f6cc4-adc7-4212-9913-c7fed19ea6f4" database="b4c7e0fc-a77e-4df4-964e-6243be169c5b" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="METRE" perTimeUnit="SECOND" physicalQuantity="SPEED"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" id="935fb733-9f76-4a8d-8899-1ad8689a4b12" carrier="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" connectedTo="9c258b9d-3149-4720-8931-f4bef1080ec1" name="Out_ret">
          <profile xsi:type="esdl:InfluxDBProfile" field="mass_flow" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="3a28d376-bfb6-4da7-897e-da2d237c2c19" database="b4c7e0fc-a77e-4df4-964e-6243be169c5b" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="GRAM" multiplier="KILO" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="pressure" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="1c70640b-3625-427f-9029-8ec3eed8a2ac" database="b4c7e0fc-a77e-4df4-964e-6243be169c5b" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PASCAL" physicalQuantity="PRESSURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="temperature" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="95f47489-7c39-47df-8825-2a18509c8c63" database="b4c7e0fc-a77e-4df4-964e-6243be169c5b" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="KELVIN" physicalQuantity="TEMPERATURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="volume_flow" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="51808c13-3231-4157-b8aa-39c6187408c9" database="b4c7e0fc-a77e-4df4-964e-6243be169c5b" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="CUBIC_METRE" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="velocity" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="f6440d78-53c6-41e5-a75b-aa8c9f52e816" database="b4c7e0fc-a77e-4df4-964e-6243be169c5b" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="METRE" perTimeUnit="SECOND" physicalQuantity="SPEED"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="pressure_loss" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="d7c0ddbf-47b1-4661-b682-0d386fd74c62" database="b4c7e0fc-a77e-4df4-964e-6243be169c5b" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PASCAL" physicalQuantity="PRESSURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="pressure_loss_per_length" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="c56f17d2-1819-4fe7-81c6-310d9957dc2f" database="b4c7e0fc-a77e-4df4-964e-6243be169c5b" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PASCAL" physicalQuantity="PRESSURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="heat_loss" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="390292ef-38e2-4cdc-bd3a-80739016f493" database="b4c7e0fc-a77e-4df4-964e-6243be169c5b" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="WATT" physicalQuantity="POWER"/>
          </profile>
        </port>
      </asset>
    </area>
  </instance>
</esdl:EnergySystem>
