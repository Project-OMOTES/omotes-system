<?xml version='1.0' encoding='UTF-8'?>
<esdl:EnergySystem xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:esdl="http://www.tno.nl/esdl" description="" esdlVersion="v2207" name="PoC Tutorial_SmartControlOptimized_grow_simulator" id="b775f984-fe16-49ff-8198-d773ead98e98" version="13">
  <energySystemInformation xsi:type="esdl:EnergySystemInformation" id="5fa7e6e3-5701-48a7-bbbd-cad59a46f6c5">
    <carriers xsi:type="esdl:Carriers" id="42a694c6-9a1b-4cc7-bbae-0b44725f9434">
      <carrier xsi:type="esdl:HeatCommodity" name="Primary" id="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" supplyTemperature="80.0"/>
      <carrier xsi:type="esdl:HeatCommodity" name="Primary_ret" returnTemperature="40.0" id="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret"/>
    </carriers>
    <quantityAndUnits xsi:type="esdl:QuantityAndUnits" id="38f7850a-2090-411e-a15a-84b1d7b78362">
      <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT" id="e9405fc8-5e57-4df5-8584-4babee7cdf1b" description="Power in MW" multiplier="MEGA"/>
    </quantityAndUnits>
  </energySystemInformation>
  <instance xsi:type="esdl:Instance" id="9af52a01-24e2-4bbe-a7b8-f868161e6ca3" name="Untitled instance">
    <area xsi:type="esdl:Area" name="Untitled area" id="9edf5aa3-3855-4dac-b6f5-01c2edf1a43a">
      <asset xsi:type="esdl:ResidualHeatSource" id="72d74fb5-134f-4bfb-829e-220ab76a8a7b" power="50000000.0" name="ResidualHeatSource_72d7">
        <port xsi:type="esdl:OutPort" id="d890f8aa-9b94-493d-b017-bd7cebaf8c77" connectedTo="07c2f88e-85be-4b8b-a72e-14364a3810c9" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="Out">
          <profile xsi:type="esdl:InfluxDBProfile" field="HeatIn.Q" database="b775f984-fe16-49ff-8198-d773ead98e98" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="79cc28c6-05e6-4f8c-b155-b070b21d25cf" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" endDate="2019-12-31T23:00:00.000000+0000" filters="&quot;assetId&quot;='72d74fb5-134f-4bfb-829e-220ab76a8a7b'" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="CUBIC_METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="Heat_flow" database="b775f984-fe16-49ff-8198-d773ead98e98" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="26ea4929-e2d1-4c1d-91db-0cc8d0ae7001" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" endDate="2019-12-31T23:00:00.000000+0000" filters="&quot;assetId&quot;='72d74fb5-134f-4bfb-829e-220ab76a8a7b'" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="HeatIn.H" database="b775f984-fe16-49ff-8198-d773ead98e98" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="e4f1b6d4-349d-4790-a798-ba5021a9c2a5" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" endDate="2019-12-31T23:00:00.000000+0000" filters="&quot;assetId&quot;='72d74fb5-134f-4bfb-829e-220ab76a8a7b'" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="Pump_power" database="b775f984-fe16-49ff-8198-d773ead98e98" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="2c201c96-5b32-486c-b7b5-4df40adf7301" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" endDate="2019-12-31T23:00:00.000000+0000" filters="&quot;assetId&quot;='72d74fb5-134f-4bfb-829e-220ab76a8a7b'" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
        </port>
        <port xsi:type="esdl:InPort" connectedTo="c0a27794-98e2-4119-a363-cec4f0b525cd" id="4d6c18cd-cc52-443d-8e53-96cd188dd1a8" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="In"/>
        <geometry xsi:type="esdl:Point" lon="4.372987747192384" CRS="WGS84" lat="52.00467202060717"/>
        <costInformation xsi:type="esdl:CostInformation" id="123cc46e-f8ef-42f9-842f-08e77dd06899">
          <fixedOperationalCosts xsi:type="esdl:SingleValue" id="8ee43904-745d-4f5c-8b15-5a2adcde7e5f" value="600000.0">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO" id="4c3a445d-d13f-4f61-8d75-22280135830f" description="Cost in EUR/MW" perMultiplier="MEGA" perUnit="WATT"/>
          </fixedOperationalCosts>
          <variableOperationalCosts xsi:type="esdl:SingleValue" id="e5bc1b5e-23b1-4985-94f2-bea25c12da14" value="100.0">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO" id="de56cc5d-2baa-451c-b38c-47abea1393c2" description="Cost in EUR/MWh" perMultiplier="MEGA" perUnit="WATTHOUR"/>
          </variableOperationalCosts>
          <investmentCosts xsi:type="esdl:SingleValue" id="3102215e-50a4-4332-b16e-2fd6522df31b" value="1500000.0">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO" id="69673880-fe81-4f34-8fd9-558cc693a251" description="Cost in EUR/MW" perMultiplier="MEGA" perUnit="WATT"/>
          </investmentCosts>
          <marginalCosts xsi:type="esdl:SingleValue" id="e52de449-7340-4878-b582-d20711d9fb14" value="1.0">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="4fccbb6b-2e41-46d9-a92c-f94da7c3aca7" physicalQuantity="COST" description="Cost in EUR" unit="EURO"/>
          </marginalCosts>
          <installationCosts xsi:type="esdl:SingleValue" id="12c24715-08dc-4b61-ae15-76541704c83a" value="10000000.0">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="89b04c83-eb32-49a3-adc4-492a719221d3" physicalQuantity="COST" description="Cost in EUR" unit="EURO"/>
          </installationCosts>
        </costInformation>
      </asset>
      <asset xsi:type="esdl:Pipe" id="Pipe1" outerDiameter="0.56" diameter="DN400" length="818.07" innerDiameter="0.3938" name="Pipe1" related="Pipe1_ret">
        <material xsi:type="esdl:CompoundMatter" compoundType="LAYERED">
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.0063">
            <matter xsi:type="esdl:Material" thermalConductivity="52.15" id="74d84321-1767-4cec-b6e7-b90c06020400" name="steel"/>
          </component>
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.0711">
            <matter xsi:type="esdl:Material" thermalConductivity="0.027" id="95012cd9-7648-4df5-8c83-74dc73bc16ba" name="PUR"/>
          </component>
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.0057">
            <matter xsi:type="esdl:Material" thermalConductivity="0.4" id="1392ee3f-34f6-4c8e-ab0e-635b9d7ec9be" name="HDPE"/>
          </component>
        </material>
        <port xsi:type="esdl:InPort" connectedTo="d890f8aa-9b94-493d-b017-bd7cebaf8c77" id="07c2f88e-85be-4b8b-a72e-14364a3810c9" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="In"/>
        <port xsi:type="esdl:OutPort" id="fc2801d0-215b-4d2b-9846-ee4918b87e21" connectedTo="d149871b-d76a-4cc3-8922-c8d99205f47e" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="Out">
          <profile xsi:type="esdl:InfluxDBProfile" field="HeatIn.Q" database="b775f984-fe16-49ff-8198-d773ead98e98" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="f2ce6baf-07e2-4e23-864f-6565c4827469" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" endDate="2019-12-31T23:00:00.000000+0000" filters="&quot;assetId&quot;='Pipe1'" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="CUBIC_METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="Heat_flow" database="b775f984-fe16-49ff-8198-d773ead98e98" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="07806025-58e0-4a2f-868e-4bd93655f3e5" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" endDate="2019-12-31T23:00:00.000000+0000" filters="&quot;assetId&quot;='Pipe1'" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="HeatIn.H" database="b775f984-fe16-49ff-8198-d773ead98e98" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="10225131-ecd9-4a90-858b-30c6ba02f648" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" endDate="2019-12-31T23:00:00.000000+0000" filters="&quot;assetId&quot;='Pipe1'" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="PostProc.Velocity" database="b775f984-fe16-49ff-8198-d773ead98e98" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="6776578d-d84a-4d62-aac1-2ee0bf5e40ef" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" endDate="2019-12-31T23:00:00.000000+0000" filters="&quot;assetId&quot;='Pipe1'" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="SPEED" unit="METRE"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" lon="4.372987747192384" lat="52.00467202060717"/>
          <point xsi:type="esdl:Point" lon="4.365863800048829" lat="52.00210934629504"/>
          <point xsi:type="esdl:Point" lon="4.367129802703858" lat="51.99996926872789"/>
        </geometry>
        <dataSource xsi:type="esdl:DataSource" attribution="https://www.logstor.com/media/6506/product-catalogue-uk-202003.pdf" name="Logstor Product Catalogue Version 2020.03"/>
        <costInformation xsi:type="esdl:CostInformation" id="4a3d48d9-74bb-4407-b249-9e2af4d1037c">
          <investmentCosts xsi:type="esdl:SingleValue" id="2ab2214c-8d42-4b74-877f-7fb97f6eab86" name="Combined investment and installation costs" value="2840.6">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO" id="9169bd50-197f-4d6b-aaac-b383a59c815d" description="Costs in EUR/m" perUnit="METRE"/>
          </investmentCosts>
        </costInformation>
      </asset>
      <asset xsi:type="esdl:Joint" id="a04cb927-426d-4016-a084-356002a85d6c" name="Joint_a04c">
        <port xsi:type="esdl:InPort" connectedTo="fc2801d0-215b-4d2b-9846-ee4918b87e21" id="d149871b-d76a-4cc3-8922-c8d99205f47e" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="In"/>
        <port xsi:type="esdl:OutPort" id="3535f436-1270-4b1b-a326-41d69cd6e330" connectedTo="863d2ff2-7a68-4bfb-8aa5-dab741b72b25 7f18f0b7-fcf3-4d83-8a65-79cbd3273ea7" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="Out"/>
        <geometry xsi:type="esdl:Point" lon="4.367129802703858" lat="51.99996926872789"/>
      </asset>
      <asset xsi:type="esdl:Pipe" id="Pipe2" outerDiameter="0.56" diameter="DN400" length="517.54" innerDiameter="0.3938" name="Pipe2" related="Pipe2_ret">
        <material xsi:type="esdl:CompoundMatter" compoundType="LAYERED">
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.0063">
            <matter xsi:type="esdl:Material" thermalConductivity="52.15" id="74d84321-1767-4cec-b6e7-b90c06020400" name="steel"/>
          </component>
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.0711">
            <matter xsi:type="esdl:Material" thermalConductivity="0.027" id="95012cd9-7648-4df5-8c83-74dc73bc16ba" name="PUR"/>
          </component>
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.0057">
            <matter xsi:type="esdl:Material" thermalConductivity="0.4" id="1392ee3f-34f6-4c8e-ab0e-635b9d7ec9be" name="HDPE"/>
          </component>
        </material>
        <port xsi:type="esdl:InPort" connectedTo="3535f436-1270-4b1b-a326-41d69cd6e330" id="863d2ff2-7a68-4bfb-8aa5-dab741b72b25" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="In"/>
        <port xsi:type="esdl:OutPort" id="8c38fc93-ed85-42ef-9be6-87d47c416e90" connectedTo="4d629e6e-5db4-4a8f-9945-934a24ede11a" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="Out">
          <profile xsi:type="esdl:InfluxDBProfile" field="HeatIn.Q" database="b775f984-fe16-49ff-8198-d773ead98e98" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="21b4a389-b748-4d9e-9b6e-eae8aba03f11" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" endDate="2019-12-31T23:00:00.000000+0000" filters="&quot;assetId&quot;='Pipe2'" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="CUBIC_METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="Heat_flow" database="b775f984-fe16-49ff-8198-d773ead98e98" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="3df3dcc8-2fa2-4abd-aa69-7a7c515f1314" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" endDate="2019-12-31T23:00:00.000000+0000" filters="&quot;assetId&quot;='Pipe2'" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="HeatIn.H" database="b775f984-fe16-49ff-8198-d773ead98e98" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="28c5bbbb-014b-47f2-bedd-fc8a2ce27cfc" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" endDate="2019-12-31T23:00:00.000000+0000" filters="&quot;assetId&quot;='Pipe2'" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="PostProc.Velocity" database="b775f984-fe16-49ff-8198-d773ead98e98" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="04a51584-51ae-4a66-8f90-1e5a8ea73a7f" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" endDate="2019-12-31T23:00:00.000000+0000" filters="&quot;assetId&quot;='Pipe2'" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="SPEED" unit="METRE"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" lon="4.367129802703858" lat="51.99996926872789"/>
          <point xsi:type="esdl:Point" lon="4.36983346939087" lat="51.995622746921015"/>
        </geometry>
        <dataSource xsi:type="esdl:DataSource" attribution="https://www.logstor.com/media/6506/product-catalogue-uk-202003.pdf" name="Logstor Product Catalogue Version 2020.03"/>
        <costInformation xsi:type="esdl:CostInformation" id="4a3d48d9-74bb-4407-b249-9e2af4d1037c">
          <investmentCosts xsi:type="esdl:SingleValue" id="2ab2214c-8d42-4b74-877f-7fb97f6eab86" name="Combined investment and installation costs" value="2840.6">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO" id="9169bd50-197f-4d6b-aaac-b383a59c815d" description="Costs in EUR/m" perUnit="METRE"/>
          </investmentCosts>
        </costInformation>
      </asset>
      <asset xsi:type="esdl:Pipe" id="Pipe3" outerDiameter="0.56" diameter="DN400" length="1182.23" innerDiameter="0.3938" name="Pipe3" related="Pipe3_ret">
        <material xsi:type="esdl:CompoundMatter" compoundType="LAYERED">
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.0063">
            <matter xsi:type="esdl:Material" thermalConductivity="52.15" id="74d84321-1767-4cec-b6e7-b90c06020400" name="steel"/>
          </component>
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.0711">
            <matter xsi:type="esdl:Material" thermalConductivity="0.027" id="95012cd9-7648-4df5-8c83-74dc73bc16ba" name="PUR"/>
          </component>
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.0057">
            <matter xsi:type="esdl:Material" thermalConductivity="0.4" id="1392ee3f-34f6-4c8e-ab0e-635b9d7ec9be" name="HDPE"/>
          </component>
        </material>
        <port xsi:type="esdl:InPort" connectedTo="a42acf83-361d-4d4d-8001-8617daad939a" id="e44060e9-8b0e-41e5-ae46-ce074c891c15" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="In"/>
        <port xsi:type="esdl:OutPort" id="13edd58c-4a04-4770-8aac-c6e8689acbba" connectedTo="23cdb929-5cfc-4b8d-963e-06b6e6cf3a5c" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="Out">
          <profile xsi:type="esdl:InfluxDBProfile" field="HeatIn.Q" database="b775f984-fe16-49ff-8198-d773ead98e98" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="cf37c191-4385-4d42-a9a4-9f4d0206c18a" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" endDate="2019-12-31T23:00:00.000000+0000" filters="&quot;assetId&quot;='Pipe3'" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="CUBIC_METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="Heat_flow" database="b775f984-fe16-49ff-8198-d773ead98e98" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="86916051-6178-4d32-8cb4-ede9c00fa150" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" endDate="2019-12-31T23:00:00.000000+0000" filters="&quot;assetId&quot;='Pipe3'" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="HeatIn.H" database="b775f984-fe16-49ff-8198-d773ead98e98" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="6c94552d-bccd-4ec7-b05e-11f2a49c4687" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" endDate="2019-12-31T23:00:00.000000+0000" filters="&quot;assetId&quot;='Pipe3'" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="PostProc.Velocity" database="b775f984-fe16-49ff-8198-d773ead98e98" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="4e531bf7-db86-4567-a0ac-47cb0d143959" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" endDate="2019-12-31T23:00:00.000000+0000" filters="&quot;assetId&quot;='Pipe3'" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="SPEED" unit="METRE"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" lon="4.36983346939087" lat="51.995622746921015"/>
          <point xsi:type="esdl:Point" lon="4.373888969421388" lat="51.989029496545015"/>
          <point xsi:type="esdl:Point" lon="4.379038810729981" lat="51.99069441691871"/>
        </geometry>
        <dataSource xsi:type="esdl:DataSource" attribution="https://www.logstor.com/media/6506/product-catalogue-uk-202003.pdf" name="Logstor Product Catalogue Version 2020.03"/>
        <costInformation xsi:type="esdl:CostInformation" id="4a3d48d9-74bb-4407-b249-9e2af4d1037c">
          <investmentCosts xsi:type="esdl:SingleValue" id="2ab2214c-8d42-4b74-877f-7fb97f6eab86" name="Combined investment and installation costs" value="2840.6">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO" id="9169bd50-197f-4d6b-aaac-b383a59c815d" description="Costs in EUR/m" perUnit="METRE"/>
          </investmentCosts>
        </costInformation>
      </asset>
      <asset xsi:type="esdl:Joint" id="95caf7c7-e89f-4378-96f2-f904f9255c83" name="Joint_95ca">
        <port xsi:type="esdl:InPort" connectedTo="8c38fc93-ed85-42ef-9be6-87d47c416e90 abfddfae-c090-4b8a-88b1-23d4c6adacc5" id="4d629e6e-5db4-4a8f-9945-934a24ede11a" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="In"/>
        <port xsi:type="esdl:OutPort" id="a42acf83-361d-4d4d-8001-8617daad939a" connectedTo="e44060e9-8b0e-41e5-ae46-ce074c891c15 20165ec3-cf86-41e4-976f-079ba0ca5be4" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="Out"/>
        <geometry xsi:type="esdl:Point" lon="4.36983346939087" lat="51.995622746921015"/>
      </asset>
      <asset xsi:type="esdl:Pipe" id="Pipe4" outerDiameter="0.45" diameter="DN300" length="455.4" innerDiameter="0.3127" name="Pipe4" related="Pipe4_ret">
        <material xsi:type="esdl:CompoundMatter" compoundType="LAYERED">
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.0056">
            <matter xsi:type="esdl:Material" thermalConductivity="52.15" id="f4cee538-cc3b-4809-bd66-979f2ce9649b" name="steel"/>
          </component>
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.05785">
            <matter xsi:type="esdl:Material" thermalConductivity="0.027" id="e4c0350c-cd79-45b4-a45c-6259c750b478" name="PUR"/>
          </component>
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.0052">
            <matter xsi:type="esdl:Material" thermalConductivity="0.4" id="9a97f588-10fe-4a34-b0f2-277862151763" name="HDPE"/>
          </component>
        </material>
        <port xsi:type="esdl:InPort" connectedTo="3535f436-1270-4b1b-a326-41d69cd6e330" id="7f18f0b7-fcf3-4d83-8a65-79cbd3273ea7" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="In"/>
        <port xsi:type="esdl:OutPort" id="5169316d-ae93-4f04-9a34-7c776444b651" connectedTo="2c5a109b-0d98-47b6-acc1-05e1708f8b85" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="Out">
          <profile xsi:type="esdl:InfluxDBProfile" field="HeatIn.Q" database="b775f984-fe16-49ff-8198-d773ead98e98" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="8fb97c90-3ddd-40c7-9b97-d21f83d6df55" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" endDate="2019-12-31T23:00:00.000000+0000" filters="&quot;assetId&quot;='Pipe4'" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="CUBIC_METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="Heat_flow" database="b775f984-fe16-49ff-8198-d773ead98e98" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="d97c8ed0-cc2e-4998-bfc9-833b41ccfe02" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" endDate="2019-12-31T23:00:00.000000+0000" filters="&quot;assetId&quot;='Pipe4'" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="HeatIn.H" database="b775f984-fe16-49ff-8198-d773ead98e98" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="17bd28e8-8efd-422f-8e49-a1adaf323fd2" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" endDate="2019-12-31T23:00:00.000000+0000" filters="&quot;assetId&quot;='Pipe4'" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="PostProc.Velocity" database="b775f984-fe16-49ff-8198-d773ead98e98" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="36df3de0-1697-4e21-932d-2b8c3693d8c4" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" endDate="2019-12-31T23:00:00.000000+0000" filters="&quot;assetId&quot;='Pipe4'" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="SPEED" unit="METRE"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lon="4.367129802703858" lat="51.99996926872789"/>
          <point xsi:type="esdl:Point" lon="4.373545646667481" lat="52.00105253065436"/>
        </geometry>
        <dataSource xsi:type="esdl:DataSource" attribution="https://www.logstor.com/media/6506/product-catalogue-uk-202003.pdf" name="Logstor Product Catalogue Version 2020.03"/>
        <costInformation xsi:type="esdl:CostInformation" id="384df56d-e3f0-4794-a0e2-bc0c71482e45">
          <investmentCosts xsi:type="esdl:SingleValue" id="1e93bdda-8a74-42d5-960d-d64e4dff2025" name="Combined investment and installation costs" value="1962.1">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO" id="983f0959-8566-43ce-a380-782d29406ed3" description="Costs in EUR/m" perUnit="METRE"/>
          </investmentCosts>
        </costInformation>
      </asset>
      <asset xsi:type="esdl:Pipe" id="Pipe5" outerDiameter="0.45" diameter="DN300" length="252.3" innerDiameter="0.3127" name="Pipe5" related="Pipe5_ret">
        <material xsi:type="esdl:CompoundMatter" compoundType="LAYERED">
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.0056">
            <matter xsi:type="esdl:Material" thermalConductivity="52.15" id="f4cee538-cc3b-4809-bd66-979f2ce9649b" name="steel"/>
          </component>
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.05785">
            <matter xsi:type="esdl:Material" thermalConductivity="0.027" id="e4c0350c-cd79-45b4-a45c-6259c750b478" name="PUR"/>
          </component>
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.0052">
            <matter xsi:type="esdl:Material" thermalConductivity="0.4" id="9a97f588-10fe-4a34-b0f2-277862151763" name="HDPE"/>
          </component>
        </material>
        <port xsi:type="esdl:InPort" connectedTo="a42acf83-361d-4d4d-8001-8617daad939a" id="20165ec3-cf86-41e4-976f-079ba0ca5be4" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="In"/>
        <port xsi:type="esdl:OutPort" id="787c6ae3-96da-41e1-af86-6e68a1e28cb1" connectedTo="01caa60f-1549-4f3f-817e-e4e6807b2398" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="Out">
          <profile xsi:type="esdl:InfluxDBProfile" field="HeatIn.Q" database="b775f984-fe16-49ff-8198-d773ead98e98" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="52c877e3-d9ac-49bb-861f-2464cacba508" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" endDate="2019-12-31T23:00:00.000000+0000" filters="&quot;assetId&quot;='Pipe5'" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="CUBIC_METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="Heat_flow" database="b775f984-fe16-49ff-8198-d773ead98e98" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="962adf6a-ee27-450e-b121-e358e66a9548" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" endDate="2019-12-31T23:00:00.000000+0000" filters="&quot;assetId&quot;='Pipe5'" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="HeatIn.H" database="b775f984-fe16-49ff-8198-d773ead98e98" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="c17a007e-55ab-4caf-b4bf-f2758e8299c9" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" endDate="2019-12-31T23:00:00.000000+0000" filters="&quot;assetId&quot;='Pipe5'" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="PostProc.Velocity" database="b775f984-fe16-49ff-8198-d773ead98e98" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="31b4948e-cb0d-428a-aaf0-212666da618f" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" endDate="2019-12-31T23:00:00.000000+0000" filters="&quot;assetId&quot;='Pipe5'" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="SPEED" unit="METRE"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lon="4.36983346939087" lat="51.995622746921015"/>
          <point xsi:type="esdl:Point" lon="4.373245239257813" lat="51.99648151568376"/>
        </geometry>
        <dataSource xsi:type="esdl:DataSource" attribution="https://www.logstor.com/media/6506/product-catalogue-uk-202003.pdf" name="Logstor Product Catalogue Version 2020.03"/>
        <costInformation xsi:type="esdl:CostInformation" id="4c8d9c8f-7e99-4402-8f66-d413e73db121">
          <investmentCosts xsi:type="esdl:SingleValue" id="1e93bdda-8a74-42d5-960d-d64e4dff2025" name="Combined investment and installation costs" value="1962.1">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO" id="983f0959-8566-43ce-a380-782d29406ed3" description="Costs in EUR/m" perUnit="METRE"/>
          </investmentCosts>
        </costInformation>
      </asset>
      <asset xsi:type="esdl:Joint" id="076ba789-3040-4952-9b2b-fbf9ed05e6bd" name="Joint_a04c_ret">
        <port xsi:type="esdl:InPort" connectedTo="c5df4e61-6603-4315-a45a-196903690d9e 23d8b6bb-9480-4f02-ba7c-d00de8ff206e" id="1ba08c64-4c54-4f23-93bf-2b2f6c04229d" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="ret_port"/>
        <port xsi:type="esdl:OutPort" id="044ef084-2a9e-4356-bac2-207f5361d4ce" connectedTo="2c3c73cb-d282-4c97-a060-922c91c50180" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="ret_port"/>
        <geometry xsi:type="esdl:Point" lon="4.3663488762941665" CRS="WGS84" lat="52.000059268817886"/>
      </asset>
      <asset xsi:type="esdl:Joint" id="b4a5be45-3352-4837-94d6-b110aa842da6" name="Joint_95ca_ret">
        <port xsi:type="esdl:InPort" connectedTo="59b53a77-a253-4a96-81ef-84e719a1f518 6f9268a0-1fd9-42f6-8821-2d7d4a6e5618" id="6b4d9bba-484b-46aa-bfe6-895d491b6747" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="ret_port"/>
        <port xsi:type="esdl:OutPort" id="5a47482f-6cdf-41b3-91b0-014578ee8143" connectedTo="da70a1aa-53c4-496e-ba63-2c04674b8c84 c92afccb-09a2-4a99-ad98-3f18ca0122dd" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="ret_port"/>
        <geometry xsi:type="esdl:Point" lon="4.369031429215318" CRS="WGS84" lat="51.99571274701101"/>
      </asset>
      <asset xsi:type="esdl:Pipe" id="Pipe1_ret" outerDiameter="0.56" diameter="DN400" length="818.07" innerDiameter="0.3938" name="Pipe1_ret" related="Pipe1">
        <port xsi:type="esdl:InPort" connectedTo="044ef084-2a9e-4356-bac2-207f5361d4ce" id="2c3c73cb-d282-4c97-a060-922c91c50180" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="In_ret"/>
        <port xsi:type="esdl:OutPort" id="c0a27794-98e2-4119-a363-cec4f0b525cd" connectedTo="4d6c18cd-cc52-443d-8e53-96cd188dd1a8" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="Out_ret">
          <profile xsi:type="esdl:InfluxDBProfile" field="HeatIn.Q" database="b775f984-fe16-49ff-8198-d773ead98e98" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="796413d7-9384-4e0e-bb27-d4fa1b63e1e0" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" endDate="2019-12-31T23:00:00.000000+0000" filters="&quot;assetId&quot;='Pipe1_ret'" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="CUBIC_METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="Heat_flow" database="b775f984-fe16-49ff-8198-d773ead98e98" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="b98d4e9c-9867-4e65-b2e0-1c65538f5444" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" endDate="2019-12-31T23:00:00.000000+0000" filters="&quot;assetId&quot;='Pipe1_ret'" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="HeatIn.H" database="b775f984-fe16-49ff-8198-d773ead98e98" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="c2923a76-78ea-4831-a9b9-9bea3642f2bc" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" endDate="2019-12-31T23:00:00.000000+0000" filters="&quot;assetId&quot;='Pipe1_ret'" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="PostProc.Velocity" database="b775f984-fe16-49ff-8198-d773ead98e98" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="5f5fa631-64c2-4251-955e-60a954bdf306" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" endDate="2019-12-31T23:00:00.000000+0000" filters="&quot;assetId&quot;='Pipe1_ret'" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="SPEED" unit="METRE"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" lon="4.3663488762941665" CRS="WGS84" lat="52.000059268817886"/>
          <point xsi:type="esdl:Point" lon="4.365092860885141" CRS="WGS84" lat="52.00219934638504"/>
          <point xsi:type="esdl:Point" lon="4.372228431895539" CRS="WGS84" lat="52.004762020697164"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:Pipe" id="Pipe2_ret" outerDiameter="0.56" diameter="DN400" length="517.54" innerDiameter="0.3938" name="Pipe2_ret" related="Pipe2">
        <port xsi:type="esdl:InPort" connectedTo="5a47482f-6cdf-41b3-91b0-014578ee8143" id="da70a1aa-53c4-496e-ba63-2c04674b8c84" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="In_ret"/>
        <port xsi:type="esdl:OutPort" id="c5df4e61-6603-4315-a45a-196903690d9e" connectedTo="1ba08c64-4c54-4f23-93bf-2b2f6c04229d" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="Out_ret">
          <profile xsi:type="esdl:InfluxDBProfile" field="HeatIn.Q" database="b775f984-fe16-49ff-8198-d773ead98e98" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="9fccdcbe-9937-4535-b85c-45efbdb7fc70" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" endDate="2019-12-31T23:00:00.000000+0000" filters="&quot;assetId&quot;='Pipe2_ret'" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="CUBIC_METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="Heat_flow" database="b775f984-fe16-49ff-8198-d773ead98e98" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="ca863272-4a5a-4941-8ad9-70c80d1ec4a3" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" endDate="2019-12-31T23:00:00.000000+0000" filters="&quot;assetId&quot;='Pipe2_ret'" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="HeatIn.H" database="b775f984-fe16-49ff-8198-d773ead98e98" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="0f96593e-307f-4bca-8dcc-a1c3b3c4ca86" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" endDate="2019-12-31T23:00:00.000000+0000" filters="&quot;assetId&quot;='Pipe2_ret'" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="PostProc.Velocity" database="b775f984-fe16-49ff-8198-d773ead98e98" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="7aa44135-94f0-4d27-a012-0db71646a74e" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" endDate="2019-12-31T23:00:00.000000+0000" filters="&quot;assetId&quot;='Pipe2_ret'" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="SPEED" unit="METRE"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" lon="4.369031429215318" CRS="WGS84" lat="51.99571274701101"/>
          <point xsi:type="esdl:Point" lon="4.3663488762941665" CRS="WGS84" lat="52.000059268817886"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:Pipe" id="Pipe3_ret" outerDiameter="0.56" diameter="DN400" length="1182.23" innerDiameter="0.3938" name="Pipe3_ret" related="Pipe3">
        <port xsi:type="esdl:InPort" connectedTo="0fd050fa-15ff-4f1e-b0bd-ef1823365eaa" id="6d1edc18-1962-4d3d-9882-ef27ae1702e8" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="In_ret"/>
        <port xsi:type="esdl:OutPort" id="59b53a77-a253-4a96-81ef-84e719a1f518" connectedTo="6b4d9bba-484b-46aa-bfe6-895d491b6747" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="Out_ret">
          <profile xsi:type="esdl:InfluxDBProfile" field="HeatIn.Q" database="b775f984-fe16-49ff-8198-d773ead98e98" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="98bb7530-239d-4751-889e-764de855bf32" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" endDate="2019-12-31T23:00:00.000000+0000" filters="&quot;assetId&quot;='Pipe3_ret'" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="CUBIC_METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="Heat_flow" database="b775f984-fe16-49ff-8198-d773ead98e98" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="e7b03469-232b-44ae-a7de-73f7c9449ea9" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" endDate="2019-12-31T23:00:00.000000+0000" filters="&quot;assetId&quot;='Pipe3_ret'" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="HeatIn.H" database="b775f984-fe16-49ff-8198-d773ead98e98" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="9340aa0d-e9cc-41dd-bb4a-a703ff2a818d" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" endDate="2019-12-31T23:00:00.000000+0000" filters="&quot;assetId&quot;='Pipe3_ret'" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="PostProc.Velocity" database="b775f984-fe16-49ff-8198-d773ead98e98" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="8f35fc5c-f984-41e9-8bb9-836555dbfbd5" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" endDate="2019-12-31T23:00:00.000000+0000" filters="&quot;assetId&quot;='Pipe3_ret'" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="SPEED" unit="METRE"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" lon="4.378211386257638" CRS="WGS84" lat="51.990784417008705"/>
          <point xsi:type="esdl:Point" lon="4.37305259776345" CRS="WGS84" lat="51.98911949663501"/>
          <point xsi:type="esdl:Point" lon="4.369031429215318" CRS="WGS84" lat="51.99571274701101"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:Pipe" id="Pipe4_ret" outerDiameter="0.45" diameter="DN300" length="455.4" innerDiameter="0.3127" name="Pipe4_ret" related="Pipe4">
        <port xsi:type="esdl:InPort" connectedTo="d7eb3623-7481-41bb-911d-2dd9bd67db39" id="5e2f4591-43f2-489f-8eb2-63105dbd0355" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="In_ret"/>
        <port xsi:type="esdl:OutPort" id="23d8b6bb-9480-4f02-ba7c-d00de8ff206e" connectedTo="1ba08c64-4c54-4f23-93bf-2b2f6c04229d" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="Out_ret">
          <profile xsi:type="esdl:InfluxDBProfile" field="HeatIn.Q" database="b775f984-fe16-49ff-8198-d773ead98e98" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="75a6971b-8eb9-47eb-92e3-3713c14263ca" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" endDate="2019-12-31T23:00:00.000000+0000" filters="&quot;assetId&quot;='Pipe4_ret'" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="CUBIC_METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="Heat_flow" database="b775f984-fe16-49ff-8198-d773ead98e98" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="0c2941d8-3393-4bce-9a18-64614d7c845b" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" endDate="2019-12-31T23:00:00.000000+0000" filters="&quot;assetId&quot;='Pipe4_ret'" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="HeatIn.H" database="b775f984-fe16-49ff-8198-d773ead98e98" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="4d4422d6-3694-429d-8e83-876374e75f0c" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" endDate="2019-12-31T23:00:00.000000+0000" filters="&quot;assetId&quot;='Pipe4_ret'" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="PostProc.Velocity" database="b775f984-fe16-49ff-8198-d773ead98e98" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="0d2fe49d-7f25-431b-b207-b6a3246c7d6f" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" endDate="2019-12-31T23:00:00.000000+0000" filters="&quot;assetId&quot;='Pipe4_ret'" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="SPEED" unit="METRE"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" lon="4.372769808163894" CRS="WGS84" lat="52.00114253074436"/>
          <point xsi:type="esdl:Point" lon="4.3663488762941665" CRS="WGS84" lat="52.000059268817886"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:Pipe" id="Pipe5_ret" outerDiameter="0.45" diameter="DN300" length="252.3" innerDiameter="0.3127" name="Pipe5_ret" related="Pipe5">
        <port xsi:type="esdl:InPort" connectedTo="ca90e0a5-f866-4ec2-9b3b-07f054f1c2b2" id="35ddd90a-e45c-4afd-95b4-80ce6c927071" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="In_ret"/>
        <port xsi:type="esdl:OutPort" id="6f9268a0-1fd9-42f6-8821-2d7d4a6e5618" connectedTo="6b4d9bba-484b-46aa-bfe6-895d491b6747" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="Out_ret">
          <profile xsi:type="esdl:InfluxDBProfile" field="HeatIn.Q" database="b775f984-fe16-49ff-8198-d773ead98e98" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="670db2d4-cbbd-4f86-ab3c-d9b2f4865d7f" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" endDate="2019-12-31T23:00:00.000000+0000" filters="&quot;assetId&quot;='Pipe5_ret'" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="CUBIC_METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="Heat_flow" database="b775f984-fe16-49ff-8198-d773ead98e98" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="6055915b-2686-414c-8079-125acc8e7c15" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" endDate="2019-12-31T23:00:00.000000+0000" filters="&quot;assetId&quot;='Pipe5_ret'" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="HeatIn.H" database="b775f984-fe16-49ff-8198-d773ead98e98" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="11b53f5a-8513-4853-b0b9-24c1818952a1" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" endDate="2019-12-31T23:00:00.000000+0000" filters="&quot;assetId&quot;='Pipe5_ret'" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="PostProc.Velocity" database="b775f984-fe16-49ff-8198-d773ead98e98" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="ba671a14-0a77-4a55-8d95-fb59d2634d37" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" endDate="2019-12-31T23:00:00.000000+0000" filters="&quot;assetId&quot;='Pipe5_ret'" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="SPEED" unit="METRE"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" lon="4.372447461880088" CRS="WGS84" lat="51.99657151577376"/>
          <point xsi:type="esdl:Point" lon="4.369031429215318" CRS="WGS84" lat="51.99571274701101"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:ResidualHeatSource" id="76f0817c-9f01-431e-be96-dbf3ee806d76" power="50000000.0" name="ResidualHeatSource_76f0">
        <port xsi:type="esdl:OutPort" id="81fbe527-8919-4864-b3fa-d3dbc223e4bb" connectedTo="74f2c723-08f3-4d44-871b-875aa721e055" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="Out">
          <profile xsi:type="esdl:InfluxDBProfile" field="HeatIn.Q" database="b775f984-fe16-49ff-8198-d773ead98e98" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="16ae72bc-5470-4993-a074-4aa8a44d3f82" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" endDate="2019-12-31T23:00:00.000000+0000" filters="&quot;assetId&quot;='76f0817c-9f01-431e-be96-dbf3ee806d76'" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="CUBIC_METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="Heat_flow" database="b775f984-fe16-49ff-8198-d773ead98e98" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="2ea390e9-368e-403f-9ab1-6c7bb174ea5c" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" endDate="2019-12-31T23:00:00.000000+0000" filters="&quot;assetId&quot;='76f0817c-9f01-431e-be96-dbf3ee806d76'" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="HeatIn.H" database="b775f984-fe16-49ff-8198-d773ead98e98" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="010f76a5-259c-4915-ae7a-27076cbfa9d4" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" endDate="2019-12-31T23:00:00.000000+0000" filters="&quot;assetId&quot;='76f0817c-9f01-431e-be96-dbf3ee806d76'" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="Pump_power" database="b775f984-fe16-49ff-8198-d773ead98e98" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="2ac25aec-9fa7-4aff-a121-718a39e17b3c" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" endDate="2019-12-31T23:00:00.000000+0000" filters="&quot;assetId&quot;='76f0817c-9f01-431e-be96-dbf3ee806d76'" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
        </port>
        <port xsi:type="esdl:InPort" connectedTo="3d19f298-ae58-4e56-92b6-e3ea896af6cb" id="4d708ad1-b369-47a3-abd3-26aa96173e71" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="In"/>
        <geometry xsi:type="esdl:Point" lon="4.364705085754395" CRS="WGS84" lat="51.995081053536964"/>
        <costInformation xsi:type="esdl:CostInformation" id="8a3abfe2-d012-489d-87c3-2732a6d4b25f">
          <fixedOperationalCosts xsi:type="esdl:SingleValue" id="b1b80150-e761-4633-b9d5-81b1d69a6db8" value="900000.0">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO" id="2c63c99b-cc4c-471a-a83e-a0d25cad5b7e" description="Cost in EUR/MW" perMultiplier="MEGA" perUnit="WATT"/>
          </fixedOperationalCosts>
          <variableOperationalCosts xsi:type="esdl:SingleValue" id="233a17e9-7392-49fb-a833-f8761c322098" value="200.0">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO" id="6fad95f6-2d6b-4310-9f76-9b3a26b3bd40" description="Cost in EUR/MWh" perMultiplier="MEGA" perUnit="WATTHOUR"/>
          </variableOperationalCosts>
          <investmentCosts xsi:type="esdl:SingleValue" id="a572009d-83d3-48ba-8727-e41267ca5350" value="2000000.0">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO" id="6862d724-1794-4bab-b666-258fd14150ac" description="Cost in EUR/MW" perMultiplier="MEGA" perUnit="WATT"/>
          </investmentCosts>
          <marginalCosts xsi:type="esdl:SingleValue" id="c36fe934-9dc9-4ef1-bd6b-6e1e4168ae91" value="2.0">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="4cfb1695-3026-49fa-a8ba-2f90450196d4" physicalQuantity="COST" description="Cost in EUR" unit="EURO"/>
          </marginalCosts>
          <installationCosts xsi:type="esdl:SingleValue" id="938b0cb2-d1e5-4fcc-bf45-6de3b5b06de2" value="20000000.0">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="44294593-d3b9-4940-9b58-699ccbb28b86" physicalQuantity="COST" description="Cost in EUR" unit="EURO"/>
          </installationCosts>
        </costInformation>
      </asset>
      <asset xsi:type="esdl:Pipe" id="8fa58f83-6d2c-4ed7-b8bb-d83d089a3932" outerDiameter="0.4" diameter="DN250" length="356.2" innerDiameter="0.263" name="Pipe_8fa5">
        <material xsi:type="esdl:CompoundMatter" compoundType="LAYERED">
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.005">
            <matter xsi:type="esdl:Material" thermalConductivity="52.15" id="faac539b-4b7c-43f8-abcd-f08fa2652b7b" name="steel"/>
          </component>
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.0587">
            <matter xsi:type="esdl:Material" thermalConductivity="0.027" id="d23b4eeb-a419-4c16-bc7e-280a76116f04" name="PUR"/>
          </component>
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.0048">
            <matter xsi:type="esdl:Material" thermalConductivity="0.4" id="a2b91e8d-471d-4276-a8f6-4efb01054b4e" name="HDPE"/>
          </component>
        </material>
        <port xsi:type="esdl:InPort" connectedTo="81fbe527-8919-4864-b3fa-d3dbc223e4bb" id="74f2c723-08f3-4d44-871b-875aa721e055" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="In"/>
        <port xsi:type="esdl:OutPort" id="abfddfae-c090-4b8a-88b1-23d4c6adacc5" connectedTo="4d629e6e-5db4-4a8f-9945-934a24ede11a" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="Out">
          <profile xsi:type="esdl:InfluxDBProfile" field="HeatIn.Q" database="b775f984-fe16-49ff-8198-d773ead98e98" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="3226292f-e451-4a96-8c09-579571a7199b" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" endDate="2019-12-31T23:00:00.000000+0000" filters="&quot;assetId&quot;='8fa58f83-6d2c-4ed7-b8bb-d83d089a3932'" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="CUBIC_METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="Heat_flow" database="b775f984-fe16-49ff-8198-d773ead98e98" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="06dbf49e-09fd-46b6-a31b-5dc926bce0e3" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" endDate="2019-12-31T23:00:00.000000+0000" filters="&quot;assetId&quot;='8fa58f83-6d2c-4ed7-b8bb-d83d089a3932'" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="HeatIn.H" database="b775f984-fe16-49ff-8198-d773ead98e98" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="ff2bf8d2-39eb-4a76-8a85-92891882c839" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" endDate="2019-12-31T23:00:00.000000+0000" filters="&quot;assetId&quot;='8fa58f83-6d2c-4ed7-b8bb-d83d089a3932'" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="PostProc.Velocity" database="b775f984-fe16-49ff-8198-d773ead98e98" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="5a4dbade-5147-4941-8c71-49513ea63f38" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" endDate="2019-12-31T23:00:00.000000+0000" filters="&quot;assetId&quot;='8fa58f83-6d2c-4ed7-b8bb-d83d089a3932'" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="SPEED" unit="METRE"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lon="4.364705085754395" lat="51.995081053536964"/>
          <point xsi:type="esdl:Point" lon="4.36983346939087" lat="51.995622746921015"/>
        </geometry>
        <dataSource xsi:type="esdl:DataSource" attribution="https://www.logstor.com/media/6506/product-catalogue-uk-202003.pdf" name="Logstor Product Catalogue Version 2020.03"/>
        <costInformation xsi:type="esdl:CostInformation" id="91120115-4997-441c-8732-827100c28f9b">
          <investmentCosts xsi:type="esdl:SingleValue" id="2ab2214c-8d42-4b74-877f-7fb97f6eab86" name="Combined investment and installation costs" value="2840.6">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO" id="9169bd50-197f-4d6b-aaac-b383a59c815d" description="Costs in EUR/m" perUnit="METRE"/>
          </investmentCosts>
        </costInformation>
      </asset>
      <asset xsi:type="esdl:Pipe" id="c4b13a2c-8331-4deb-9580-af593a1854d4" outerDiameter="0.4" diameter="DN250" length="304.4" innerDiameter="0.263" name="Pipe_8fa5_ret">
        <port xsi:type="esdl:InPort" connectedTo="5a47482f-6cdf-41b3-91b0-014578ee8143" id="c92afccb-09a2-4a99-ad98-3f18ca0122dd" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="In"/>
        <port xsi:type="esdl:OutPort" id="3d19f298-ae58-4e56-92b6-e3ea896af6cb" connectedTo="4d708ad1-b369-47a3-abd3-26aa96173e71" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="Out">
          <profile xsi:type="esdl:InfluxDBProfile" field="HeatIn.Q" database="b775f984-fe16-49ff-8198-d773ead98e98" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="1ba1aa27-5db5-4754-86cd-212d1f047d5c" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" endDate="2019-12-31T23:00:00.000000+0000" filters="&quot;assetId&quot;='c4b13a2c-8331-4deb-9580-af593a1854d4'" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="CUBIC_METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="Heat_flow" database="b775f984-fe16-49ff-8198-d773ead98e98" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="c6b67271-1712-47a0-b4f8-8c2aa2276a37" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" endDate="2019-12-31T23:00:00.000000+0000" filters="&quot;assetId&quot;='c4b13a2c-8331-4deb-9580-af593a1854d4'" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="HeatIn.H" database="b775f984-fe16-49ff-8198-d773ead98e98" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="3bb563b6-9f94-43aa-a544-570f9333643b" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" endDate="2019-12-31T23:00:00.000000+0000" filters="&quot;assetId&quot;='c4b13a2c-8331-4deb-9580-af593a1854d4'" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="PostProc.Velocity" database="b775f984-fe16-49ff-8198-d773ead98e98" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="23cfb3ed-151d-40d5-a1a4-315a3d63d4c3" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" endDate="2019-12-31T23:00:00.000000+0000" filters="&quot;assetId&quot;='c4b13a2c-8331-4deb-9580-af593a1854d4'" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="SPEED" unit="METRE"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lon="4.369031429215318" lat="51.99571274701101"/>
          <point xsi:type="esdl:Point" lon="4.364705085754395" lat="51.995081053536964"/>
        </geometry>
        <dataSource xsi:type="esdl:DataSource" attribution="https://www.logstor.com/media/6506/product-catalogue-uk-202003.pdf" name="Logstor Product Catalogue Version 2020.03"/>
        <costInformation xsi:type="esdl:CostInformation" id="cfd3ba5f-9772-414f-9316-9b746039f0e6">
          <investmentCosts xsi:type="esdl:SingleValue" id="2ab2214c-8d42-4b74-877f-7fb97f6eab86" name="Combined investment and installation costs" value="2840.6">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO" id="9169bd50-197f-4d6b-aaac-b383a59c815d" description="Costs in EUR/m" perUnit="METRE"/>
          </investmentCosts>
        </costInformation>
      </asset>
      <area xsi:type="esdl:Area" name="Area_76a7" id="76a75122-8ea6-472d-8059-374830275d72">
        <asset xsi:type="esdl:HeatingDemand" id="b0ff0df6-4a47-43a5-a0a5-aa10975c0a5c" power="15000000.0" name="HeatingDemand_b0ff">
          <port xsi:type="esdl:InPort" connectedTo="5169316d-ae93-4f04-9a34-7c776444b651" id="2c5a109b-0d98-47b6-acc1-05e1708f8b85" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="In">
            <profile xsi:type="esdl:InfluxDBProfile" field="demand4_MW" database="energy_profiles" startDate="2018-12-31T23:00:00.000000+0000" host="profiles.warmingup.info" id="b8150ac7-ea23-4be6-b5a3-b6974b8df58d" measurement="WarmingUp default profiles" multiplier="2.0" endDate="2019-12-31T22:00:00.000000+0000" filters="" port="443">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="e9405fc8-5e57-4df5-8584-4babee7cdf1b"/>
            </profile>
          </port>
          <port xsi:type="esdl:OutPort" id="d7eb3623-7481-41bb-911d-2dd9bd67db39" connectedTo="5e2f4591-43f2-489f-8eb2-63105dbd0355" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="Out">
            <profile xsi:type="esdl:InfluxDBProfile" field="HeatIn.Q" database="b775f984-fe16-49ff-8198-d773ead98e98" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="aa4d66ed-8fb2-4f6d-81b2-b15847879c63" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" endDate="2019-12-31T23:00:00.000000+0000" filters="&quot;assetId&quot;='b0ff0df6-4a47-43a5-a0a5-aa10975c0a5c'" port="8096">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="CUBIC_METRE"/>
            </profile>
            <profile xsi:type="esdl:InfluxDBProfile" field="Heat_flow" database="b775f984-fe16-49ff-8198-d773ead98e98" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="56e17069-e124-48cc-9478-2f04cb8e96da" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" endDate="2019-12-31T23:00:00.000000+0000" filters="&quot;assetId&quot;='b0ff0df6-4a47-43a5-a0a5-aa10975c0a5c'" port="8096">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
            </profile>
            <profile xsi:type="esdl:InfluxDBProfile" field="HeatIn.H" database="b775f984-fe16-49ff-8198-d773ead98e98" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="8573c92d-74f1-44a6-bb05-0005b50e384e" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" endDate="2019-12-31T23:00:00.000000+0000" filters="&quot;assetId&quot;='b0ff0df6-4a47-43a5-a0a5-aa10975c0a5c'" port="8096">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
            </profile>
          </port>
          <geometry xsi:type="esdl:Point" lon="4.373545646667481" CRS="WGS84" lat="52.00105253065436"/>
          <costInformation xsi:type="esdl:CostInformation" id="cd676c1c-6224-406f-a864-3e7ff55265e0">
            <installationCosts xsi:type="esdl:SingleValue" id="829c1c62-4266-4560-ac77-b961b7a722cf" value="1000000.0">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="1c0a9d42-bb5a-44c1-9ed6-824d7c82e932" physicalQuantity="COST" description="Cost in EUR" unit="EURO"/>
            </installationCosts>
            <investmentCosts xsi:type="esdl:SingleValue" id="08f06cd1-471b-404a-8894-27b315775b59" value="1000000.0">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO" id="f8e5bc00-6eae-47d6-b7ad-b9699879b14c" description="Cost in EUR/MW" perMultiplier="MEGA" perUnit="WATT"/>
            </investmentCosts>
          </costInformation>
        </asset>
        <geometry xsi:type="esdl:Polygon" CRS="WGS84">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lon="4.376142024993897" lat="52.003232185574326"/>
            <point xsi:type="esdl:Point" lon="4.372107982635499" lat="52.002228236493224"/>
            <point xsi:type="esdl:Point" lon="4.3712711334228525" lat="52.0031132980428"/>
            <point xsi:type="esdl:Point" lon="4.366979598999024" lat="52.00197724570447"/>
            <point xsi:type="esdl:Point" lon="4.369254112243653" lat="51.99826505971136"/>
            <point xsi:type="esdl:Point" lon="4.373760223388673" lat="51.99945404958839"/>
            <point xsi:type="esdl:Point" lon="4.3776869773864755" lat="51.995635958872874"/>
            <point xsi:type="esdl:Point" lon="4.380712509155274" lat="51.9963626102222"/>
          </exterior>
        </geometry>
        <KPIs xsi:type="esdl:KPIs" id="486572ab-fb7e-4468-b845-8a980c87bc76">
          <kpi xsi:type="esdl:DoubleKPI" value="15.0" name="Investment">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" multiplier="MEGA" unit="EURO"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="1.0" name="Installation">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" multiplier="MEGA" unit="EURO"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Variable OPEX (year 1)">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" multiplier="MEGA" unit="EURO"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Fixed OPEX (year 1)">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" multiplier="MEGA" unit="EURO"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Estimated energy from local source(s) [%]">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PERCENT"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Estimated energy from regional source(s) [%]">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PERCENT"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="7.4" name="Total energy consumed [GWh]">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="ENERGY" multiplier="GIGA" unit="WATTHOUR"/>
          </kpi>
        </KPIs>
      </area>
      <area xsi:type="esdl:Area" name="Area_9d0f" id="9d0fd9ed-662c-42ec-a417-7e789737084c">
        <asset xsi:type="esdl:HeatingDemand" id="08fd3385-681a-4211-a083-51775cc99daa" power="15000000.0" name="HeatingDemand_08fd">
          <port xsi:type="esdl:InPort" connectedTo="787c6ae3-96da-41e1-af86-6e68a1e28cb1" id="01caa60f-1549-4f3f-817e-e4e6807b2398" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="In">
            <profile xsi:type="esdl:InfluxDBProfile" field="demand4_MW" database="energy_profiles" startDate="2018-12-31T23:00:00.000000+0000" host="profiles.warmingup.info" id="ddd73fb0-d96f-4127-8d39-869455c77930" measurement="WarmingUp default profiles" multiplier="2.0" endDate="2019-12-31T22:00:00.000000+0000" filters="" port="443">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="e9405fc8-5e57-4df5-8584-4babee7cdf1b"/>
            </profile>
          </port>
          <port xsi:type="esdl:OutPort" id="ca90e0a5-f866-4ec2-9b3b-07f054f1c2b2" connectedTo="35ddd90a-e45c-4afd-95b4-80ce6c927071" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="Out">
            <profile xsi:type="esdl:InfluxDBProfile" field="HeatIn.Q" database="b775f984-fe16-49ff-8198-d773ead98e98" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="b9f5c012-48cd-45e4-a3b4-1510fc345472" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" endDate="2019-12-31T23:00:00.000000+0000" filters="&quot;assetId&quot;='08fd3385-681a-4211-a083-51775cc99daa'" port="8096">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="CUBIC_METRE"/>
            </profile>
            <profile xsi:type="esdl:InfluxDBProfile" field="Heat_flow" database="b775f984-fe16-49ff-8198-d773ead98e98" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="e56b384c-2260-4b36-b1a7-35fa565610d0" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" endDate="2019-12-31T23:00:00.000000+0000" filters="&quot;assetId&quot;='08fd3385-681a-4211-a083-51775cc99daa'" port="8096">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
            </profile>
            <profile xsi:type="esdl:InfluxDBProfile" field="HeatIn.H" database="b775f984-fe16-49ff-8198-d773ead98e98" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="07737481-75f1-480f-9a79-e88f480459b8" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" endDate="2019-12-31T23:00:00.000000+0000" filters="&quot;assetId&quot;='08fd3385-681a-4211-a083-51775cc99daa'" port="8096">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
            </profile>
          </port>
          <geometry xsi:type="esdl:Point" lon="4.373245239257813" CRS="WGS84" lat="51.99648151568376"/>
          <costInformation xsi:type="esdl:CostInformation" id="7eac6b5e-ba11-4ef1-b90e-599dd2690d20">
            <installationCosts xsi:type="esdl:SingleValue" id="3b93383a-2ec4-4b35-9335-ebd91f0de600" value="1000000.0">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="318840e0-6f48-46f4-b9c9-91315d7b45fd" physicalQuantity="COST" description="Cost in EUR" unit="EURO"/>
            </installationCosts>
            <investmentCosts xsi:type="esdl:SingleValue" id="26aba0b6-a1a0-4610-97b3-be763548c669" value="1000000.0">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO" id="424508c6-24aa-4a35-81e9-7ae198cbaeb8" description="Cost in EUR/MW" perMultiplier="MEGA" perUnit="WATT"/>
            </investmentCosts>
          </costInformation>
        </asset>
        <geometry xsi:type="esdl:Polygon" CRS="WGS84">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lon="4.3692970275878915" lat="51.99817258139733"/>
            <point xsi:type="esdl:Point" lon="4.373695850372315" lat="51.99932194116153"/>
            <point xsi:type="esdl:Point" lon="4.376678466796876" lat="51.99534529503086"/>
            <point xsi:type="esdl:Point" lon="4.38081979751587" lat="51.99624370444482"/>
            <point xsi:type="esdl:Point" lon="4.381613731384278" lat="51.99490929572965"/>
            <point xsi:type="esdl:Point" lon="4.372708797454835" lat="51.99272923553559"/>
          </exterior>
        </geometry>
        <KPIs xsi:type="esdl:KPIs" id="a3f4910c-d17c-4a3b-8923-c72599755858">
          <kpi xsi:type="esdl:DoubleKPI" value="15.0" name="Investment">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" multiplier="MEGA" unit="EURO"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="1.0" name="Installation">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" multiplier="MEGA" unit="EURO"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Variable OPEX (year 1)">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" multiplier="MEGA" unit="EURO"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Fixed OPEX (year 1)">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" multiplier="MEGA" unit="EURO"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Estimated energy from local source(s) [%]">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PERCENT"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Estimated energy from regional source(s) [%]">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PERCENT"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="7.4" name="Total energy consumed [GWh]">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="ENERGY" multiplier="GIGA" unit="WATTHOUR"/>
          </kpi>
        </KPIs>
      </area>
      <area xsi:type="esdl:Area" name="Area_a58a" id="a58a988c-95c1-492b-bc63-b125d25f5108">
        <asset xsi:type="esdl:HeatingDemand" id="8fbe3d4e-5d5b-4489-9271-9969c2b9e589" power="15000000.0" name="HeatingDemand_8fbe">
          <port xsi:type="esdl:InPort" connectedTo="13edd58c-4a04-4770-8aac-c6e8689acbba" id="23cdb929-5cfc-4b8d-963e-06b6e6cf3a5c" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="In">
            <profile xsi:type="esdl:InfluxDBProfile" field="demand3_MW" database="energy_profiles" startDate="2018-12-31T23:00:00.000000+0000" host="profiles.warmingup.info" id="5ae97047-619a-4119-84f3-848b36743e5d" measurement="WarmingUp default profiles" multiplier="2.0" endDate="2019-12-31T22:00:00.000000+0000" filters="" port="443">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="e9405fc8-5e57-4df5-8584-4babee7cdf1b"/>
            </profile>
          </port>
          <port xsi:type="esdl:OutPort" id="0fd050fa-15ff-4f1e-b0bd-ef1823365eaa" connectedTo="6d1edc18-1962-4d3d-9882-ef27ae1702e8" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="Out">
            <profile xsi:type="esdl:InfluxDBProfile" field="HeatIn.Q" database="b775f984-fe16-49ff-8198-d773ead98e98" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="20a6612f-1d31-46b7-bfa8-2de44b06d360" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" endDate="2019-12-31T23:00:00.000000+0000" filters="&quot;assetId&quot;='8fbe3d4e-5d5b-4489-9271-9969c2b9e589'" port="8096">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="CUBIC_METRE"/>
            </profile>
            <profile xsi:type="esdl:InfluxDBProfile" field="Heat_flow" database="b775f984-fe16-49ff-8198-d773ead98e98" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="c99fb3b3-5582-4458-b750-3750b8daf371" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" endDate="2019-12-31T23:00:00.000000+0000" filters="&quot;assetId&quot;='8fbe3d4e-5d5b-4489-9271-9969c2b9e589'" port="8096">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
            </profile>
            <profile xsi:type="esdl:InfluxDBProfile" field="HeatIn.H" database="b775f984-fe16-49ff-8198-d773ead98e98" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="b3cd8a1b-945b-467d-89ba-129d0cb7875c" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" endDate="2019-12-31T23:00:00.000000+0000" filters="&quot;assetId&quot;='8fbe3d4e-5d5b-4489-9271-9969c2b9e589'" port="8096">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
            </profile>
          </port>
          <geometry xsi:type="esdl:Point" lon="4.379038810729981" CRS="WGS84" lat="51.99069441691871"/>
          <costInformation xsi:type="esdl:CostInformation" id="32e59a3e-fe5e-4201-bbd6-4f26dc4c961e">
            <installationCosts xsi:type="esdl:SingleValue" id="850701a9-ec9a-40c5-ab3e-e0dbe6165cb6" value="1000000.0">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="b18cdc99-6303-404c-958a-1a4c079f842d" physicalQuantity="COST" description="Cost in EUR" unit="EURO"/>
            </installationCosts>
            <investmentCosts xsi:type="esdl:SingleValue" id="3971c64d-50e4-47ec-a769-1f91935065d9" value="1000000.0">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO" id="5a0e43e1-b141-4626-87eb-487cdb70e60e" description="Cost in EUR/MW" perMultiplier="MEGA" perUnit="WATT"/>
            </investmentCosts>
          </costInformation>
        </asset>
        <geometry xsi:type="esdl:Polygon" CRS="WGS84">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lon="4.372987747192384" lat="51.992279997820766"/>
            <point xsi:type="esdl:Point" lon="4.382214546203614" lat="51.994235470276436"/>
            <point xsi:type="esdl:Point" lon="4.38581943511963" lat="51.989333415199866"/>
            <point xsi:type="esdl:Point" lon="4.37633514404297" lat="51.98688879367896"/>
          </exterior>
        </geometry>
        <KPIs xsi:type="esdl:KPIs" id="5bdb1bd5-bdd3-4812-a8e7-dfdd7c31479d">
          <kpi xsi:type="esdl:DoubleKPI" value="15.0" name="Investment">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" multiplier="MEGA" unit="EURO"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="1.0" name="Installation">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" multiplier="MEGA" unit="EURO"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Variable OPEX (year 1)">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" multiplier="MEGA" unit="EURO"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Fixed OPEX (year 1)">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" multiplier="MEGA" unit="EURO"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Estimated energy from local source(s) [%]">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PERCENT"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Estimated energy from regional source(s) [%]">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PERCENT"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="6.6" name="Total energy consumed [GWh]">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="ENERGY" multiplier="GIGA" unit="WATTHOUR"/>
          </kpi>
        </KPIs>
      </area>
      <KPIs xsi:type="esdl:KPIs" id="5422bde4-0909-41b7-9210-743a1dc320e4">
        <kpi xsi:type="esdl:DistributionKPI" name="High level cost breakdown [EUR] (yearly averaged)">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO"/>
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" label="CAPEX" value="263417254.834"/>
            <stringItem xsi:type="esdl:StringItem" label="OPEX" value="77323747.63888116"/>
          </distribution>
        </kpi>
        <kpi xsi:type="esdl:DistributionKPI" name="Overall cost breakdown [EUR] (yearly averaged)">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO"/>
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" label="Installation" value="33000000.0"/>
            <stringItem xsi:type="esdl:StringItem" label="Investment" value="230417254.834"/>
            <stringItem xsi:type="esdl:StringItem" label="Variable OPEX" value="2323747.63888116"/>
            <stringItem xsi:type="esdl:StringItem" label="Fixed OPEX" value="75000000.0"/>
          </distribution>
        </kpi>
        <kpi xsi:type="esdl:DistributionKPI" name="OPEX breakdown [EUR] (yearly averaged)">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO"/>
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" label="ResidualHeatSource" value="77323747.63888116"/>
          </distribution>
        </kpi>
        <kpi xsi:type="esdl:DistributionKPI" name="Energy production [Wh] (yearly averaged)">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="ENERGY" unit="WATTHOUR"/>
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" label="ResidualHeatSource_72d7" value="22383310982.337658"/>
            <stringItem xsi:type="esdl:StringItem" label="ResidualHeatSource_76f0" value="427082703.23696995"/>
          </distribution>
        </kpi>
        <kpi xsi:type="esdl:DistributionKPI" name="Area_76a7: Asset cost breakdown [EUR]">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO"/>
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" label="Installation" value="1000000.0"/>
            <stringItem xsi:type="esdl:StringItem" label="Investment" value="15000000.0"/>
          </distribution>
        </kpi>
        <kpi xsi:type="esdl:DistributionKPI" name="Area_9d0f: Asset cost breakdown [EUR]">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO"/>
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" label="Installation" value="1000000.0"/>
            <stringItem xsi:type="esdl:StringItem" label="Investment" value="15000000.0"/>
          </distribution>
        </kpi>
        <kpi xsi:type="esdl:DistributionKPI" name="Area_a58a: Asset cost breakdown [EUR]">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO"/>
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" label="Installation" value="1000000.0"/>
            <stringItem xsi:type="esdl:StringItem" label="Investment" value="15000000.0"/>
          </distribution>
        </kpi>
      </KPIs>
    </area>
  </instance>
</esdl:EnergySystem>
