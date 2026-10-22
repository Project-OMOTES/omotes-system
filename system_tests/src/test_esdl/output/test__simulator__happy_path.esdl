<?xml version='1.0' encoding='UTF-8'?>
<esdl:EnergySystem xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:esdl="http://www.tno.nl/esdl" name="Untitled EnergySystem with return network_test__simulator__happy_path" id="05bd9479-a6dd-473d-a3b4-7393cef113bb" description="" esdlVersion="v2207" version="1">
  <energySystemInformation xsi:type="esdl:EnergySystemInformation" id="c615f17e-c077-48c4-8a78-6ae05f8a908f">
    <carriers xsi:type="esdl:Carriers" id="c27258b1-f4f6-4e09-a77a-ce466dbd82d2">
      <carrier xsi:type="esdl:HeatCommodity" id="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" name="HeatSupply" supplyTemperature="80.0"/>
      <carrier xsi:type="esdl:HeatCommodity" id="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" returnTemperature="40.0" name="HeatReturn"/>
    </carriers>
    <quantityAndUnits xsi:type="esdl:QuantityAndUnits" id="f61a1799-bf04-416a-b15e-93097722ada7">
      <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="e9405fc8-5e57-4df5-8584-4babee7cdf1b" description="Power in MW" physicalQuantity="POWER" multiplier="MEGA" unit="WATT"/>
    </quantityAndUnits>
    <dataSources xsi:type="esdl:DataSources" id="d01acd66-3503-4846-be75-06ebcb37cffe">
      <dataSource xsi:type="esdl:DataSource" id="4e65d43a-ae82-4082-affc-35534687960d" name="Omotes simulator core run" description="This profile is a simulation results obtained with the Omotes simulator core" reference="https://simulator-core.readthedocs.io/en/latest/" releaseDate="2026-08-24T14:25:05.230281" version="0.0.30" license="GNU GENERAL PUBLIC LICENSE" author="Deltares/TNO" contactDetails="https://github.com/Project-OMOTES"/>
    </dataSources>
  </energySystemInformation>
  <instance xsi:type="esdl:Instance" id="a357cbbe-f277-42b1-8456-cbbadc8ceb2e" name="Untitled Instance">
    <area xsi:type="esdl:Area" id="e4002c22-abd5-43f6-81a8-e6b5f960bfa5" name="Untitled Area">
      <asset xsi:type="esdl:HeatingDemand" name="HeatingDemand_48f3" id="48f3e425-2143-4dcd-9101-c7e22559e82b">
        <geometry xsi:type="esdl:Point" lon="4.63726043701172" lat="52.158769628869045" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" id="af0904f7-ba1f-4e79-9040-71e08041601b" name="In" connectedTo="3f2dc09a-0cee-44bd-a337-cea55461a334" carrier="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a">
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="a16aa4e7-4ccd-446d-b9f3-853142eb7cb6" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="05bd9479-a6dd-473d-a3b4-7393cef113bb" filters="&quot;assetId&quot;='48f3e425-2143-4dcd-9101-c7e22559e82b'" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" field="mass_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="4e65d43a-ae82-4082-affc-35534687960d"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" multiplier="KILO" unit="GRAM" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="116b330a-7a47-4a49-9b6d-67e1fe2c3b11" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="05bd9479-a6dd-473d-a3b4-7393cef113bb" filters="&quot;assetId&quot;='48f3e425-2143-4dcd-9101-c7e22559e82b'" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" field="pressure">
            <dataSource xsi:type="esdl:DataSourceReference" reference="4e65d43a-ae82-4082-affc-35534687960d"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="23d40741-2750-4fc3-a12a-867cfc270cf4" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="05bd9479-a6dd-473d-a3b4-7393cef113bb" filters="&quot;assetId&quot;='48f3e425-2143-4dcd-9101-c7e22559e82b'" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" field="temperature">
            <dataSource xsi:type="esdl:DataSourceReference" reference="4e65d43a-ae82-4082-affc-35534687960d"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="f101669a-88dc-4f18-8f75-9fac17cf1175" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="05bd9479-a6dd-473d-a3b4-7393cef113bb" filters="&quot;assetId&quot;='48f3e425-2143-4dcd-9101-c7e22559e82b'" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" field="volume_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="4e65d43a-ae82-4082-affc-35534687960d"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" id="e890f65f-80e7-46fa-8c52-5385324bf686" name="Out" connectedTo="422cb921-23d2-4410-9072-aaa5796a0620" carrier="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret">
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2019-01-01T00:00:00.000000+0000" filters="" id="62d7e2a4-9919-4fa2-90f4-29e8f188919f" measurement="WarmingUp default profiles" database="energy_profiles" host="profiles.warmingup.info" port="443" field="demand1_MW" endDate="2019-12-31T22:00:00.000000+0000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="e9405fc8-5e57-4df5-8584-4babee7cdf1b"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="8e72237d-0fe0-4f1b-882e-23c4ac487d31" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="05bd9479-a6dd-473d-a3b4-7393cef113bb" filters="&quot;assetId&quot;='48f3e425-2143-4dcd-9101-c7e22559e82b'" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" field="mass_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="4e65d43a-ae82-4082-affc-35534687960d"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" multiplier="KILO" unit="GRAM" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="a9f72b0e-97d4-4e2d-920b-0e60c9d21e7e" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="05bd9479-a6dd-473d-a3b4-7393cef113bb" filters="&quot;assetId&quot;='48f3e425-2143-4dcd-9101-c7e22559e82b'" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" field="pressure">
            <dataSource xsi:type="esdl:DataSourceReference" reference="4e65d43a-ae82-4082-affc-35534687960d"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="16c9d599-2e82-4cf5-90a5-76bc73c5dc6e" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="05bd9479-a6dd-473d-a3b4-7393cef113bb" filters="&quot;assetId&quot;='48f3e425-2143-4dcd-9101-c7e22559e82b'" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" field="temperature">
            <dataSource xsi:type="esdl:DataSourceReference" reference="4e65d43a-ae82-4082-affc-35534687960d"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="673104d8-47b0-4776-8622-b86d5152ac38" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="05bd9479-a6dd-473d-a3b4-7393cef113bb" filters="&quot;assetId&quot;='48f3e425-2143-4dcd-9101-c7e22559e82b'" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" field="volume_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="4e65d43a-ae82-4082-affc-35534687960d"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="047262b0-91f8-49b5-bbf5-b46a7bd2e5bc" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="05bd9479-a6dd-473d-a3b4-7393cef113bb" filters="&quot;assetId&quot;='48f3e425-2143-4dcd-9101-c7e22559e82b'" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" field="heat_demand_set_point">
            <dataSource xsi:type="esdl:DataSourceReference" reference="4e65d43a-ae82-4082-affc-35534687960d"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="e4cebbd9-50e3-4201-a1f9-a30a04d31fcd" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="05bd9479-a6dd-473d-a3b4-7393cef113bb" filters="&quot;assetId&quot;='48f3e425-2143-4dcd-9101-c7e22559e82b'" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" field="heat_demand">
            <dataSource xsi:type="esdl:DataSourceReference" reference="4e65d43a-ae82-4082-affc-35534687960d"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:GenericProducer" power="5000000.0" name="GenericProducer_cf3d" id="cf3d4b5e-437f-4c1b-a7f9-7fd7e8a269b4">
        <geometry xsi:type="esdl:Point" lon="4.558639526367188" lat="52.148869383489114" CRS="WGS84"/>
        <port xsi:type="esdl:OutPort" id="2d818e3d-8a39-4cec-afa0-f6dbbfd50696" name="Out" connectedTo="a9793a5e-df4f-4795-8079-015dfaf57f82" carrier="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a">
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="65660dde-8144-4b09-bcdd-b7b9376c2529" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="05bd9479-a6dd-473d-a3b4-7393cef113bb" filters="&quot;assetId&quot;='cf3d4b5e-437f-4c1b-a7f9-7fd7e8a269b4'" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" field="mass_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="4e65d43a-ae82-4082-affc-35534687960d"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" multiplier="KILO" unit="GRAM" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="fac2b93e-9037-4b15-bf8e-8db254f16bf1" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="05bd9479-a6dd-473d-a3b4-7393cef113bb" filters="&quot;assetId&quot;='cf3d4b5e-437f-4c1b-a7f9-7fd7e8a269b4'" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" field="pressure">
            <dataSource xsi:type="esdl:DataSourceReference" reference="4e65d43a-ae82-4082-affc-35534687960d"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="8022b80b-472c-4368-884a-f29d33b4643d" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="05bd9479-a6dd-473d-a3b4-7393cef113bb" filters="&quot;assetId&quot;='cf3d4b5e-437f-4c1b-a7f9-7fd7e8a269b4'" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" field="temperature">
            <dataSource xsi:type="esdl:DataSourceReference" reference="4e65d43a-ae82-4082-affc-35534687960d"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="b675457f-f22c-4f7a-a837-6571c817c01a" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="05bd9479-a6dd-473d-a3b4-7393cef113bb" filters="&quot;assetId&quot;='cf3d4b5e-437f-4c1b-a7f9-7fd7e8a269b4'" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" field="volume_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="4e65d43a-ae82-4082-affc-35534687960d"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="02469f75-7753-4fef-ab1d-a2ea186c72a5" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="05bd9479-a6dd-473d-a3b4-7393cef113bb" filters="&quot;assetId&quot;='cf3d4b5e-437f-4c1b-a7f9-7fd7e8a269b4'" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" field="heat_supply_set_point">
            <dataSource xsi:type="esdl:DataSourceReference" reference="4e65d43a-ae82-4082-affc-35534687960d"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="afb7544d-3d67-4def-8011-5a63a816a1ac" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="05bd9479-a6dd-473d-a3b4-7393cef113bb" filters="&quot;assetId&quot;='cf3d4b5e-437f-4c1b-a7f9-7fd7e8a269b4'" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" field="heat_supplied">
            <dataSource xsi:type="esdl:DataSourceReference" reference="4e65d43a-ae82-4082-affc-35534687960d"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
        </port>
        <port xsi:type="esdl:InPort" id="9c258b9d-3149-4720-8931-f4bef1080ec1" name="In" connectedTo="935fb733-9f76-4a8d-8899-1ad8689a4b12" carrier="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret">
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="be418da1-2d02-4da9-bdc6-4997f0582a0e" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="05bd9479-a6dd-473d-a3b4-7393cef113bb" filters="&quot;assetId&quot;='cf3d4b5e-437f-4c1b-a7f9-7fd7e8a269b4'" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" field="mass_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="4e65d43a-ae82-4082-affc-35534687960d"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" multiplier="KILO" unit="GRAM" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="283969a9-44a8-4dfc-8d5d-c240a0ff5056" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="05bd9479-a6dd-473d-a3b4-7393cef113bb" filters="&quot;assetId&quot;='cf3d4b5e-437f-4c1b-a7f9-7fd7e8a269b4'" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" field="pressure">
            <dataSource xsi:type="esdl:DataSourceReference" reference="4e65d43a-ae82-4082-affc-35534687960d"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="0251a8f5-5740-409a-8984-68b030c640b5" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="05bd9479-a6dd-473d-a3b4-7393cef113bb" filters="&quot;assetId&quot;='cf3d4b5e-437f-4c1b-a7f9-7fd7e8a269b4'" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" field="temperature">
            <dataSource xsi:type="esdl:DataSourceReference" reference="4e65d43a-ae82-4082-affc-35534687960d"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="3bde9b56-9794-46b1-83e0-ac1138378464" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="05bd9479-a6dd-473d-a3b4-7393cef113bb" filters="&quot;assetId&quot;='cf3d4b5e-437f-4c1b-a7f9-7fd7e8a269b4'" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" field="volume_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="4e65d43a-ae82-4082-affc-35534687960d"/>
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
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="73e7287e-e920-4cd8-8f3e-2c7a0222a097" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="05bd9479-a6dd-473d-a3b4-7393cef113bb" filters="&quot;assetId&quot;='Pipe1'" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" field="mass_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="4e65d43a-ae82-4082-affc-35534687960d"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" multiplier="KILO" unit="GRAM" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="a5aaf08c-5067-4dd1-b699-a2d1a1ffb396" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="05bd9479-a6dd-473d-a3b4-7393cef113bb" filters="&quot;assetId&quot;='Pipe1'" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" field="pressure">
            <dataSource xsi:type="esdl:DataSourceReference" reference="4e65d43a-ae82-4082-affc-35534687960d"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="b90a2486-fd75-422a-aa5a-fcc0813d289c" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="05bd9479-a6dd-473d-a3b4-7393cef113bb" filters="&quot;assetId&quot;='Pipe1'" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" field="temperature">
            <dataSource xsi:type="esdl:DataSourceReference" reference="4e65d43a-ae82-4082-affc-35534687960d"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="82867861-b8ab-461f-a579-cd17ddcba370" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="05bd9479-a6dd-473d-a3b4-7393cef113bb" filters="&quot;assetId&quot;='Pipe1'" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" field="volume_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="4e65d43a-ae82-4082-affc-35534687960d"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="161dd78e-df8a-48e1-a2d0-835f6a96e88d" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="05bd9479-a6dd-473d-a3b4-7393cef113bb" filters="&quot;assetId&quot;='Pipe1'" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" field="velocity">
            <dataSource xsi:type="esdl:DataSourceReference" reference="4e65d43a-ae82-4082-affc-35534687960d"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="SPEED" unit="METRE" perTimeUnit="SECOND"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" id="3f2dc09a-0cee-44bd-a337-cea55461a334" name="Out" connectedTo="af0904f7-ba1f-4e79-9040-71e08041601b" carrier="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a">
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="eb937bbe-da62-492b-8d76-dc4a0b40bd69" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="05bd9479-a6dd-473d-a3b4-7393cef113bb" filters="&quot;assetId&quot;='Pipe1'" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" field="mass_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="4e65d43a-ae82-4082-affc-35534687960d"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" multiplier="KILO" unit="GRAM" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="3853309d-543a-4c7f-97e8-69b88fb8da47" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="05bd9479-a6dd-473d-a3b4-7393cef113bb" filters="&quot;assetId&quot;='Pipe1'" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" field="pressure">
            <dataSource xsi:type="esdl:DataSourceReference" reference="4e65d43a-ae82-4082-affc-35534687960d"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="22b80c9b-8dbf-4d3c-8091-d0a0b0541af2" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="05bd9479-a6dd-473d-a3b4-7393cef113bb" filters="&quot;assetId&quot;='Pipe1'" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" field="temperature">
            <dataSource xsi:type="esdl:DataSourceReference" reference="4e65d43a-ae82-4082-affc-35534687960d"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="9954d747-fb2c-43f6-b461-d12986868030" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="05bd9479-a6dd-473d-a3b4-7393cef113bb" filters="&quot;assetId&quot;='Pipe1'" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" field="volume_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="4e65d43a-ae82-4082-affc-35534687960d"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="efa83f85-0e51-407c-a83e-e66496473a90" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="05bd9479-a6dd-473d-a3b4-7393cef113bb" filters="&quot;assetId&quot;='Pipe1'" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" field="velocity">
            <dataSource xsi:type="esdl:DataSourceReference" reference="4e65d43a-ae82-4082-affc-35534687960d"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="SPEED" unit="METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="d07d73e2-c715-4414-9f51-bdddfc96a426" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="05bd9479-a6dd-473d-a3b4-7393cef113bb" filters="&quot;assetId&quot;='Pipe1'" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" field="pressure_loss">
            <dataSource xsi:type="esdl:DataSourceReference" reference="4e65d43a-ae82-4082-affc-35534687960d"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="fea083b4-5fd4-4dc6-91a6-c6361fd6e88c" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="05bd9479-a6dd-473d-a3b4-7393cef113bb" filters="&quot;assetId&quot;='Pipe1'" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" field="pressure_loss_per_length">
            <dataSource xsi:type="esdl:DataSourceReference" reference="4e65d43a-ae82-4082-affc-35534687960d"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="1362b8fc-72f7-41d0-9787-1b493707cbc9" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="05bd9479-a6dd-473d-a3b4-7393cef113bb" filters="&quot;assetId&quot;='Pipe1'" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" field="heat_loss">
            <dataSource xsi:type="esdl:DataSourceReference" reference="4e65d43a-ae82-4082-affc-35534687960d"/>
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
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="00b6a522-46f2-4355-ba5f-6a04f575f455" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="05bd9479-a6dd-473d-a3b4-7393cef113bb" filters="&quot;assetId&quot;='Pipe1_ret'" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" field="mass_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="4e65d43a-ae82-4082-affc-35534687960d"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" multiplier="KILO" unit="GRAM" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="6f19c0f1-c232-4c2a-ac52-81901867f7ee" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="05bd9479-a6dd-473d-a3b4-7393cef113bb" filters="&quot;assetId&quot;='Pipe1_ret'" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" field="pressure">
            <dataSource xsi:type="esdl:DataSourceReference" reference="4e65d43a-ae82-4082-affc-35534687960d"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="245e8b1d-8b30-4037-81ae-0d08aec87f14" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="05bd9479-a6dd-473d-a3b4-7393cef113bb" filters="&quot;assetId&quot;='Pipe1_ret'" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" field="temperature">
            <dataSource xsi:type="esdl:DataSourceReference" reference="4e65d43a-ae82-4082-affc-35534687960d"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="d42d2c07-a2c0-4739-8732-8d52e303c7b0" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="05bd9479-a6dd-473d-a3b4-7393cef113bb" filters="&quot;assetId&quot;='Pipe1_ret'" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" field="volume_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="4e65d43a-ae82-4082-affc-35534687960d"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="6d0821c7-1cbb-429e-856d-7a8679bb9e71" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="05bd9479-a6dd-473d-a3b4-7393cef113bb" filters="&quot;assetId&quot;='Pipe1_ret'" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" field="velocity">
            <dataSource xsi:type="esdl:DataSourceReference" reference="4e65d43a-ae82-4082-affc-35534687960d"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="SPEED" unit="METRE" perTimeUnit="SECOND"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" id="935fb733-9f76-4a8d-8899-1ad8689a4b12" name="Out_ret" connectedTo="9c258b9d-3149-4720-8931-f4bef1080ec1" carrier="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret">
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="1d0335f2-a299-4b5d-8034-1b1cd7177f27" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="05bd9479-a6dd-473d-a3b4-7393cef113bb" filters="&quot;assetId&quot;='Pipe1_ret'" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" field="mass_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="4e65d43a-ae82-4082-affc-35534687960d"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" multiplier="KILO" unit="GRAM" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="08b14fcb-037d-472e-90fb-c06a72021049" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="05bd9479-a6dd-473d-a3b4-7393cef113bb" filters="&quot;assetId&quot;='Pipe1_ret'" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" field="pressure">
            <dataSource xsi:type="esdl:DataSourceReference" reference="4e65d43a-ae82-4082-affc-35534687960d"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="c4dee67b-7fec-485b-8a2c-e362dd715d82" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="05bd9479-a6dd-473d-a3b4-7393cef113bb" filters="&quot;assetId&quot;='Pipe1_ret'" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" field="temperature">
            <dataSource xsi:type="esdl:DataSourceReference" reference="4e65d43a-ae82-4082-affc-35534687960d"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="996cc982-ff50-4057-b043-d77f6722c5cf" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="05bd9479-a6dd-473d-a3b4-7393cef113bb" filters="&quot;assetId&quot;='Pipe1_ret'" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" field="volume_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="4e65d43a-ae82-4082-affc-35534687960d"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="f00c97dd-fc87-408d-8aa5-e5df5221e209" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="05bd9479-a6dd-473d-a3b4-7393cef113bb" filters="&quot;assetId&quot;='Pipe1_ret'" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" field="velocity">
            <dataSource xsi:type="esdl:DataSourceReference" reference="4e65d43a-ae82-4082-affc-35534687960d"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="SPEED" unit="METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="dd51ac5b-22f8-4b08-9aa9-16e96282c7e8" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="05bd9479-a6dd-473d-a3b4-7393cef113bb" filters="&quot;assetId&quot;='Pipe1_ret'" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" field="pressure_loss">
            <dataSource xsi:type="esdl:DataSourceReference" reference="4e65d43a-ae82-4082-affc-35534687960d"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="2a40650c-3d2a-437f-be0f-a7932e53651e" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="05bd9479-a6dd-473d-a3b4-7393cef113bb" filters="&quot;assetId&quot;='Pipe1_ret'" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" field="pressure_loss_per_length">
            <dataSource xsi:type="esdl:DataSourceReference" reference="4e65d43a-ae82-4082-affc-35534687960d"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="44992ae9-9e91-47a2-a48e-f6c6fa9f220f" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="05bd9479-a6dd-473d-a3b4-7393cef113bb" filters="&quot;assetId&quot;='Pipe1_ret'" measurement="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" field="heat_loss">
            <dataSource xsi:type="esdl:DataSourceReference" reference="4e65d43a-ae82-4082-affc-35534687960d"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
        </port>
      </asset>
      <KPIs xsi:type="esdl:KPIs" id="751c9bd7-c7f5-46fb-81fa-3e3b59659592">
        <kpi xsi:type="esdl:DistributionKPI" id="0bfc19fd-77dc-4bec-9315-532dbf3ff6de" name="High level cost breakdown [EUR]">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO"/>
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" label="CAPEX (total)"/>
            <stringItem xsi:type="esdl:StringItem" label="OPEX (yearly)"/>
          </distribution>
        </kpi>
        <kpi xsi:type="esdl:DistributionKPI" id="3b958a18-d9df-477f-b741-1b479ae82dc3" name="Energy breakdown [Wh]">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="ENERGY" unit="WATTHOUR"/>
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" label="Production" value="45303939275299.65"/>
            <stringItem xsi:type="esdl:StringItem" label="Demand" value="45303939275299.65"/>
          </distribution>
        </kpi>
      </KPIs>
    </area>
  </instance>
</esdl:EnergySystem>
