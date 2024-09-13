<?xml version='1.0' encoding='UTF-8'?>
<esdl:EnergySystem xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:esdl="http://www.tno.nl/esdl" version="1" name="Untitled EnergySystem with return network" id="ba8e91da-c501-4408-bbd2-b7bb00beabd3" description="" esdlVersion="v2207">
  <energySystemInformation xsi:type="esdl:EnergySystemInformation" id="c615f17e-c077-48c4-8a78-6ae05f8a908f">
    <carriers xsi:type="esdl:Carriers" id="c27258b1-f4f6-4e09-a77a-ce466dbd82d2">
      <carrier xsi:type="esdl:HeatCommodity" id="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" supplyTemperature="80.0" name="HeatSupply"/>
      <carrier xsi:type="esdl:HeatCommodity" id="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" returnTemperature="40.0" name="HeatReturn"/>
    </carriers>
    <quantityAndUnits xsi:type="esdl:QuantityAndUnits" id="f61a1799-bf04-416a-b15e-93097722ada7">
      <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="e9405fc8-5e57-4df5-8584-4babee7cdf1b" unit="WATT" description="Power in MW" physicalQuantity="POWER" multiplier="MEGA"/>
    </quantityAndUnits>
  </energySystemInformation>
  <instance xsi:type="esdl:Instance" id="a357cbbe-f277-42b1-8456-cbbadc8ceb2e" name="Untitled Instance">
    <area xsi:type="esdl:Area" name="Untitled Area" id="e4002c22-abd5-43f6-81a8-e6b5f960bfa5">
      <asset xsi:type="esdl:HeatingDemand" name="HeatingDemand_48f3" id="48f3e425-2143-4dcd-9101-c7e22559e82b">
        <geometry xsi:type="esdl:Point" lon="4.63726043701172" CRS="WGS84" lat="52.158769628869045"/>
        <port xsi:type="esdl:InPort" carrier="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" id="af0904f7-ba1f-4e79-9040-71e08041601b" name="In" connectedTo="3f2dc09a-0cee-44bd-a337-cea55461a334">
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2019-01-01T00:00:00.000000" port="8096" host="omotes_influxdb" endDate="2019-01-01T02:00:00.000000" id="402ad1e2-7c98-4ee1-8374-9bbcf6e30c92" field="pressure_supply" database="fdbbf5ee-6e86-4c82-9926-4b59de482378_with_return_network" measurement="48f3e425-2143-4dcd-9101-c7e22559e82b">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2019-01-01T00:00:00.000000" port="8096" host="omotes_influxdb" endDate="2019-01-01T02:00:00.000000" id="ff0b936c-5021-4340-b47a-134ced62b53a" field="temperature_supply" database="fdbbf5ee-6e86-4c82-9926-4b59de482378_with_return_network" measurement="48f3e425-2143-4dcd-9101-c7e22559e82b">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="DEGREES_CELSIUS"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" carrier="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" connectedTo="422cb921-23d2-4410-9072-aaa5796a0620" id="e890f65f-80e7-46fa-8c52-5385324bf686" name="Out">
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2019-01-01T00:00:00.000000+0000" host="profiles.warmingup.info" port="443" endDate="2019-12-31T22:00:00.000000+0000" id="62d7e2a4-9919-4fa2-90f4-29e8f188919f" field="demand1_MW" database="energy_profiles" measurement="WarmingUp default profiles" filters="">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="e9405fc8-5e57-4df5-8584-4babee7cdf1b"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2019-01-01T00:00:00.000000" port="8096" host="omotes_influxdb" endDate="2019-01-01T02:00:00.000000" id="115db1f4-3f3d-4298-aaf3-5df0a2c22618" field="mass_flow" database="fdbbf5ee-6e86-4c82-9926-4b59de482378_with_return_network" measurement="48f3e425-2143-4dcd-9101-c7e22559e82b">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" perTimeUnit="SECOND" unit="CUBIC_METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2019-01-01T00:00:00.000000" port="8096" host="omotes_influxdb" endDate="2019-01-01T02:00:00.000000" id="9e68a391-cc5a-4375-b8c2-c7e56af4a53b" field="pressure_return" database="fdbbf5ee-6e86-4c82-9926-4b59de482378_with_return_network" measurement="48f3e425-2143-4dcd-9101-c7e22559e82b">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2019-01-01T00:00:00.000000" port="8096" host="omotes_influxdb" endDate="2019-01-01T02:00:00.000000" id="1ef294f0-8db8-42ff-8d1f-c75099788c05" field="temperature_return" database="fdbbf5ee-6e86-4c82-9926-4b59de482378_with_return_network" measurement="48f3e425-2143-4dcd-9101-c7e22559e82b">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="DEGREES_CELSIUS"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:GenericProducer" power="5000000.0" name="GenericProducer_cf3d" id="cf3d4b5e-437f-4c1b-a7f9-7fd7e8a269b4">
        <geometry xsi:type="esdl:Point" lon="4.558639526367188" CRS="WGS84" lat="52.148869383489114"/>
        <port xsi:type="esdl:OutPort" carrier="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" connectedTo="a9793a5e-df4f-4795-8079-015dfaf57f82" id="2d818e3d-8a39-4cec-afa0-f6dbbfd50696" name="Out">
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2019-01-01T00:00:00.000000" port="8096" host="omotes_influxdb" endDate="2019-01-01T02:00:00.000000" id="9e60a247-402c-42b0-a509-659a9cdf20e0" field="mass_flow" database="fdbbf5ee-6e86-4c82-9926-4b59de482378_with_return_network" measurement="cf3d4b5e-437f-4c1b-a7f9-7fd7e8a269b4">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" perTimeUnit="SECOND" unit="CUBIC_METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2019-01-01T00:00:00.000000" port="8096" host="omotes_influxdb" endDate="2019-01-01T02:00:00.000000" id="aedf596e-d4c2-4d28-ad26-8032ef0c3f46" field="pressure_return" database="fdbbf5ee-6e86-4c82-9926-4b59de482378_with_return_network" measurement="cf3d4b5e-437f-4c1b-a7f9-7fd7e8a269b4">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2019-01-01T00:00:00.000000" port="8096" host="omotes_influxdb" endDate="2019-01-01T02:00:00.000000" id="3dac8d21-4b03-4b4f-b0aa-68dc463441dc" field="temperature_return" database="fdbbf5ee-6e86-4c82-9926-4b59de482378_with_return_network" measurement="cf3d4b5e-437f-4c1b-a7f9-7fd7e8a269b4">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="DEGREES_CELSIUS"/>
          </profile>
        </port>
        <port xsi:type="esdl:InPort" carrier="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" id="9c258b9d-3149-4720-8931-f4bef1080ec1" name="In" connectedTo="935fb733-9f76-4a8d-8899-1ad8689a4b12">
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2019-01-01T00:00:00.000000" port="8096" host="omotes_influxdb" endDate="2019-01-01T02:00:00.000000" id="7e548ef8-51a9-4138-b21c-1e31a14f6035" field="pressure_supply" database="fdbbf5ee-6e86-4c82-9926-4b59de482378_with_return_network" measurement="cf3d4b5e-437f-4c1b-a7f9-7fd7e8a269b4">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2019-01-01T00:00:00.000000" port="8096" host="omotes_influxdb" endDate="2019-01-01T02:00:00.000000" id="6cca8bbe-45b0-4145-aa96-10feca020ab3" field="temperature_supply" database="fdbbf5ee-6e86-4c82-9926-4b59de482378_with_return_network" measurement="cf3d4b5e-437f-4c1b-a7f9-7fd7e8a269b4">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="DEGREES_CELSIUS"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Pipe" innerDiameter="0.5" name="Pipe1" id="Pipe1" related="Pipe1_ret" length="6267.0">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lon="4.558639526367188" lat="52.148869383489114"/>
          <point xsi:type="esdl:Point" lon="4.594688415527345" lat="52.16740421514521"/>
          <point xsi:type="esdl:Point" lon="4.63726043701172" lat="52.158769628869045"/>
        </geometry>
        <port xsi:type="esdl:InPort" carrier="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" id="a9793a5e-df4f-4795-8079-015dfaf57f82" name="In" connectedTo="2d818e3d-8a39-4cec-afa0-f6dbbfd50696">
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2019-01-01T00:00:00.000000" port="8096" host="omotes_influxdb" endDate="2019-01-01T02:00:00.000000" id="af452fab-3223-49d4-8d4f-3e457796bf84" field="pressure_supply" database="fdbbf5ee-6e86-4c82-9926-4b59de482378_with_return_network" measurement="Pipe1">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2019-01-01T00:00:00.000000" port="8096" host="omotes_influxdb" endDate="2019-01-01T02:00:00.000000" id="3ae9188c-2dc3-40dc-ab1d-fb311d154e12" field="temperature_supply" database="fdbbf5ee-6e86-4c82-9926-4b59de482378_with_return_network" measurement="Pipe1">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="DEGREES_CELSIUS"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" carrier="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" connectedTo="af0904f7-ba1f-4e79-9040-71e08041601b" id="3f2dc09a-0cee-44bd-a337-cea55461a334" name="Out">
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2019-01-01T00:00:00.000000" port="8096" host="omotes_influxdb" endDate="2019-01-01T02:00:00.000000" id="98d95211-deb4-4d3e-9aab-9fd1e3f4060e" field="mass_flow" database="fdbbf5ee-6e86-4c82-9926-4b59de482378_with_return_network" measurement="Pipe1">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" perTimeUnit="SECOND" unit="CUBIC_METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2019-01-01T00:00:00.000000" port="8096" host="omotes_influxdb" endDate="2019-01-01T02:00:00.000000" id="3ce8190a-a922-46df-9938-038c86c2b0e4" field="pressure_return" database="fdbbf5ee-6e86-4c82-9926-4b59de482378_with_return_network" measurement="Pipe1">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2019-01-01T00:00:00.000000" port="8096" host="omotes_influxdb" endDate="2019-01-01T02:00:00.000000" id="13a80ad8-f9b0-41c6-9feb-d5ddbfd55c24" field="temperature_return" database="fdbbf5ee-6e86-4c82-9926-4b59de482378_with_return_network" measurement="Pipe1">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="DEGREES_CELSIUS"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Pipe" innerDiameter="0.5" name="Pipe1_ret" id="Pipe1_ret" related="Pipe1" length="6267.0">
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" lon="4.636858896813017" CRS="WGS84" lat="52.15885962895904"/>
          <point xsi:type="esdl:Point" lon="4.5942969754153795" CRS="WGS84" lat="52.16749421523521"/>
          <point xsi:type="esdl:Point" lon="4.558225705568235" CRS="WGS84" lat="52.14895938357911"/>
        </geometry>
        <port xsi:type="esdl:InPort" carrier="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" id="422cb921-23d2-4410-9072-aaa5796a0620" name="In_ret" connectedTo="e890f65f-80e7-46fa-8c52-5385324bf686">
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2019-01-01T00:00:00.000000" port="8096" host="omotes_influxdb" endDate="2019-01-01T02:00:00.000000" id="924a241e-492f-4fef-9e39-23297444c8ea" field="pressure_supply" database="fdbbf5ee-6e86-4c82-9926-4b59de482378_with_return_network" measurement="Pipe1_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2019-01-01T00:00:00.000000" port="8096" host="omotes_influxdb" endDate="2019-01-01T02:00:00.000000" id="db05e06b-10e9-4a1f-8c5f-41d8cb3eddc1" field="temperature_supply" database="fdbbf5ee-6e86-4c82-9926-4b59de482378_with_return_network" measurement="Pipe1_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="DEGREES_CELSIUS"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" carrier="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" connectedTo="9c258b9d-3149-4720-8931-f4bef1080ec1" id="935fb733-9f76-4a8d-8899-1ad8689a4b12" name="Out_ret">
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2019-01-01T00:00:00.000000" port="8096" host="omotes_influxdb" endDate="2019-01-01T02:00:00.000000" id="5ef423dc-4bb9-47e2-acd1-8513e2ac06f8" field="mass_flow" database="fdbbf5ee-6e86-4c82-9926-4b59de482378_with_return_network" measurement="Pipe1_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" perTimeUnit="SECOND" unit="CUBIC_METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2019-01-01T00:00:00.000000" port="8096" host="omotes_influxdb" endDate="2019-01-01T02:00:00.000000" id="6b9ae187-d3eb-471a-8e6f-4cbeab5f2081" field="pressure_return" database="fdbbf5ee-6e86-4c82-9926-4b59de482378_with_return_network" measurement="Pipe1_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2019-01-01T00:00:00.000000" port="8096" host="omotes_influxdb" endDate="2019-01-01T02:00:00.000000" id="02600b1f-da94-4364-a262-df7277f586fb" field="temperature_return" database="fdbbf5ee-6e86-4c82-9926-4b59de482378_with_return_network" measurement="Pipe1_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="DEGREES_CELSIUS"/>
          </profile>
        </port>
      </asset>
    </area>
  </instance>
</esdl:EnergySystem>
