<?xml version='1.0' encoding='UTF-8'?>
<esdl:EnergySystem xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:esdl="http://www.tno.nl/esdl" description="" version="1" id="5f270e60-8b6e-4f6b-b2cf-0f54157d46ff" name="Untitled EnergySystem with return network" esdlVersion="v2207">
  <instance xsi:type="esdl:Instance" id="a357cbbe-f277-42b1-8456-cbbadc8ceb2e" name="Untitled Instance">
    <area xsi:type="esdl:Area" id="e4002c22-abd5-43f6-81a8-e6b5f960bfa5" name="Untitled Area">
      <asset xsi:type="esdl:HeatingDemand" name="HeatingDemand_48f3" id="48f3e425-2143-4dcd-9101-c7e22559e82b">
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="4.63726043701172" lat="52.158769628869045"/>
        <port xsi:type="esdl:InPort" name="In" id="af0904f7-ba1f-4e79-9040-71e08041601b" carrier="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" connectedTo="3f2dc09a-0cee-44bd-a337-cea55461a334">
          <profile xsi:type="esdl:InfluxDBProfile" id="a16a9a81-1f6c-47e2-981a-44fcd114c6fb" measurement="48f3e425-2143-4dcd-9101-c7e22559e82b" port="8096" database="fdbbf5ee-6e86-4c82-9926-4b59de482378_with_return_network" endDate="2018-12-31T23:00:00.000000" field="pressure_supply" startDate="2018-12-31T23:00:00.000000" host="omotes_influxdb">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="37ad09ea-cb4c-45c7-b177-ca30938265c2" measurement="48f3e425-2143-4dcd-9101-c7e22559e82b" port="8096" database="fdbbf5ee-6e86-4c82-9926-4b59de482378_with_return_network" endDate="2018-12-31T23:00:00.000000" field="temperature_supply" startDate="2018-12-31T23:00:00.000000" host="omotes_influxdb">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="DEGREES_CELSIUS"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" name="Out" connectedTo="422cb921-23d2-4410-9072-aaa5796a0620" id="e890f65f-80e7-46fa-8c52-5385324bf686" carrier="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret">
          <profile xsi:type="esdl:InfluxDBProfile" measurement="WarmingUp default profiles" id="62d7e2a4-9919-4fa2-90f4-29e8f188919f" database="energy_profiles" port="443" endDate="2019-12-31T22:00:00.000000+0000" filters="" field="demand1_MW" startDate="2019-01-01T00:00:00.000000+0000" host="profiles.warmingup.info">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="e9405fc8-5e57-4df5-8584-4babee7cdf1b"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="36a03e11-33e5-4742-9525-ef7eadda3fa7" measurement="48f3e425-2143-4dcd-9101-c7e22559e82b" port="8096" database="fdbbf5ee-6e86-4c82-9926-4b59de482378_with_return_network" endDate="2018-12-31T23:00:00.000000" field="mass_flow" startDate="2018-12-31T23:00:00.000000" host="omotes_influxdb">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="CUBIC_METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="ec036fd9-fd01-455a-a3a1-2b805bcefd14" measurement="48f3e425-2143-4dcd-9101-c7e22559e82b" port="8096" database="fdbbf5ee-6e86-4c82-9926-4b59de482378_with_return_network" endDate="2018-12-31T23:00:00.000000" field="pressure_return" startDate="2018-12-31T23:00:00.000000" host="omotes_influxdb">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="57bed3ca-91fb-4b4a-9166-5dc41c6941b6" measurement="48f3e425-2143-4dcd-9101-c7e22559e82b" port="8096" database="fdbbf5ee-6e86-4c82-9926-4b59de482378_with_return_network" endDate="2018-12-31T23:00:00.000000" field="temperature_return" startDate="2018-12-31T23:00:00.000000" host="omotes_influxdb">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="DEGREES_CELSIUS"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:GenericProducer" name="GenericProducer_cf3d" id="cf3d4b5e-437f-4c1b-a7f9-7fd7e8a269b4" power="5000000.0">
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="4.558639526367188" lat="52.148869383489114"/>
        <port xsi:type="esdl:OutPort" name="Out" connectedTo="a9793a5e-df4f-4795-8079-015dfaf57f82" id="2d818e3d-8a39-4cec-afa0-f6dbbfd50696" carrier="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a">
          <profile xsi:type="esdl:InfluxDBProfile" id="5570a7e4-9781-4787-8d56-aee5ecf350a8" measurement="cf3d4b5e-437f-4c1b-a7f9-7fd7e8a269b4" port="8096" database="fdbbf5ee-6e86-4c82-9926-4b59de482378_with_return_network" endDate="2018-12-31T23:00:00.000000" field="mass_flow" startDate="2018-12-31T23:00:00.000000" host="omotes_influxdb">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="CUBIC_METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="cf43ab98-28de-442f-813d-69214ecdd78c" measurement="cf3d4b5e-437f-4c1b-a7f9-7fd7e8a269b4" port="8096" database="fdbbf5ee-6e86-4c82-9926-4b59de482378_with_return_network" endDate="2018-12-31T23:00:00.000000" field="pressure_return" startDate="2018-12-31T23:00:00.000000" host="omotes_influxdb">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="2bf65faf-756a-47bc-b408-7490c0da8299" measurement="cf3d4b5e-437f-4c1b-a7f9-7fd7e8a269b4" port="8096" database="fdbbf5ee-6e86-4c82-9926-4b59de482378_with_return_network" endDate="2018-12-31T23:00:00.000000" field="temperature_return" startDate="2018-12-31T23:00:00.000000" host="omotes_influxdb">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="DEGREES_CELSIUS"/>
          </profile>
        </port>
        <port xsi:type="esdl:InPort" name="In" id="9c258b9d-3149-4720-8931-f4bef1080ec1" carrier="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" connectedTo="935fb733-9f76-4a8d-8899-1ad8689a4b12">
          <profile xsi:type="esdl:InfluxDBProfile" id="322e6aed-c186-4ee6-851f-a8d5a0b66eae" measurement="cf3d4b5e-437f-4c1b-a7f9-7fd7e8a269b4" port="8096" database="fdbbf5ee-6e86-4c82-9926-4b59de482378_with_return_network" endDate="2018-12-31T23:00:00.000000" field="pressure_supply" startDate="2018-12-31T23:00:00.000000" host="omotes_influxdb">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="bf078f58-2a0c-4668-a3c2-9db76daa205f" measurement="cf3d4b5e-437f-4c1b-a7f9-7fd7e8a269b4" port="8096" database="fdbbf5ee-6e86-4c82-9926-4b59de482378_with_return_network" endDate="2018-12-31T23:00:00.000000" field="temperature_supply" startDate="2018-12-31T23:00:00.000000" host="omotes_influxdb">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="DEGREES_CELSIUS"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Pipe" name="Pipe1" id="Pipe1" related="Pipe1_ret" length="6267.0" innerDiameter="0.5">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lon="4.558639526367188" lat="52.148869383489114"/>
          <point xsi:type="esdl:Point" lon="4.594688415527345" lat="52.16740421514521"/>
          <point xsi:type="esdl:Point" lon="4.63726043701172" lat="52.158769628869045"/>
        </geometry>
        <port xsi:type="esdl:InPort" name="In" id="a9793a5e-df4f-4795-8079-015dfaf57f82" carrier="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" connectedTo="2d818e3d-8a39-4cec-afa0-f6dbbfd50696">
          <profile xsi:type="esdl:InfluxDBProfile" id="77ed77ad-9807-41d5-9d76-6d43381809f5" measurement="Pipe1" port="8096" database="fdbbf5ee-6e86-4c82-9926-4b59de482378_with_return_network" endDate="2018-12-31T23:00:00.000000" field="pressure_supply" startDate="2018-12-31T23:00:00.000000" host="omotes_influxdb">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="11cf9233-e497-4ec4-9274-3cee57edd0ee" measurement="Pipe1" port="8096" database="fdbbf5ee-6e86-4c82-9926-4b59de482378_with_return_network" endDate="2018-12-31T23:00:00.000000" field="temperature_supply" startDate="2018-12-31T23:00:00.000000" host="omotes_influxdb">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="DEGREES_CELSIUS"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" name="Out" connectedTo="af0904f7-ba1f-4e79-9040-71e08041601b" id="3f2dc09a-0cee-44bd-a337-cea55461a334" carrier="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a">
          <profile xsi:type="esdl:InfluxDBProfile" id="1b20b42a-c538-4426-8eac-ede4ef8e4274" measurement="Pipe1" port="8096" database="fdbbf5ee-6e86-4c82-9926-4b59de482378_with_return_network" endDate="2018-12-31T23:00:00.000000" field="mass_flow" startDate="2018-12-31T23:00:00.000000" host="omotes_influxdb">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="CUBIC_METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="680d1608-d9a5-4ba6-aec5-c4f241457db4" measurement="Pipe1" port="8096" database="fdbbf5ee-6e86-4c82-9926-4b59de482378_with_return_network" endDate="2018-12-31T23:00:00.000000" field="pressure_return" startDate="2018-12-31T23:00:00.000000" host="omotes_influxdb">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="80092c80-962a-4af1-bbf4-6df5c5a3dc38" measurement="Pipe1" port="8096" database="fdbbf5ee-6e86-4c82-9926-4b59de482378_with_return_network" endDate="2018-12-31T23:00:00.000000" field="temperature_return" startDate="2018-12-31T23:00:00.000000" host="omotes_influxdb">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="DEGREES_CELSIUS"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Pipe" name="Pipe1_ret" id="Pipe1_ret" related="Pipe1" length="6267.0" innerDiameter="0.5">
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" CRS="WGS84" lon="4.636858896813017" lat="52.15885962895904"/>
          <point xsi:type="esdl:Point" CRS="WGS84" lon="4.5942969754153795" lat="52.16749421523521"/>
          <point xsi:type="esdl:Point" CRS="WGS84" lon="4.558225705568235" lat="52.14895938357911"/>
        </geometry>
        <port xsi:type="esdl:InPort" name="In_ret" id="422cb921-23d2-4410-9072-aaa5796a0620" carrier="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" connectedTo="e890f65f-80e7-46fa-8c52-5385324bf686">
          <profile xsi:type="esdl:InfluxDBProfile" id="9492f0a8-56ae-451f-887a-b69707d104eb" measurement="Pipe1_ret" port="8096" database="fdbbf5ee-6e86-4c82-9926-4b59de482378_with_return_network" endDate="2018-12-31T23:00:00.000000" field="pressure_supply" startDate="2018-12-31T23:00:00.000000" host="omotes_influxdb">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="c12e9a00-2ce8-4d1a-90ff-52bdd455a8a0" measurement="Pipe1_ret" port="8096" database="fdbbf5ee-6e86-4c82-9926-4b59de482378_with_return_network" endDate="2018-12-31T23:00:00.000000" field="temperature_supply" startDate="2018-12-31T23:00:00.000000" host="omotes_influxdb">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="DEGREES_CELSIUS"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" name="Out_ret" connectedTo="9c258b9d-3149-4720-8931-f4bef1080ec1" id="935fb733-9f76-4a8d-8899-1ad8689a4b12" carrier="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret">
          <profile xsi:type="esdl:InfluxDBProfile" id="f9fd3876-684e-463c-b35f-3317c0ec15cb" measurement="Pipe1_ret" port="8096" database="fdbbf5ee-6e86-4c82-9926-4b59de482378_with_return_network" endDate="2018-12-31T23:00:00.000000" field="mass_flow" startDate="2018-12-31T23:00:00.000000" host="omotes_influxdb">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="CUBIC_METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="4c8a3221-7941-4cdd-90b2-e162347fcbe9" measurement="Pipe1_ret" port="8096" database="fdbbf5ee-6e86-4c82-9926-4b59de482378_with_return_network" endDate="2018-12-31T23:00:00.000000" field="pressure_return" startDate="2018-12-31T23:00:00.000000" host="omotes_influxdb">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="e48fc06d-fce8-42ec-9158-88893c441f25" measurement="Pipe1_ret" port="8096" database="fdbbf5ee-6e86-4c82-9926-4b59de482378_with_return_network" endDate="2018-12-31T23:00:00.000000" field="temperature_return" startDate="2018-12-31T23:00:00.000000" host="omotes_influxdb">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="DEGREES_CELSIUS"/>
          </profile>
        </port>
      </asset>
    </area>
  </instance>
  <energySystemInformation xsi:type="esdl:EnergySystemInformation" id="c615f17e-c077-48c4-8a78-6ae05f8a908f">
    <quantityAndUnits xsi:type="esdl:QuantityAndUnits" id="f61a1799-bf04-416a-b15e-93097722ada7">
      <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" description="Power in MW" multiplier="MEGA" id="e9405fc8-5e57-4df5-8584-4babee7cdf1b" unit="WATT" physicalQuantity="POWER"/>
    </quantityAndUnits>
    <carriers xsi:type="esdl:Carriers" id="c27258b1-f4f6-4e09-a77a-ce466dbd82d2">
      <carrier xsi:type="esdl:HeatCommodity" supplyTemperature="80.0" id="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" name="HeatSupply"/>
      <carrier xsi:type="esdl:HeatCommodity" returnTemperature="40.0" id="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" name="HeatReturn"/>
    </carriers>
  </energySystemInformation>
</esdl:EnergySystem>
