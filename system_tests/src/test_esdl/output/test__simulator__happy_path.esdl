<?xml version='1.0' encoding='UTF-8'?>
<esdl:EnergySystem xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:esdl="http://www.tno.nl/esdl" esdlVersion="v2207" version="1" description="" name="Untitled EnergySystem with return network" id="b793211c-6cee-4b56-812d-110a51b2180d">
  <energySystemInformation xsi:type="esdl:EnergySystemInformation" id="c615f17e-c077-48c4-8a78-6ae05f8a908f">
    <quantityAndUnits xsi:type="esdl:QuantityAndUnits" id="f61a1799-bf04-416a-b15e-93097722ada7">
      <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" description="Power in MW" id="e9405fc8-5e57-4df5-8584-4babee7cdf1b" multiplier="MEGA" unit="WATT"/>
    </quantityAndUnits>
    <carriers xsi:type="esdl:Carriers" id="c27258b1-f4f6-4e09-a77a-ce466dbd82d2">
      <carrier xsi:type="esdl:HeatCommodity" id="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" name="HeatSupply" supplyTemperature="80.0"/>
      <carrier xsi:type="esdl:HeatCommodity" name="HeatReturn" id="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" returnTemperature="40.0"/>
    </carriers>
  </energySystemInformation>
  <instance xsi:type="esdl:Instance" name="Untitled Instance" id="a357cbbe-f277-42b1-8456-cbbadc8ceb2e">
    <area xsi:type="esdl:Area" name="Untitled Area" id="e4002c22-abd5-43f6-81a8-e6b5f960bfa5">
      <asset xsi:type="esdl:HeatingDemand" name="HeatingDemand_48f3" id="48f3e425-2143-4dcd-9101-c7e22559e82b">
        <port xsi:type="esdl:InPort" connectedTo="3f2dc09a-0cee-44bd-a337-cea55461a334" name="In" id="af0904f7-ba1f-4e79-9040-71e08041601b" carrier="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a">
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2019-01-01T00:00:00.000000" port="8096" host="omotes_influxdb" database="b793211c-6cee-4b56-812d-110a51b2180d" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" field="pressure_supply" endDate="2019-01-01T02:00:00.000000" id="a3985ff6-9584-419f-9dbe-0e39a0eb9a77">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2019-01-01T00:00:00.000000" port="8096" host="omotes_influxdb" database="b793211c-6cee-4b56-812d-110a51b2180d" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" field="temperature_supply" endDate="2019-01-01T02:00:00.000000" id="6ff179e2-c748-41cc-8270-6ac24f9cccec">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="DEGREES_CELSIUS"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" name="Out" id="e890f65f-80e7-46fa-8c52-5385324bf686" connectedTo="422cb921-23d2-4410-9072-aaa5796a0620" carrier="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret">
          <profile xsi:type="esdl:InfluxDBProfile" filters="" startDate="2019-01-01T00:00:00.000000+0000" database="energy_profiles" measurement="WarmingUp default profiles" host="profiles.warmingup.info" port="443" field="demand1_MW" endDate="2019-12-31T22:00:00.000000+0000" id="62d7e2a4-9919-4fa2-90f4-29e8f188919f">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="e9405fc8-5e57-4df5-8584-4babee7cdf1b"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2019-01-01T00:00:00.000000" port="8096" host="omotes_influxdb" database="b793211c-6cee-4b56-812d-110a51b2180d" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" field="mass_flow" endDate="2019-01-01T02:00:00.000000" id="db0e2f4c-5cac-4b85-9745-fbd49f281ba5">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" perTimeUnit="SECOND" unit="CUBIC_METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2019-01-01T00:00:00.000000" port="8096" host="omotes_influxdb" database="b793211c-6cee-4b56-812d-110a51b2180d" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" field="pressure_return" endDate="2019-01-01T02:00:00.000000" id="e1ceb29c-36ee-4c89-94e6-b1e4cf6aa386">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2019-01-01T00:00:00.000000" port="8096" host="omotes_influxdb" database="b793211c-6cee-4b56-812d-110a51b2180d" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" field="temperature_return" endDate="2019-01-01T02:00:00.000000" id="ccccd89e-b354-4bc5-99bb-11fad8e49d54">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="DEGREES_CELSIUS"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Point" lon="4.63726043701172" lat="52.158769628869045" CRS="WGS84"/>
      </asset>
      <asset xsi:type="esdl:GenericProducer" name="GenericProducer_cf3d" id="cf3d4b5e-437f-4c1b-a7f9-7fd7e8a269b4" power="5000000.0">
        <port xsi:type="esdl:OutPort" name="Out" id="2d818e3d-8a39-4cec-afa0-f6dbbfd50696" carrier="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" connectedTo="a9793a5e-df4f-4795-8079-015dfaf57f82">
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2019-01-01T00:00:00.000000" port="8096" host="omotes_influxdb" database="b793211c-6cee-4b56-812d-110a51b2180d" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" field="mass_flow" endDate="2019-01-01T02:00:00.000000" id="2414a3c2-23e7-4e38-8637-26e04d71dcf0">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" perTimeUnit="SECOND" unit="CUBIC_METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2019-01-01T00:00:00.000000" port="8096" host="omotes_influxdb" database="b793211c-6cee-4b56-812d-110a51b2180d" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" field="pressure_return" endDate="2019-01-01T02:00:00.000000" id="0e3e88d4-334e-4403-946d-31d365985771">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2019-01-01T00:00:00.000000" port="8096" host="omotes_influxdb" database="b793211c-6cee-4b56-812d-110a51b2180d" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" field="temperature_return" endDate="2019-01-01T02:00:00.000000" id="ecdd47b4-cbc3-421c-ae1b-420c8ec8afee">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="DEGREES_CELSIUS"/>
          </profile>
        </port>
        <port xsi:type="esdl:InPort" connectedTo="935fb733-9f76-4a8d-8899-1ad8689a4b12" name="In" id="9c258b9d-3149-4720-8931-f4bef1080ec1" carrier="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret">
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2019-01-01T00:00:00.000000" port="8096" host="omotes_influxdb" database="b793211c-6cee-4b56-812d-110a51b2180d" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" field="pressure_supply" endDate="2019-01-01T02:00:00.000000" id="1cb0ab48-6f70-41c6-a92a-d3b335314a16">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2019-01-01T00:00:00.000000" port="8096" host="omotes_influxdb" database="b793211c-6cee-4b56-812d-110a51b2180d" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" field="temperature_supply" endDate="2019-01-01T02:00:00.000000" id="4a685cdc-6b7c-4952-ae38-e6a9e50c74d6">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="DEGREES_CELSIUS"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Point" lon="4.558639526367188" lat="52.148869383489114" CRS="WGS84"/>
      </asset>
      <asset xsi:type="esdl:Pipe" name="Pipe1" id="Pipe1" innerDiameter="0.5" related="Pipe1_ret" length="6267.0">
        <port xsi:type="esdl:InPort" connectedTo="2d818e3d-8a39-4cec-afa0-f6dbbfd50696" name="In" id="a9793a5e-df4f-4795-8079-015dfaf57f82" carrier="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a">
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2019-01-01T00:00:00.000000" port="8096" host="omotes_influxdb" database="b793211c-6cee-4b56-812d-110a51b2180d" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" field="pressure_supply" endDate="2019-01-01T02:00:00.000000" id="5e4f28fa-d2ef-4ed9-b002-025dc24ce68e">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2019-01-01T00:00:00.000000" port="8096" host="omotes_influxdb" database="b793211c-6cee-4b56-812d-110a51b2180d" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" field="temperature_supply" endDate="2019-01-01T02:00:00.000000" id="d8ad44da-debf-4464-aa55-f5c9ad149061">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="DEGREES_CELSIUS"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" name="Out" id="3f2dc09a-0cee-44bd-a337-cea55461a334" carrier="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" connectedTo="af0904f7-ba1f-4e79-9040-71e08041601b">
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2019-01-01T00:00:00.000000" port="8096" host="omotes_influxdb" database="b793211c-6cee-4b56-812d-110a51b2180d" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" field="mass_flow" endDate="2019-01-01T02:00:00.000000" id="bc433a2b-91b3-43f8-8f12-5bebaf76d607">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" perTimeUnit="SECOND" unit="CUBIC_METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2019-01-01T00:00:00.000000" port="8096" host="omotes_influxdb" database="b793211c-6cee-4b56-812d-110a51b2180d" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" field="pressure_return" endDate="2019-01-01T02:00:00.000000" id="047691ac-8253-4403-bdff-03441be0cd2a">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2019-01-01T00:00:00.000000" port="8096" host="omotes_influxdb" database="b793211c-6cee-4b56-812d-110a51b2180d" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" field="temperature_return" endDate="2019-01-01T02:00:00.000000" id="0cf2bbbf-f493-4759-8234-9bd91632325c">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="DEGREES_CELSIUS"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lon="4.558639526367188" lat="52.148869383489114"/>
          <point xsi:type="esdl:Point" lon="4.594688415527345" lat="52.16740421514521"/>
          <point xsi:type="esdl:Point" lon="4.63726043701172" lat="52.158769628869045"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:Pipe" name="Pipe1_ret" id="Pipe1_ret" innerDiameter="0.5" related="Pipe1" length="6267.0">
        <port xsi:type="esdl:InPort" connectedTo="e890f65f-80e7-46fa-8c52-5385324bf686" name="In_ret" id="422cb921-23d2-4410-9072-aaa5796a0620" carrier="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret">
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2019-01-01T00:00:00.000000" port="8096" host="omotes_influxdb" database="b793211c-6cee-4b56-812d-110a51b2180d" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" field="pressure_supply" endDate="2019-01-01T02:00:00.000000" id="ff2d6b4b-bd21-4497-b6aa-844825736d2b">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2019-01-01T00:00:00.000000" port="8096" host="omotes_influxdb" database="b793211c-6cee-4b56-812d-110a51b2180d" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" field="temperature_supply" endDate="2019-01-01T02:00:00.000000" id="f18d37f3-4e9d-4a0a-84be-cd853ed2f2e3">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="DEGREES_CELSIUS"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" name="Out_ret" id="935fb733-9f76-4a8d-8899-1ad8689a4b12" carrier="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" connectedTo="9c258b9d-3149-4720-8931-f4bef1080ec1">
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2019-01-01T00:00:00.000000" port="8096" host="omotes_influxdb" database="b793211c-6cee-4b56-812d-110a51b2180d" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" field="mass_flow" endDate="2019-01-01T02:00:00.000000" id="0da7cb8b-11dd-4feb-8e25-f4b708cf190b">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" perTimeUnit="SECOND" unit="CUBIC_METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2019-01-01T00:00:00.000000" port="8096" host="omotes_influxdb" database="b793211c-6cee-4b56-812d-110a51b2180d" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" field="pressure_return" endDate="2019-01-01T02:00:00.000000" id="b7594148-cae9-43a8-8a76-9b665a9f8de1">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2019-01-01T00:00:00.000000" port="8096" host="omotes_influxdb" database="b793211c-6cee-4b56-812d-110a51b2180d" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" field="temperature_return" endDate="2019-01-01T02:00:00.000000" id="cf53c629-db60-4f02-a265-885469262602">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="DEGREES_CELSIUS"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" lon="4.636858896813017" lat="52.15885962895904" CRS="WGS84"/>
          <point xsi:type="esdl:Point" lon="4.5942969754153795" lat="52.16749421523521" CRS="WGS84"/>
          <point xsi:type="esdl:Point" lon="4.558225705568235" lat="52.14895938357911" CRS="WGS84"/>
        </geometry>
      </asset>
    </area>
  </instance>
</esdl:EnergySystem>
