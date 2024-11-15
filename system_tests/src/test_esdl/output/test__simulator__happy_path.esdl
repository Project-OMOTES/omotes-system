<?xml version='1.0' encoding='UTF-8'?>
<esdl:EnergySystem xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:esdl="http://www.tno.nl/esdl" description="" version="1" id="ddf8b697-d6b9-4a2b-9c44-434320a05d71" name="Untitled EnergySystem with return network_simulator" esdlVersion="v2207">
  <energySystemInformation xsi:type="esdl:EnergySystemInformation" id="c615f17e-c077-48c4-8a78-6ae05f8a908f">
    <carriers xsi:type="esdl:Carriers" id="c27258b1-f4f6-4e09-a77a-ce466dbd82d2">
      <carrier xsi:type="esdl:HeatCommodity" id="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" name="HeatSupply" supplyTemperature="80.0"/>
      <carrier xsi:type="esdl:HeatCommodity" id="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" name="HeatReturn" returnTemperature="40.0"/>
    </carriers>
    <quantityAndUnits xsi:type="esdl:QuantityAndUnits" id="f61a1799-bf04-416a-b15e-93097722ada7">
      <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" description="Power in MW" multiplier="MEGA" unit="WATT" id="e9405fc8-5e57-4df5-8584-4babee7cdf1b"/>
    </quantityAndUnits>
  </energySystemInformation>
  <instance xsi:type="esdl:Instance" id="a357cbbe-f277-42b1-8456-cbbadc8ceb2e" name="Untitled Instance">
    <area xsi:type="esdl:Area" id="e4002c22-abd5-43f6-81a8-e6b5f960bfa5" name="Untitled Area">
      <asset xsi:type="esdl:HeatingDemand" name="HeatingDemand_48f3" id="48f3e425-2143-4dcd-9101-c7e22559e82b">
        <geometry xsi:type="esdl:Point" lon="4.63726043701172" lat="52.158769628869045" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" connectedTo="3f2dc09a-0cee-44bd-a337-cea55461a334" name="In" id="af0904f7-ba1f-4e79-9040-71e08041601b" carrier="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a">
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" id="b52f0d67-e8de-406f-b02a-ae10e1691d8d" startDate="2019-01-01T00:00:00.000000" database="ddf8b697-d6b9-4a2b-9c44-434320a05d71" host="omotes_influxdb" endDate="2019-01-01T02:00:00.000000" field="mass_flow" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" id="dc9e8232-31d3-450f-a20c-ab998cc787b1" startDate="2019-01-01T00:00:00.000000" database="ddf8b697-d6b9-4a2b-9c44-434320a05d71" host="omotes_influxdb" endDate="2019-01-01T02:00:00.000000" field="pressure" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" id="cf5fa4a8-3772-4a94-9cc0-2d49640c89da" startDate="2019-01-01T00:00:00.000000" database="ddf8b697-d6b9-4a2b-9c44-434320a05d71" host="omotes_influxdb" endDate="2019-01-01T02:00:00.000000" field="temperature" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="DEGREES_CELSIUS"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" connectedTo="422cb921-23d2-4410-9072-aaa5796a0620" name="Out" id="e890f65f-80e7-46fa-8c52-5385324bf686" carrier="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret">
          <profile xsi:type="esdl:InfluxDBProfile" port="443" id="62d7e2a4-9919-4fa2-90f4-29e8f188919f" filters="" startDate="2019-01-01T00:00:00.000000+0000" database="energy_profiles" host="profiles.warmingup.info" endDate="2019-12-31T22:00:00.000000+0000" field="demand1_MW" measurement="WarmingUp default profiles">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="e9405fc8-5e57-4df5-8584-4babee7cdf1b"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" id="cc782824-e4f2-42d7-ac77-fb63891ffa0e" startDate="2019-01-01T00:00:00.000000" database="ddf8b697-d6b9-4a2b-9c44-434320a05d71" host="omotes_influxdb" endDate="2019-01-01T02:00:00.000000" field="mass_flow" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" id="1d4bbbaf-287f-4bfa-856d-cc7534b2e8ac" startDate="2019-01-01T00:00:00.000000" database="ddf8b697-d6b9-4a2b-9c44-434320a05d71" host="omotes_influxdb" endDate="2019-01-01T02:00:00.000000" field="pressure" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" id="6c444da8-65f5-4a3f-b4c3-2c38ab1fe17b" startDate="2019-01-01T00:00:00.000000" database="ddf8b697-d6b9-4a2b-9c44-434320a05d71" host="omotes_influxdb" endDate="2019-01-01T02:00:00.000000" field="temperature" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="DEGREES_CELSIUS"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:GenericProducer" power="5000000.0" name="GenericProducer_cf3d" id="cf3d4b5e-437f-4c1b-a7f9-7fd7e8a269b4">
        <geometry xsi:type="esdl:Point" lon="4.558639526367188" lat="52.148869383489114" CRS="WGS84"/>
        <port xsi:type="esdl:OutPort" connectedTo="a9793a5e-df4f-4795-8079-015dfaf57f82" name="Out" id="2d818e3d-8a39-4cec-afa0-f6dbbfd50696" carrier="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a">
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" id="349cd228-6b44-4196-9c7f-9f4b7d1a2f20" startDate="2019-01-01T00:00:00.000000" database="ddf8b697-d6b9-4a2b-9c44-434320a05d71" host="omotes_influxdb" endDate="2019-01-01T02:00:00.000000" field="mass_flow" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" id="db4c4d67-978a-4d22-b470-2ed04e0ea412" startDate="2019-01-01T00:00:00.000000" database="ddf8b697-d6b9-4a2b-9c44-434320a05d71" host="omotes_influxdb" endDate="2019-01-01T02:00:00.000000" field="pressure" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" id="906fc353-5c16-4a31-999f-9a4634a6688e" startDate="2019-01-01T00:00:00.000000" database="ddf8b697-d6b9-4a2b-9c44-434320a05d71" host="omotes_influxdb" endDate="2019-01-01T02:00:00.000000" field="temperature" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="DEGREES_CELSIUS"/>
          </profile>
        </port>
        <port xsi:type="esdl:InPort" connectedTo="935fb733-9f76-4a8d-8899-1ad8689a4b12" name="In" id="9c258b9d-3149-4720-8931-f4bef1080ec1" carrier="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret">
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" id="6047dcf9-547a-4116-b31a-3d83cebb0337" startDate="2019-01-01T00:00:00.000000" database="ddf8b697-d6b9-4a2b-9c44-434320a05d71" host="omotes_influxdb" endDate="2019-01-01T02:00:00.000000" field="mass_flow" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" id="1c65e4b6-5228-4a38-b0dd-5b0f66d5ce7d" startDate="2019-01-01T00:00:00.000000" database="ddf8b697-d6b9-4a2b-9c44-434320a05d71" host="omotes_influxdb" endDate="2019-01-01T02:00:00.000000" field="pressure" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" id="2771087c-dd69-4012-9ba9-f617b49ebe88" startDate="2019-01-01T00:00:00.000000" database="ddf8b697-d6b9-4a2b-9c44-434320a05d71" host="omotes_influxdb" endDate="2019-01-01T02:00:00.000000" field="temperature" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="DEGREES_CELSIUS"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Pipe" length="6267.0" name="Pipe1" innerDiameter="0.5" id="Pipe1" related="Pipe1_ret">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lon="4.558639526367188" lat="52.148869383489114"/>
          <point xsi:type="esdl:Point" lon="4.594688415527345" lat="52.16740421514521"/>
          <point xsi:type="esdl:Point" lon="4.63726043701172" lat="52.158769628869045"/>
        </geometry>
        <port xsi:type="esdl:InPort" connectedTo="2d818e3d-8a39-4cec-afa0-f6dbbfd50696" name="In" id="a9793a5e-df4f-4795-8079-015dfaf57f82" carrier="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a">
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" id="2204e296-be98-48aa-92b0-b4dff2f1ebee" startDate="2019-01-01T00:00:00.000000" database="ddf8b697-d6b9-4a2b-9c44-434320a05d71" host="omotes_influxdb" endDate="2019-01-01T02:00:00.000000" field="mass_flow" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" id="5be48fe8-0ca4-4ae3-8532-20ecddb67052" startDate="2019-01-01T00:00:00.000000" database="ddf8b697-d6b9-4a2b-9c44-434320a05d71" host="omotes_influxdb" endDate="2019-01-01T02:00:00.000000" field="pressure" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" id="4779a357-d820-4efc-aeda-87c2f2c13338" startDate="2019-01-01T00:00:00.000000" database="ddf8b697-d6b9-4a2b-9c44-434320a05d71" host="omotes_influxdb" endDate="2019-01-01T02:00:00.000000" field="temperature" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="DEGREES_CELSIUS"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" connectedTo="af0904f7-ba1f-4e79-9040-71e08041601b" name="Out" id="3f2dc09a-0cee-44bd-a337-cea55461a334" carrier="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a">
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" id="bca60364-7b6e-4c6e-9ea4-0128ba9d19d8" startDate="2019-01-01T00:00:00.000000" database="ddf8b697-d6b9-4a2b-9c44-434320a05d71" host="omotes_influxdb" endDate="2019-01-01T02:00:00.000000" field="mass_flow" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" id="f9c57985-4fb2-4720-9aa7-b123becb589b" startDate="2019-01-01T00:00:00.000000" database="ddf8b697-d6b9-4a2b-9c44-434320a05d71" host="omotes_influxdb" endDate="2019-01-01T02:00:00.000000" field="pressure" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" id="1f305890-23e0-4923-8f6f-2e7eaf324d99" startDate="2019-01-01T00:00:00.000000" database="ddf8b697-d6b9-4a2b-9c44-434320a05d71" host="omotes_influxdb" endDate="2019-01-01T02:00:00.000000" field="temperature" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="DEGREES_CELSIUS"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Pipe" length="6267.0" name="Pipe1_ret" innerDiameter="0.5" id="Pipe1_ret" related="Pipe1">
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" lon="4.636858896813017" lat="52.15885962895904" CRS="WGS84"/>
          <point xsi:type="esdl:Point" lon="4.5942969754153795" lat="52.16749421523521" CRS="WGS84"/>
          <point xsi:type="esdl:Point" lon="4.558225705568235" lat="52.14895938357911" CRS="WGS84"/>
        </geometry>
        <port xsi:type="esdl:InPort" connectedTo="e890f65f-80e7-46fa-8c52-5385324bf686" name="In_ret" id="422cb921-23d2-4410-9072-aaa5796a0620" carrier="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret">
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" id="59fa772d-7727-44db-a7e3-55df21e613ca" startDate="2019-01-01T00:00:00.000000" database="ddf8b697-d6b9-4a2b-9c44-434320a05d71" host="omotes_influxdb" endDate="2019-01-01T02:00:00.000000" field="mass_flow" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" id="08dc5fda-d7b2-4b33-a3a0-218dc435eb71" startDate="2019-01-01T00:00:00.000000" database="ddf8b697-d6b9-4a2b-9c44-434320a05d71" host="omotes_influxdb" endDate="2019-01-01T02:00:00.000000" field="pressure" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" id="947a3014-269b-4e45-b52d-2ee643b4b155" startDate="2019-01-01T00:00:00.000000" database="ddf8b697-d6b9-4a2b-9c44-434320a05d71" host="omotes_influxdb" endDate="2019-01-01T02:00:00.000000" field="temperature" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="DEGREES_CELSIUS"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" connectedTo="9c258b9d-3149-4720-8931-f4bef1080ec1" name="Out_ret" id="935fb733-9f76-4a8d-8899-1ad8689a4b12" carrier="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret">
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" id="f21ad897-36f1-4de3-a8a8-1c0e6d650702" startDate="2019-01-01T00:00:00.000000" database="ddf8b697-d6b9-4a2b-9c44-434320a05d71" host="omotes_influxdb" endDate="2019-01-01T02:00:00.000000" field="mass_flow" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" id="6165de25-dced-4019-bc6e-d2bc8d3c2824" startDate="2019-01-01T00:00:00.000000" database="ddf8b697-d6b9-4a2b-9c44-434320a05d71" host="omotes_influxdb" endDate="2019-01-01T02:00:00.000000" field="pressure" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" id="f736345b-3b30-4e97-9ddb-495deb0e4b67" startDate="2019-01-01T00:00:00.000000" database="ddf8b697-d6b9-4a2b-9c44-434320a05d71" host="omotes_influxdb" endDate="2019-01-01T02:00:00.000000" field="temperature" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="DEGREES_CELSIUS"/>
          </profile>
        </port>
      </asset>
    </area>
  </instance>
</esdl:EnergySystem>
