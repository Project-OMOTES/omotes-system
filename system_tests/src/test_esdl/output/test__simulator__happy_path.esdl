<?xml version='1.0' encoding='UTF-8'?>
<esdl:EnergySystem xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:esdl="http://www.tno.nl/esdl" name="Untitled EnergySystem with return network_simulator" id="2c00553c-3593-4de8-bca5-be23c21a4ac6" description="" esdlVersion="v2207" version="1">
  <energySystemInformation xsi:type="esdl:EnergySystemInformation" id="c615f17e-c077-48c4-8a78-6ae05f8a908f">
    <carriers xsi:type="esdl:Carriers" id="c27258b1-f4f6-4e09-a77a-ce466dbd82d2">
      <carrier xsi:type="esdl:HeatCommodity" id="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" name="HeatSupply" supplyTemperature="80.0"/>
      <carrier xsi:type="esdl:HeatCommodity" id="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" returnTemperature="40.0" name="HeatReturn"/>
    </carriers>
    <quantityAndUnits xsi:type="esdl:QuantityAndUnits" id="f61a1799-bf04-416a-b15e-93097722ada7">
      <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="e9405fc8-5e57-4df5-8584-4babee7cdf1b" description="Power in MW" physicalQuantity="POWER" multiplier="MEGA" unit="WATT"/>
    </quantityAndUnits>
    <dataSources xsi:type="esdl:DataSources" id="86ef7c1c-68fc-4c5f-9fae-130aa63b5fb9">
      <dataSource xsi:type="esdl:DataSource" id="bfbeedb3-9a45-44d4-aa6a-e01feb8b1ac9" name="Omotes simulator core run" description="This profile is a simulation results obtained with the Omotes simulator core" reference="https://simulator-core.readthedocs.io/en/latest/" releaseDate="2025-12-16T12:42:43.608476" version="0.0.28" license="GNU GENERAL PUBLIC LICENSE" author="Deltares/TNO" contactDetails="https://github.com/Project-OMOTES"/>
    </dataSources>
  </energySystemInformation>
  <instance xsi:type="esdl:Instance" id="a357cbbe-f277-42b1-8456-cbbadc8ceb2e" name="Untitled Instance">
    <area xsi:type="esdl:Area" id="e4002c22-abd5-43f6-81a8-e6b5f960bfa5" name="Untitled Area">
      <asset xsi:type="esdl:HeatingDemand" name="HeatingDemand_48f3" id="48f3e425-2143-4dcd-9101-c7e22559e82b">
        <geometry xsi:type="esdl:Point" lon="4.63726043701172" lat="52.158769628869045" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" id="af0904f7-ba1f-4e79-9040-71e08041601b" name="In" connectedTo="3f2dc09a-0cee-44bd-a337-cea55461a334" carrier="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a">
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="10a59ada-2a2a-4d3d-9d2a-8f71ba91986c" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="2c00553c-3593-4de8-bca5-be23c21a4ac6" filters="&quot;assetId&quot;='48f3e425-2143-4dcd-9101-c7e22559e82b'" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" field="mass_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="bfbeedb3-9a45-44d4-aa6a-e01feb8b1ac9"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" multiplier="KILO" unit="GRAM" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="13388e5d-d396-4244-b0b4-210cbd74346b" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="2c00553c-3593-4de8-bca5-be23c21a4ac6" filters="&quot;assetId&quot;='48f3e425-2143-4dcd-9101-c7e22559e82b'" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" field="pressure">
            <dataSource xsi:type="esdl:DataSourceReference" reference="bfbeedb3-9a45-44d4-aa6a-e01feb8b1ac9"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="478133fa-f3ad-4b6f-b6d6-8e9494404ecd" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="2c00553c-3593-4de8-bca5-be23c21a4ac6" filters="&quot;assetId&quot;='48f3e425-2143-4dcd-9101-c7e22559e82b'" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" field="temperature">
            <dataSource xsi:type="esdl:DataSourceReference" reference="bfbeedb3-9a45-44d4-aa6a-e01feb8b1ac9"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="85fcc0d4-04ae-4282-a542-49233a9a201f" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="2c00553c-3593-4de8-bca5-be23c21a4ac6" filters="&quot;assetId&quot;='48f3e425-2143-4dcd-9101-c7e22559e82b'" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" field="volume_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="bfbeedb3-9a45-44d4-aa6a-e01feb8b1ac9"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" id="e890f65f-80e7-46fa-8c52-5385324bf686" name="Out" connectedTo="422cb921-23d2-4410-9072-aaa5796a0620" carrier="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret">
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2019-01-01T00:00:00.000000+0000" filters="" id="62d7e2a4-9919-4fa2-90f4-29e8f188919f" measurement="WarmingUp default profiles" database="energy_profiles" host="profiles.warmingup.info" port="443" field="demand1_MW" endDate="2019-12-31T22:00:00.000000+0000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="e9405fc8-5e57-4df5-8584-4babee7cdf1b"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="0e1853d9-734d-4c4d-b3be-ee2f0c3f1350" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="2c00553c-3593-4de8-bca5-be23c21a4ac6" filters="&quot;assetId&quot;='48f3e425-2143-4dcd-9101-c7e22559e82b'" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" field="mass_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="bfbeedb3-9a45-44d4-aa6a-e01feb8b1ac9"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" multiplier="KILO" unit="GRAM" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="53ad6cf3-df8b-470e-aaed-8f1d96468bf7" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="2c00553c-3593-4de8-bca5-be23c21a4ac6" filters="&quot;assetId&quot;='48f3e425-2143-4dcd-9101-c7e22559e82b'" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" field="pressure">
            <dataSource xsi:type="esdl:DataSourceReference" reference="bfbeedb3-9a45-44d4-aa6a-e01feb8b1ac9"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="2261d6c5-d5a8-475f-a16c-8feb6ee2787a" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="2c00553c-3593-4de8-bca5-be23c21a4ac6" filters="&quot;assetId&quot;='48f3e425-2143-4dcd-9101-c7e22559e82b'" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" field="temperature">
            <dataSource xsi:type="esdl:DataSourceReference" reference="bfbeedb3-9a45-44d4-aa6a-e01feb8b1ac9"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="c5dedadc-9382-4a24-b346-411669cd3a23" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="2c00553c-3593-4de8-bca5-be23c21a4ac6" filters="&quot;assetId&quot;='48f3e425-2143-4dcd-9101-c7e22559e82b'" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" field="volume_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="bfbeedb3-9a45-44d4-aa6a-e01feb8b1ac9"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="9a57d2ff-78a9-4df2-bd16-0da4e6b73c67" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="2c00553c-3593-4de8-bca5-be23c21a4ac6" filters="&quot;assetId&quot;='48f3e425-2143-4dcd-9101-c7e22559e82b'" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" field="heat_demand_set_point">
            <dataSource xsi:type="esdl:DataSourceReference" reference="bfbeedb3-9a45-44d4-aa6a-e01feb8b1ac9"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="72fc8463-c448-4c21-89d1-36d6b119f994" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="2c00553c-3593-4de8-bca5-be23c21a4ac6" filters="&quot;assetId&quot;='48f3e425-2143-4dcd-9101-c7e22559e82b'" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" field="heat_demand">
            <dataSource xsi:type="esdl:DataSourceReference" reference="bfbeedb3-9a45-44d4-aa6a-e01feb8b1ac9"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:GenericProducer" power="5000000.0" name="GenericProducer_cf3d" id="cf3d4b5e-437f-4c1b-a7f9-7fd7e8a269b4">
        <geometry xsi:type="esdl:Point" lon="4.558639526367188" lat="52.148869383489114" CRS="WGS84"/>
        <port xsi:type="esdl:OutPort" id="2d818e3d-8a39-4cec-afa0-f6dbbfd50696" name="Out" connectedTo="a9793a5e-df4f-4795-8079-015dfaf57f82" carrier="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a">
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="e1b71897-3ce5-4db8-af4d-f8a5483552ff" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="2c00553c-3593-4de8-bca5-be23c21a4ac6" filters="&quot;assetId&quot;='cf3d4b5e-437f-4c1b-a7f9-7fd7e8a269b4'" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" field="mass_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="bfbeedb3-9a45-44d4-aa6a-e01feb8b1ac9"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" multiplier="KILO" unit="GRAM" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="dd36f7ad-f20e-4354-a253-4716ce818764" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="2c00553c-3593-4de8-bca5-be23c21a4ac6" filters="&quot;assetId&quot;='cf3d4b5e-437f-4c1b-a7f9-7fd7e8a269b4'" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" field="pressure">
            <dataSource xsi:type="esdl:DataSourceReference" reference="bfbeedb3-9a45-44d4-aa6a-e01feb8b1ac9"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="2d98f940-83b2-4cf4-a2b2-280ad79731a1" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="2c00553c-3593-4de8-bca5-be23c21a4ac6" filters="&quot;assetId&quot;='cf3d4b5e-437f-4c1b-a7f9-7fd7e8a269b4'" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" field="temperature">
            <dataSource xsi:type="esdl:DataSourceReference" reference="bfbeedb3-9a45-44d4-aa6a-e01feb8b1ac9"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="f82ea047-5ec8-483d-8326-38a5d9c15ee5" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="2c00553c-3593-4de8-bca5-be23c21a4ac6" filters="&quot;assetId&quot;='cf3d4b5e-437f-4c1b-a7f9-7fd7e8a269b4'" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" field="volume_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="bfbeedb3-9a45-44d4-aa6a-e01feb8b1ac9"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="45bdb8f8-2ca9-4c00-89a2-5b10fd303533" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="2c00553c-3593-4de8-bca5-be23c21a4ac6" filters="&quot;assetId&quot;='cf3d4b5e-437f-4c1b-a7f9-7fd7e8a269b4'" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" field="heat_supply_set_point">
            <dataSource xsi:type="esdl:DataSourceReference" reference="bfbeedb3-9a45-44d4-aa6a-e01feb8b1ac9"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="9a4a3fc7-a8ee-46c3-a4ea-e41de5f34b2d" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="2c00553c-3593-4de8-bca5-be23c21a4ac6" filters="&quot;assetId&quot;='cf3d4b5e-437f-4c1b-a7f9-7fd7e8a269b4'" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" field="heat_supplied">
            <dataSource xsi:type="esdl:DataSourceReference" reference="bfbeedb3-9a45-44d4-aa6a-e01feb8b1ac9"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
        </port>
        <port xsi:type="esdl:InPort" id="9c258b9d-3149-4720-8931-f4bef1080ec1" name="In" connectedTo="935fb733-9f76-4a8d-8899-1ad8689a4b12" carrier="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret">
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="04793417-8dae-499f-ab3c-a4bc09ae2c3f" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="2c00553c-3593-4de8-bca5-be23c21a4ac6" filters="&quot;assetId&quot;='cf3d4b5e-437f-4c1b-a7f9-7fd7e8a269b4'" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" field="mass_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="bfbeedb3-9a45-44d4-aa6a-e01feb8b1ac9"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" multiplier="KILO" unit="GRAM" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="10c01891-71e4-49fa-970b-51e022f3f921" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="2c00553c-3593-4de8-bca5-be23c21a4ac6" filters="&quot;assetId&quot;='cf3d4b5e-437f-4c1b-a7f9-7fd7e8a269b4'" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" field="pressure">
            <dataSource xsi:type="esdl:DataSourceReference" reference="bfbeedb3-9a45-44d4-aa6a-e01feb8b1ac9"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="de7947af-4dc0-41b2-a2d0-995c51188fb6" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="2c00553c-3593-4de8-bca5-be23c21a4ac6" filters="&quot;assetId&quot;='cf3d4b5e-437f-4c1b-a7f9-7fd7e8a269b4'" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" field="temperature">
            <dataSource xsi:type="esdl:DataSourceReference" reference="bfbeedb3-9a45-44d4-aa6a-e01feb8b1ac9"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="1575b01c-6117-469c-822f-e5559310fa64" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="2c00553c-3593-4de8-bca5-be23c21a4ac6" filters="&quot;assetId&quot;='cf3d4b5e-437f-4c1b-a7f9-7fd7e8a269b4'" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" field="volume_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="bfbeedb3-9a45-44d4-aa6a-e01feb8b1ac9"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Pipe" name="Pipe1" length="6267.0" id="Pipe1" innerDiameter="0.5" related="Pipe1_ret">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lon="4.558639526367188" lat="52.148869383489114"/>
          <point xsi:type="esdl:Point" lon="4.594688415527345" lat="52.16740421514521"/>
          <point xsi:type="esdl:Point" lon="4.63726043701172" lat="52.158769628869045"/>
        </geometry>
        <port xsi:type="esdl:InPort" id="a9793a5e-df4f-4795-8079-015dfaf57f82" name="In" connectedTo="2d818e3d-8a39-4cec-afa0-f6dbbfd50696" carrier="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a">
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="401a40b7-bdb2-4041-b3fb-ba61d4278662" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="2c00553c-3593-4de8-bca5-be23c21a4ac6" filters="&quot;assetId&quot;='Pipe1'" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" field="mass_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="bfbeedb3-9a45-44d4-aa6a-e01feb8b1ac9"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" multiplier="KILO" unit="GRAM" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="9d938d7c-6dcd-4ec1-8327-14b602eac83e" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="2c00553c-3593-4de8-bca5-be23c21a4ac6" filters="&quot;assetId&quot;='Pipe1'" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" field="pressure">
            <dataSource xsi:type="esdl:DataSourceReference" reference="bfbeedb3-9a45-44d4-aa6a-e01feb8b1ac9"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="4ec0a711-2f54-4f60-90fd-e4e758dfe2c6" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="2c00553c-3593-4de8-bca5-be23c21a4ac6" filters="&quot;assetId&quot;='Pipe1'" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" field="temperature">
            <dataSource xsi:type="esdl:DataSourceReference" reference="bfbeedb3-9a45-44d4-aa6a-e01feb8b1ac9"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="bcf71f64-0d46-41c8-b856-b85716f0d552" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="2c00553c-3593-4de8-bca5-be23c21a4ac6" filters="&quot;assetId&quot;='Pipe1'" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" field="volume_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="bfbeedb3-9a45-44d4-aa6a-e01feb8b1ac9"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="73071e39-9cc6-46f8-9b79-eb5f15c90e1f" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="2c00553c-3593-4de8-bca5-be23c21a4ac6" filters="&quot;assetId&quot;='Pipe1'" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" field="velocity">
            <dataSource xsi:type="esdl:DataSourceReference" reference="bfbeedb3-9a45-44d4-aa6a-e01feb8b1ac9"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="SPEED" unit="METRE" perTimeUnit="SECOND"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" id="3f2dc09a-0cee-44bd-a337-cea55461a334" name="Out" connectedTo="af0904f7-ba1f-4e79-9040-71e08041601b" carrier="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a">
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="11827930-5c12-4566-92a2-2c14dd8f86cb" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="2c00553c-3593-4de8-bca5-be23c21a4ac6" filters="&quot;assetId&quot;='Pipe1'" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" field="mass_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="bfbeedb3-9a45-44d4-aa6a-e01feb8b1ac9"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" multiplier="KILO" unit="GRAM" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="b7eab5c3-38b3-41fd-a1f0-d8a42dea4033" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="2c00553c-3593-4de8-bca5-be23c21a4ac6" filters="&quot;assetId&quot;='Pipe1'" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" field="pressure">
            <dataSource xsi:type="esdl:DataSourceReference" reference="bfbeedb3-9a45-44d4-aa6a-e01feb8b1ac9"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="77f1fcb2-398b-4bd5-9170-9676a6ef9eeb" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="2c00553c-3593-4de8-bca5-be23c21a4ac6" filters="&quot;assetId&quot;='Pipe1'" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" field="temperature">
            <dataSource xsi:type="esdl:DataSourceReference" reference="bfbeedb3-9a45-44d4-aa6a-e01feb8b1ac9"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="9b89263c-b8fa-4b14-8e40-2259515f3552" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="2c00553c-3593-4de8-bca5-be23c21a4ac6" filters="&quot;assetId&quot;='Pipe1'" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" field="volume_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="bfbeedb3-9a45-44d4-aa6a-e01feb8b1ac9"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="1112baf8-40b8-4605-be59-dbca8ee388bb" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="2c00553c-3593-4de8-bca5-be23c21a4ac6" filters="&quot;assetId&quot;='Pipe1'" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" field="velocity">
            <dataSource xsi:type="esdl:DataSourceReference" reference="bfbeedb3-9a45-44d4-aa6a-e01feb8b1ac9"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="SPEED" unit="METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="104a096d-5e43-42b7-a4f2-70183f20249b" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="2c00553c-3593-4de8-bca5-be23c21a4ac6" filters="&quot;assetId&quot;='Pipe1'" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" field="pressure_loss">
            <dataSource xsi:type="esdl:DataSourceReference" reference="bfbeedb3-9a45-44d4-aa6a-e01feb8b1ac9"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="2fe9c0c2-6752-4c0f-aff6-bc4a242c13a7" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="2c00553c-3593-4de8-bca5-be23c21a4ac6" filters="&quot;assetId&quot;='Pipe1'" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" field="pressure_loss_per_length">
            <dataSource xsi:type="esdl:DataSourceReference" reference="bfbeedb3-9a45-44d4-aa6a-e01feb8b1ac9"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="21cc0c56-637a-413c-a7fe-9508f63242e9" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="2c00553c-3593-4de8-bca5-be23c21a4ac6" filters="&quot;assetId&quot;='Pipe1'" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" field="heat_loss">
            <dataSource xsi:type="esdl:DataSourceReference" reference="bfbeedb3-9a45-44d4-aa6a-e01feb8b1ac9"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Pipe" name="Pipe1_ret" id="Pipe1_ret" length="6267.0" innerDiameter="0.5" related="Pipe1">
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" lon="4.636858896813017" lat="52.15885962895904" CRS="WGS84"/>
          <point xsi:type="esdl:Point" lon="4.5942969754153795" lat="52.16749421523521" CRS="WGS84"/>
          <point xsi:type="esdl:Point" lon="4.558225705568235" lat="52.14895938357911" CRS="WGS84"/>
        </geometry>
        <port xsi:type="esdl:InPort" id="422cb921-23d2-4410-9072-aaa5796a0620" name="In_ret" connectedTo="e890f65f-80e7-46fa-8c52-5385324bf686" carrier="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret">
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="a878f8ab-820a-4ddd-9cd7-0963d56cca44" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="2c00553c-3593-4de8-bca5-be23c21a4ac6" filters="&quot;assetId&quot;='Pipe1_ret'" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" field="mass_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="bfbeedb3-9a45-44d4-aa6a-e01feb8b1ac9"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" multiplier="KILO" unit="GRAM" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="6864fd1d-aa4f-4be3-84a5-789a9eff9d8a" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="2c00553c-3593-4de8-bca5-be23c21a4ac6" filters="&quot;assetId&quot;='Pipe1_ret'" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" field="pressure">
            <dataSource xsi:type="esdl:DataSourceReference" reference="bfbeedb3-9a45-44d4-aa6a-e01feb8b1ac9"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="fc298b68-2a83-483d-835b-5bedc0b9dcca" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="2c00553c-3593-4de8-bca5-be23c21a4ac6" filters="&quot;assetId&quot;='Pipe1_ret'" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" field="temperature">
            <dataSource xsi:type="esdl:DataSourceReference" reference="bfbeedb3-9a45-44d4-aa6a-e01feb8b1ac9"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="5c2ef876-9600-47ce-9954-38da67049481" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="2c00553c-3593-4de8-bca5-be23c21a4ac6" filters="&quot;assetId&quot;='Pipe1_ret'" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" field="volume_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="bfbeedb3-9a45-44d4-aa6a-e01feb8b1ac9"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="c4fc8482-87ec-4512-ae79-28a8903da36c" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="2c00553c-3593-4de8-bca5-be23c21a4ac6" filters="&quot;assetId&quot;='Pipe1_ret'" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" field="velocity">
            <dataSource xsi:type="esdl:DataSourceReference" reference="bfbeedb3-9a45-44d4-aa6a-e01feb8b1ac9"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="SPEED" unit="METRE" perTimeUnit="SECOND"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" id="935fb733-9f76-4a8d-8899-1ad8689a4b12" name="Out_ret" connectedTo="9c258b9d-3149-4720-8931-f4bef1080ec1" carrier="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret">
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="1f1593a2-0003-4658-8ea5-fdf11d4c0f33" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="2c00553c-3593-4de8-bca5-be23c21a4ac6" filters="&quot;assetId&quot;='Pipe1_ret'" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" field="mass_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="bfbeedb3-9a45-44d4-aa6a-e01feb8b1ac9"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" multiplier="KILO" unit="GRAM" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="9e97c16c-9d34-453b-9246-c5814068bff9" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="2c00553c-3593-4de8-bca5-be23c21a4ac6" filters="&quot;assetId&quot;='Pipe1_ret'" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" field="pressure">
            <dataSource xsi:type="esdl:DataSourceReference" reference="bfbeedb3-9a45-44d4-aa6a-e01feb8b1ac9"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="5b7224ad-c7cb-4bf5-88b0-349fa84f874a" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="2c00553c-3593-4de8-bca5-be23c21a4ac6" filters="&quot;assetId&quot;='Pipe1_ret'" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" field="temperature">
            <dataSource xsi:type="esdl:DataSourceReference" reference="bfbeedb3-9a45-44d4-aa6a-e01feb8b1ac9"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="b24ef909-286f-4f6c-a13e-830cf1e79670" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="2c00553c-3593-4de8-bca5-be23c21a4ac6" filters="&quot;assetId&quot;='Pipe1_ret'" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" field="volume_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="bfbeedb3-9a45-44d4-aa6a-e01feb8b1ac9"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="3ac51c28-d47b-418d-a2e3-fae63bcb1ca5" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="2c00553c-3593-4de8-bca5-be23c21a4ac6" filters="&quot;assetId&quot;='Pipe1_ret'" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" field="velocity">
            <dataSource xsi:type="esdl:DataSourceReference" reference="bfbeedb3-9a45-44d4-aa6a-e01feb8b1ac9"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="SPEED" unit="METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="3cdc6334-c7e8-4260-880d-4fdb9dc8b4dd" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="2c00553c-3593-4de8-bca5-be23c21a4ac6" filters="&quot;assetId&quot;='Pipe1_ret'" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" field="pressure_loss">
            <dataSource xsi:type="esdl:DataSourceReference" reference="bfbeedb3-9a45-44d4-aa6a-e01feb8b1ac9"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="c757bf6d-5457-4c6d-9482-7e0224a1953a" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="2c00553c-3593-4de8-bca5-be23c21a4ac6" filters="&quot;assetId&quot;='Pipe1_ret'" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" field="pressure_loss_per_length">
            <dataSource xsi:type="esdl:DataSourceReference" reference="bfbeedb3-9a45-44d4-aa6a-e01feb8b1ac9"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="02d51248-c896-4829-bd6d-f6c48bbae050" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="2c00553c-3593-4de8-bca5-be23c21a4ac6" filters="&quot;assetId&quot;='Pipe1_ret'" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" field="heat_loss">
            <dataSource xsi:type="esdl:DataSourceReference" reference="bfbeedb3-9a45-44d4-aa6a-e01feb8b1ac9"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
        </port>
      </asset>
    </area>
  </instance>
</esdl:EnergySystem>
