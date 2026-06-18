<?xml version='1.0' encoding='UTF-8'?>
<esdl:EnergySystem xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:esdl="http://www.tno.nl/esdl" name="PoC Tutorial_SmartControlOptimized_grow_optimizer_no_heat_losses" id="f709e076-6579-41f7-9440-575ae5a0dfc3" description="" esdlVersion="v2207" version="13">
  <energySystemInformation xsi:type="esdl:EnergySystemInformation" id="5fa7e6e3-5701-48a7-bbbd-cad59a46f6c5">
    <carriers xsi:type="esdl:Carriers" id="42a694c6-9a1b-4cc7-bbae-0b44725f9434">
      <carrier xsi:type="esdl:HeatCommodity" id="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="Primary" supplyTemperature="80.0"/>
      <carrier xsi:type="esdl:HeatCommodity" id="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" returnTemperature="40.0" name="Primary_ret"/>
    </carriers>
    <quantityAndUnits xsi:type="esdl:QuantityAndUnits" id="38f7850a-2090-411e-a15a-84b1d7b78362">
      <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="e9405fc8-5e57-4df5-8584-4babee7cdf1b" description="Power in MW" physicalQuantity="POWER" multiplier="MEGA" unit="WATT"/>
    </quantityAndUnits>
  </energySystemInformation>
  <instance xsi:type="esdl:Instance" id="9af52a01-24e2-4bbe-a7b8-f868161e6ca3" name="Untitled instance">
    <area xsi:type="esdl:Area" name="Untitled area" id="9edf5aa3-3855-4dac-b6f5-01c2edf1a43a">
      <asset xsi:type="esdl:ResidualHeatSource" power="7822436.327999999" name="ResidualHeatSource_72d7" id="72d74fb5-134f-4bfb-829e-220ab76a8a7b">
        <geometry xsi:type="esdl:Point" lon="4.372987747192384" lat="52.00467202060717" CRS="WGS84"/>
        <port xsi:type="esdl:OutPort" id="d890f8aa-9b94-493d-b017-bd7cebaf8c77" name="Out" connectedTo="07c2f88e-85be-4b8b-a72e-14364a3810c9" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6">
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="7423172a-79a4-4068-a87a-c9c90fb57652" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" host="omotes_influxdb" port="8096" database="f709e076-6579-41f7-9440-575ae5a0dfc3" filters="&quot;assetId&quot;='72d74fb5-134f-4bfb-829e-220ab76a8a7b'" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" field="HeatIn.Q">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
            <dataSource xsi:type="esdl:DataSource" id="c80de471-4d31-4098-8cde-208c890ae6f0" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="4dd3cfbf-dfc8-4666-9679-f5725e474d2a" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" host="omotes_influxdb" port="8096" database="f709e076-6579-41f7-9440-575ae5a0dfc3" filters="&quot;assetId&quot;='72d74fb5-134f-4bfb-829e-220ab76a8a7b'" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" field="Heat_flow">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
            <dataSource xsi:type="esdl:DataSource" id="14a382de-f3f8-44a4-8501-8dce0d5fa997" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
        </port>
        <port xsi:type="esdl:InPort" id="4d6c18cd-cc52-443d-8e53-96cd188dd1a8" name="In" connectedTo="c0a27794-98e2-4119-a363-cec4f0b525cd" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret"/>
        <costInformation xsi:type="esdl:CostInformation" id="123cc46e-f8ef-42f9-842f-08e77dd06899">
          <variableOperationalCosts xsi:type="esdl:SingleValue" value="100.0" id="e5bc1b5e-23b1-4985-94f2-bea25c12da14">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="de56cc5d-2baa-451c-b38c-47abea1393c2" description="Cost in EUR/MWh" perUnit="WATTHOUR" perMultiplier="MEGA" physicalQuantity="COST" unit="EURO"/>
          </variableOperationalCosts>
          <installationCosts xsi:type="esdl:SingleValue" value="10000000.0" id="12c24715-08dc-4b61-ae15-76541704c83a">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="89b04c83-eb32-49a3-adc4-492a719221d3" physicalQuantity="COST" description="Cost in EUR" unit="EURO"/>
          </installationCosts>
          <investmentCosts xsi:type="esdl:SingleValue" value="1500000.0" id="3102215e-50a4-4332-b16e-2fd6522df31b">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="69673880-fe81-4f34-8fd9-558cc693a251" description="Cost in EUR/MW" perUnit="WATT" perMultiplier="MEGA" physicalQuantity="COST" unit="EURO"/>
          </investmentCosts>
          <fixedOperationalCosts xsi:type="esdl:SingleValue" value="600000.0" id="8ee43904-745d-4f5c-8b15-5a2adcde7e5f">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="4c3a445d-d13f-4f61-8d75-22280135830f" description="Cost in EUR/MW" perUnit="WATT" perMultiplier="MEGA" physicalQuantity="COST" unit="EURO"/>
          </fixedOperationalCosts>
          <marginalCosts xsi:type="esdl:SingleValue" value="1.0" id="e52de449-7340-4878-b582-d20711d9fb14">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="4fccbb6b-2e41-46d9-a92c-f94da7c3aca7" physicalQuantity="COST" description="Cost in EUR" unit="EURO"/>
          </marginalCosts>
        </costInformation>
      </asset>
      <asset xsi:type="esdl:Pipe" diameter="DN150" name="Pipe1" outerDiameter="0.25" length="818.07" innerDiameter="0.1603" id="Pipe1" related="Pipe1_ret">
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" lon="4.372987747192384" lat="52.00467202060717"/>
          <point xsi:type="esdl:Point" lon="4.365863800048829" lat="52.00210934629504"/>
          <point xsi:type="esdl:Point" lon="4.367129802703858" lat="51.99996926872789"/>
        </geometry>
        <material xsi:type="esdl:CompoundMatter" compoundType="LAYERED">
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.004">
            <matter xsi:type="esdl:Material" id="fa85538e-ebfa-4bce-8386-04980e793e18" name="steel" thermalConductivity="52.15"/>
          </component>
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.03725">
            <matter xsi:type="esdl:Material" id="3bafa031-f40f-42fc-b409-e35fffe5f457" name="PUR" thermalConductivity="0.027"/>
          </component>
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.0036">
            <matter xsi:type="esdl:Material" id="893337e3-58f1-4fb4-8c25-68d71b11fb71" name="HDPE" thermalConductivity="0.4"/>
          </component>
        </material>
        <port xsi:type="esdl:InPort" id="07c2f88e-85be-4b8b-a72e-14364a3810c9" name="In" connectedTo="d890f8aa-9b94-493d-b017-bd7cebaf8c77" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6"/>
        <port xsi:type="esdl:OutPort" id="fc2801d0-215b-4d2b-9846-ee4918b87e21" name="Out" connectedTo="d149871b-d76a-4cc3-8922-c8d99205f47e" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6">
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="875c9535-438f-45b9-b01e-442f9de6c9c8" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" host="omotes_influxdb" port="8096" database="f709e076-6579-41f7-9440-575ae5a0dfc3" filters="&quot;assetId&quot;='Pipe1'" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" field="HeatIn.Q">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
            <dataSource xsi:type="esdl:DataSource" id="4bc982e6-81af-44cc-92ed-8c0093a74784" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="a0a64029-6956-4067-92a4-e8eb058a4d4d" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" host="omotes_influxdb" port="8096" database="f709e076-6579-41f7-9440-575ae5a0dfc3" filters="&quot;assetId&quot;='Pipe1'" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" field="Heat_flow">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
            <dataSource xsi:type="esdl:DataSource" id="3e1b26d0-4e82-407c-b6d3-c6fcda29b02d" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="895b0f9b-c45e-4d80-9362-2488c3aaa595" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" host="omotes_influxdb" port="8096" database="f709e076-6579-41f7-9440-575ae5a0dfc3" filters="&quot;assetId&quot;='Pipe1'" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" field="PostProc.Velocity">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="SPEED" unit="METRE" perTimeUnit="SECOND"/>
            <dataSource xsi:type="esdl:DataSource" id="b7923f9d-80a6-4a9e-a1e5-3d99f09594a0" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
        </port>
        <dataSource xsi:type="esdl:DataSource" attribution="https://www.logstor.com/media/6506/product-catalogue-uk-202003.pdf" name="Logstor Product Catalogue Version 2020.03"/>
        <costInformation xsi:type="esdl:CostInformation" id="4a3d48d9-74bb-4407-b249-9e2af4d1037c">
          <investmentCosts xsi:type="esdl:SingleValue" value="1126.4" name="Combined investment and installation costs" id="2ab2214c-8d42-4b74-877f-7fb97f6eab86">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="9169bd50-197f-4d6b-aaac-b383a59c815d" description="Costs in EUR/m" perUnit="METRE" physicalQuantity="COST" unit="EURO"/>
          </investmentCosts>
        </costInformation>
      </asset>
      <asset xsi:type="esdl:Joint" name="Joint_a04c" id="a04cb927-426d-4016-a084-356002a85d6c">
        <geometry xsi:type="esdl:Point" lon="4.367129802703858" lat="51.99996926872789"/>
        <port xsi:type="esdl:InPort" id="d149871b-d76a-4cc3-8922-c8d99205f47e" name="In" connectedTo="fc2801d0-215b-4d2b-9846-ee4918b87e21" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6"/>
        <port xsi:type="esdl:OutPort" id="3535f436-1270-4b1b-a326-41d69cd6e330" name="Out" connectedTo="863d2ff2-7a68-4bfb-8aa5-dab741b72b25 7f18f0b7-fcf3-4d83-8a65-79cbd3273ea7" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6"/>
      </asset>
      <asset xsi:type="esdl:Pipe" diameter="DN400" name="Pipe2" outerDiameter="0.56" length="517.54" innerDiameter="0.3938" id="Pipe2" related="Pipe2_ret">
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" lon="4.367129802703858" lat="51.99996926872789"/>
          <point xsi:type="esdl:Point" lon="4.36983346939087" lat="51.995622746921015"/>
        </geometry>
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
        <port xsi:type="esdl:InPort" id="863d2ff2-7a68-4bfb-8aa5-dab741b72b25" name="In" connectedTo="3535f436-1270-4b1b-a326-41d69cd6e330" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6"/>
        <port xsi:type="esdl:OutPort" id="8c38fc93-ed85-42ef-9be6-87d47c416e90" name="Out" connectedTo="4d629e6e-5db4-4a8f-9945-934a24ede11a" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6">
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="61c6856e-6b55-43bc-8532-eb7f1c9396b5" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" host="omotes_influxdb" port="8096" database="f709e076-6579-41f7-9440-575ae5a0dfc3" filters="&quot;assetId&quot;='Pipe2'" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" field="HeatIn.Q">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
            <dataSource xsi:type="esdl:DataSource" id="c0a5dab5-8f4c-402e-95c4-f8f96d4a1b58" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="aad16c0b-09c7-430d-b4e8-f81a9054562e" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" host="omotes_influxdb" port="8096" database="f709e076-6579-41f7-9440-575ae5a0dfc3" filters="&quot;assetId&quot;='Pipe2'" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" field="Heat_flow">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
            <dataSource xsi:type="esdl:DataSource" id="d1e3b072-cb3c-414f-8ff2-b80ceacda6ed" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="e327220c-fa17-43a1-810f-f37655e60646" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" host="omotes_influxdb" port="8096" database="f709e076-6579-41f7-9440-575ae5a0dfc3" filters="&quot;assetId&quot;='Pipe2'" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" field="PostProc.Velocity">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="SPEED" unit="METRE" perTimeUnit="SECOND"/>
            <dataSource xsi:type="esdl:DataSource" id="ab5b01da-25ed-43ab-8acf-2440bb46a871" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
        </port>
        <dataSource xsi:type="esdl:DataSource" attribution="https://www.logstor.com/media/6506/product-catalogue-uk-202003.pdf" name="Logstor Product Catalogue Version 2020.03"/>
        <costInformation xsi:type="esdl:CostInformation" id="4a3d48d9-74bb-4407-b249-9e2af4d1037c">
          <investmentCosts xsi:type="esdl:SingleValue" value="2840.6" name="Combined investment and installation costs" id="2ab2214c-8d42-4b74-877f-7fb97f6eab86">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="9169bd50-197f-4d6b-aaac-b383a59c815d" description="Costs in EUR/m" perUnit="METRE" physicalQuantity="COST" unit="EURO"/>
          </investmentCosts>
        </costInformation>
      </asset>
      <asset xsi:type="esdl:Pipe" diameter="DN400" name="Pipe3" outerDiameter="0.56" length="1182.23" innerDiameter="0.3938" id="Pipe3" related="Pipe3_ret">
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" lon="4.36983346939087" lat="51.995622746921015"/>
          <point xsi:type="esdl:Point" lon="4.373888969421388" lat="51.989029496545015"/>
          <point xsi:type="esdl:Point" lon="4.379038810729981" lat="51.99069441691871"/>
        </geometry>
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
        <port xsi:type="esdl:InPort" id="e44060e9-8b0e-41e5-ae46-ce074c891c15" name="In" connectedTo="a42acf83-361d-4d4d-8001-8617daad939a" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6"/>
        <port xsi:type="esdl:OutPort" id="13edd58c-4a04-4770-8aac-c6e8689acbba" name="Out" connectedTo="23cdb929-5cfc-4b8d-963e-06b6e6cf3a5c" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6">
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="34057f71-c146-4bb8-b2ab-a3178fa9b6d4" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" host="omotes_influxdb" port="8096" database="f709e076-6579-41f7-9440-575ae5a0dfc3" filters="&quot;assetId&quot;='Pipe3'" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" field="HeatIn.Q">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
            <dataSource xsi:type="esdl:DataSource" id="49a0cfda-a9ed-4fd4-939b-342d08196864" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="e8d053fd-5915-4c98-b37c-4308387cdb27" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" host="omotes_influxdb" port="8096" database="f709e076-6579-41f7-9440-575ae5a0dfc3" filters="&quot;assetId&quot;='Pipe3'" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" field="Heat_flow">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
            <dataSource xsi:type="esdl:DataSource" id="d5b871af-c639-46c2-9c24-018823fac842" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="6baf917c-69e9-4160-abda-5c0fbaaa0a66" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" host="omotes_influxdb" port="8096" database="f709e076-6579-41f7-9440-575ae5a0dfc3" filters="&quot;assetId&quot;='Pipe3'" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" field="PostProc.Velocity">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="SPEED" unit="METRE" perTimeUnit="SECOND"/>
            <dataSource xsi:type="esdl:DataSource" id="666a449f-b0b0-4c03-87be-233c26fbf5f2" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
        </port>
        <dataSource xsi:type="esdl:DataSource" attribution="https://www.logstor.com/media/6506/product-catalogue-uk-202003.pdf" name="Logstor Product Catalogue Version 2020.03"/>
        <costInformation xsi:type="esdl:CostInformation" id="4a3d48d9-74bb-4407-b249-9e2af4d1037c">
          <investmentCosts xsi:type="esdl:SingleValue" value="2840.6" name="Combined investment and installation costs" id="2ab2214c-8d42-4b74-877f-7fb97f6eab86">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="9169bd50-197f-4d6b-aaac-b383a59c815d" description="Costs in EUR/m" perUnit="METRE" physicalQuantity="COST" unit="EURO"/>
          </investmentCosts>
        </costInformation>
      </asset>
      <asset xsi:type="esdl:Joint" name="Joint_95ca" id="95caf7c7-e89f-4378-96f2-f904f9255c83">
        <geometry xsi:type="esdl:Point" lon="4.36983346939087" lat="51.995622746921015"/>
        <port xsi:type="esdl:InPort" id="4d629e6e-5db4-4a8f-9945-934a24ede11a" name="In" connectedTo="8c38fc93-ed85-42ef-9be6-87d47c416e90" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6"/>
        <port xsi:type="esdl:OutPort" id="a42acf83-361d-4d4d-8001-8617daad939a" name="Out" connectedTo="e44060e9-8b0e-41e5-ae46-ce074c891c15 20165ec3-cf86-41e4-976f-079ba0ca5be4" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6"/>
      </asset>
      <asset xsi:type="esdl:Pipe" diameter="DN300" name="Pipe4" outerDiameter="0.45" length="455.4" innerDiameter="0.3127" id="Pipe4" related="Pipe4_ret">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lon="4.367129802703858" lat="51.99996926872789"/>
          <point xsi:type="esdl:Point" lon="4.373545646667481" lat="52.00105253065436"/>
        </geometry>
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
        <port xsi:type="esdl:InPort" id="7f18f0b7-fcf3-4d83-8a65-79cbd3273ea7" name="In" connectedTo="3535f436-1270-4b1b-a326-41d69cd6e330" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6"/>
        <port xsi:type="esdl:OutPort" id="5169316d-ae93-4f04-9a34-7c776444b651" name="Out" connectedTo="2c5a109b-0d98-47b6-acc1-05e1708f8b85" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6">
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="e657e4fd-0521-46ac-9bee-07ffabd3ac82" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" host="omotes_influxdb" port="8096" database="f709e076-6579-41f7-9440-575ae5a0dfc3" filters="&quot;assetId&quot;='Pipe4'" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" field="HeatIn.Q">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
            <dataSource xsi:type="esdl:DataSource" id="ac7acfc1-0c36-4113-8574-6aadd68ab51b" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="d955148a-0d8d-4a02-b328-b83f20f537b1" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" host="omotes_influxdb" port="8096" database="f709e076-6579-41f7-9440-575ae5a0dfc3" filters="&quot;assetId&quot;='Pipe4'" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" field="Heat_flow">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
            <dataSource xsi:type="esdl:DataSource" id="9283206a-8fcc-4621-a27c-2248364df6c8" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="c4b1a9ce-c449-400a-b39d-ebdaf6f06c20" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" host="omotes_influxdb" port="8096" database="f709e076-6579-41f7-9440-575ae5a0dfc3" filters="&quot;assetId&quot;='Pipe4'" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" field="PostProc.Velocity">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="SPEED" unit="METRE" perTimeUnit="SECOND"/>
            <dataSource xsi:type="esdl:DataSource" id="5da143b2-db2f-4aba-93ce-6d7733c0e0db" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
        </port>
        <dataSource xsi:type="esdl:DataSource" attribution="https://www.logstor.com/media/6506/product-catalogue-uk-202003.pdf" name="Logstor Product Catalogue Version 2020.03"/>
        <costInformation xsi:type="esdl:CostInformation" id="384df56d-e3f0-4794-a0e2-bc0c71482e45">
          <investmentCosts xsi:type="esdl:SingleValue" value="1962.1" name="Combined investment and installation costs" id="1e93bdda-8a74-42d5-960d-d64e4dff2025">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="983f0959-8566-43ce-a380-782d29406ed3" description="Costs in EUR/m" perUnit="METRE" physicalQuantity="COST" unit="EURO"/>
          </investmentCosts>
        </costInformation>
      </asset>
      <asset xsi:type="esdl:Pipe" diameter="DN300" name="Pipe5" outerDiameter="0.45" length="252.3" innerDiameter="0.3127" id="Pipe5" related="Pipe5_ret">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lon="4.36983346939087" lat="51.995622746921015"/>
          <point xsi:type="esdl:Point" lon="4.373245239257813" lat="51.99648151568376"/>
        </geometry>
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
        <port xsi:type="esdl:InPort" id="20165ec3-cf86-41e4-976f-079ba0ca5be4" name="In" connectedTo="a42acf83-361d-4d4d-8001-8617daad939a" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6"/>
        <port xsi:type="esdl:OutPort" id="787c6ae3-96da-41e1-af86-6e68a1e28cb1" name="Out" connectedTo="01caa60f-1549-4f3f-817e-e4e6807b2398" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6">
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="181b2a5d-ba35-423e-b5db-47a7cd22da78" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" host="omotes_influxdb" port="8096" database="f709e076-6579-41f7-9440-575ae5a0dfc3" filters="&quot;assetId&quot;='Pipe5'" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" field="HeatIn.Q">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
            <dataSource xsi:type="esdl:DataSource" id="f47a93e9-5e23-40ba-9c69-60555cf7a4d7" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="990a8c9a-c5aa-441d-943a-2bf2dd460358" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" host="omotes_influxdb" port="8096" database="f709e076-6579-41f7-9440-575ae5a0dfc3" filters="&quot;assetId&quot;='Pipe5'" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" field="Heat_flow">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
            <dataSource xsi:type="esdl:DataSource" id="ab94dd9b-8c14-4e5b-a2e1-143f8d1f7d12" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="737797aa-dbca-4d39-b277-613974b151c9" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" host="omotes_influxdb" port="8096" database="f709e076-6579-41f7-9440-575ae5a0dfc3" filters="&quot;assetId&quot;='Pipe5'" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" field="PostProc.Velocity">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="SPEED" unit="METRE" perTimeUnit="SECOND"/>
            <dataSource xsi:type="esdl:DataSource" id="6f98d0f3-554f-44fc-8d56-57c184a4b494" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
        </port>
        <dataSource xsi:type="esdl:DataSource" attribution="https://www.logstor.com/media/6506/product-catalogue-uk-202003.pdf" name="Logstor Product Catalogue Version 2020.03"/>
        <costInformation xsi:type="esdl:CostInformation" id="4c8d9c8f-7e99-4402-8f66-d413e73db121">
          <investmentCosts xsi:type="esdl:SingleValue" value="1962.1" name="Combined investment and installation costs" id="1e93bdda-8a74-42d5-960d-d64e4dff2025">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="983f0959-8566-43ce-a380-782d29406ed3" description="Costs in EUR/m" perUnit="METRE" physicalQuantity="COST" unit="EURO"/>
          </investmentCosts>
        </costInformation>
      </asset>
      <asset xsi:type="esdl:Joint" name="Joint_a04c_ret" id="076ba789-3040-4952-9b2b-fbf9ed05e6bd">
        <geometry xsi:type="esdl:Point" lon="4.3663488762941665" lat="52.000059268817886" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" id="1ba08c64-4c54-4f23-93bf-2b2f6c04229d" name="ret_port" connectedTo="c5df4e61-6603-4315-a45a-196903690d9e 23d8b6bb-9480-4f02-ba7c-d00de8ff206e" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret"/>
        <port xsi:type="esdl:OutPort" id="044ef084-2a9e-4356-bac2-207f5361d4ce" name="ret_port" connectedTo="2c3c73cb-d282-4c97-a060-922c91c50180" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret"/>
      </asset>
      <asset xsi:type="esdl:Joint" name="Joint_95ca_ret" id="b4a5be45-3352-4837-94d6-b110aa842da6">
        <geometry xsi:type="esdl:Point" lon="4.369031429215318" lat="51.99571274701101" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" id="6b4d9bba-484b-46aa-bfe6-895d491b6747" name="ret_port" connectedTo="59b53a77-a253-4a96-81ef-84e719a1f518 6f9268a0-1fd9-42f6-8821-2d7d4a6e5618" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret"/>
        <port xsi:type="esdl:OutPort" id="5a47482f-6cdf-41b3-91b0-014578ee8143" name="ret_port" connectedTo="da70a1aa-53c4-496e-ba63-2c04674b8c84" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret"/>
      </asset>
      <asset xsi:type="esdl:Pipe" diameter="DN150" name="Pipe1_ret" outerDiameter="0.25" id="Pipe1_ret" length="818.07" innerDiameter="0.1603" related="Pipe1">
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" lon="4.3663488762941665" lat="52.000059268817886" CRS="WGS84"/>
          <point xsi:type="esdl:Point" lon="4.365092860885141" lat="52.00219934638504" CRS="WGS84"/>
          <point xsi:type="esdl:Point" lon="4.372228431895539" lat="52.004762020697164" CRS="WGS84"/>
        </geometry>
        <port xsi:type="esdl:InPort" id="2c3c73cb-d282-4c97-a060-922c91c50180" name="In_ret" connectedTo="044ef084-2a9e-4356-bac2-207f5361d4ce" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret"/>
        <port xsi:type="esdl:OutPort" id="c0a27794-98e2-4119-a363-cec4f0b525cd" name="Out_ret" connectedTo="4d6c18cd-cc52-443d-8e53-96cd188dd1a8" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret">
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="37de836e-9245-4522-b28e-e93aee308a9b" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" host="omotes_influxdb" port="8096" database="f709e076-6579-41f7-9440-575ae5a0dfc3" filters="&quot;assetId&quot;='Pipe1_ret'" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" field="HeatIn.Q">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
            <dataSource xsi:type="esdl:DataSource" id="1b93c36b-ed23-4a69-a9d6-ec383f20cb51" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="f196d8ab-6c1a-40cf-933a-20bfdd807f6a" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" host="omotes_influxdb" port="8096" database="f709e076-6579-41f7-9440-575ae5a0dfc3" filters="&quot;assetId&quot;='Pipe1_ret'" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" field="Heat_flow">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
            <dataSource xsi:type="esdl:DataSource" id="50c92db8-a86f-4130-b7e7-3e101346308e" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="6d17d902-bf4e-4d4a-bf38-83ffe2a60f1c" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" host="omotes_influxdb" port="8096" database="f709e076-6579-41f7-9440-575ae5a0dfc3" filters="&quot;assetId&quot;='Pipe1_ret'" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" field="PostProc.Velocity">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="SPEED" unit="METRE" perTimeUnit="SECOND"/>
            <dataSource xsi:type="esdl:DataSource" id="1bd91494-3043-4fdc-8428-af01c1023f53" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
        </port>
        <material xsi:type="esdl:CompoundMatter" compoundType="LAYERED">
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.004">
            <matter xsi:type="esdl:Material" id="fa85538e-ebfa-4bce-8386-04980e793e18" name="steel" thermalConductivity="52.15"/>
          </component>
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.03725">
            <matter xsi:type="esdl:Material" id="3bafa031-f40f-42fc-b409-e35fffe5f457" name="PUR" thermalConductivity="0.027"/>
          </component>
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.0036">
            <matter xsi:type="esdl:Material" id="893337e3-58f1-4fb4-8c25-68d71b11fb71" name="HDPE" thermalConductivity="0.4"/>
          </component>
        </material>
      </asset>
      <asset xsi:type="esdl:Pipe" diameter="DN400" name="Pipe2_ret" outerDiameter="0.56" id="Pipe2_ret" length="517.54" innerDiameter="0.3938" related="Pipe2">
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" lon="4.369031429215318" lat="51.99571274701101" CRS="WGS84"/>
          <point xsi:type="esdl:Point" lon="4.3663488762941665" lat="52.000059268817886" CRS="WGS84"/>
        </geometry>
        <port xsi:type="esdl:InPort" id="da70a1aa-53c4-496e-ba63-2c04674b8c84" name="In_ret" connectedTo="5a47482f-6cdf-41b3-91b0-014578ee8143" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret"/>
        <port xsi:type="esdl:OutPort" id="c5df4e61-6603-4315-a45a-196903690d9e" name="Out_ret" connectedTo="1ba08c64-4c54-4f23-93bf-2b2f6c04229d" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret">
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="26231a0e-25ba-4b88-a59a-ae34d2780ede" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" host="omotes_influxdb" port="8096" database="f709e076-6579-41f7-9440-575ae5a0dfc3" filters="&quot;assetId&quot;='Pipe2_ret'" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" field="HeatIn.Q">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
            <dataSource xsi:type="esdl:DataSource" id="b81330f6-7117-42f5-b8a4-c5266320bc31" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="807b58ee-9d7c-46d6-9f60-8401220925de" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" host="omotes_influxdb" port="8096" database="f709e076-6579-41f7-9440-575ae5a0dfc3" filters="&quot;assetId&quot;='Pipe2_ret'" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" field="Heat_flow">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
            <dataSource xsi:type="esdl:DataSource" id="066de7f5-458a-47cb-aef9-87d6cbadd9ae" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="22d34767-d3c7-4d16-b18a-ac925e31f270" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" host="omotes_influxdb" port="8096" database="f709e076-6579-41f7-9440-575ae5a0dfc3" filters="&quot;assetId&quot;='Pipe2_ret'" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" field="PostProc.Velocity">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="SPEED" unit="METRE" perTimeUnit="SECOND"/>
            <dataSource xsi:type="esdl:DataSource" id="25e1e8f7-aa58-4e88-9ecd-66ddb6091e25" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Pipe" diameter="DN400" name="Pipe3_ret" outerDiameter="0.56" id="Pipe3_ret" length="1182.23" innerDiameter="0.3938" related="Pipe3">
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" lon="4.378211386257638" lat="51.990784417008705" CRS="WGS84"/>
          <point xsi:type="esdl:Point" lon="4.37305259776345" lat="51.98911949663501" CRS="WGS84"/>
          <point xsi:type="esdl:Point" lon="4.369031429215318" lat="51.99571274701101" CRS="WGS84"/>
        </geometry>
        <port xsi:type="esdl:InPort" id="6d1edc18-1962-4d3d-9882-ef27ae1702e8" name="In_ret" connectedTo="0fd050fa-15ff-4f1e-b0bd-ef1823365eaa" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret"/>
        <port xsi:type="esdl:OutPort" id="59b53a77-a253-4a96-81ef-84e719a1f518" name="Out_ret" connectedTo="6b4d9bba-484b-46aa-bfe6-895d491b6747" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret">
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="3007c39c-98a8-46c9-ab87-77fe88ba1422" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" host="omotes_influxdb" port="8096" database="f709e076-6579-41f7-9440-575ae5a0dfc3" filters="&quot;assetId&quot;='Pipe3_ret'" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" field="HeatIn.Q">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
            <dataSource xsi:type="esdl:DataSource" id="d125ff60-6554-450e-8b1c-0c7cccbb6282" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="f9baee8a-4321-441f-8ff6-fd0ee7685aaa" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" host="omotes_influxdb" port="8096" database="f709e076-6579-41f7-9440-575ae5a0dfc3" filters="&quot;assetId&quot;='Pipe3_ret'" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" field="Heat_flow">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
            <dataSource xsi:type="esdl:DataSource" id="291f6a48-a652-493b-88aa-bb622943fd78" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="d24cead6-8035-420a-82c9-34c7a2012503" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" host="omotes_influxdb" port="8096" database="f709e076-6579-41f7-9440-575ae5a0dfc3" filters="&quot;assetId&quot;='Pipe3_ret'" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" field="PostProc.Velocity">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="SPEED" unit="METRE" perTimeUnit="SECOND"/>
            <dataSource xsi:type="esdl:DataSource" id="d8479388-e724-466f-a45f-1c6ac8c3bc08" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Pipe" diameter="DN300" name="Pipe4_ret" outerDiameter="0.45" id="Pipe4_ret" length="455.4" innerDiameter="0.3127" related="Pipe4">
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" lon="4.372769808163894" lat="52.00114253074436" CRS="WGS84"/>
          <point xsi:type="esdl:Point" lon="4.3663488762941665" lat="52.000059268817886" CRS="WGS84"/>
        </geometry>
        <port xsi:type="esdl:InPort" id="5e2f4591-43f2-489f-8eb2-63105dbd0355" name="In_ret" connectedTo="d7eb3623-7481-41bb-911d-2dd9bd67db39" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret"/>
        <port xsi:type="esdl:OutPort" id="23d8b6bb-9480-4f02-ba7c-d00de8ff206e" name="Out_ret" connectedTo="1ba08c64-4c54-4f23-93bf-2b2f6c04229d" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret">
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="f31eb3e4-cba7-495e-a436-ad11cd152229" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" host="omotes_influxdb" port="8096" database="f709e076-6579-41f7-9440-575ae5a0dfc3" filters="&quot;assetId&quot;='Pipe4_ret'" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" field="HeatIn.Q">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
            <dataSource xsi:type="esdl:DataSource" id="1152f308-b4dc-42af-a937-ccaa5adaadb9" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="b88dde60-ad15-40c4-9f6d-b504fa2b4afb" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" host="omotes_influxdb" port="8096" database="f709e076-6579-41f7-9440-575ae5a0dfc3" filters="&quot;assetId&quot;='Pipe4_ret'" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" field="Heat_flow">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
            <dataSource xsi:type="esdl:DataSource" id="e18298bc-37e3-4cb6-9fe1-ac5cb4874d06" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="3b4f7fcc-14a2-47e9-a364-c57933df519b" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" host="omotes_influxdb" port="8096" database="f709e076-6579-41f7-9440-575ae5a0dfc3" filters="&quot;assetId&quot;='Pipe4_ret'" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" field="PostProc.Velocity">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="SPEED" unit="METRE" perTimeUnit="SECOND"/>
            <dataSource xsi:type="esdl:DataSource" id="0112320e-c311-4efd-a61f-15812b0e1252" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Pipe" diameter="DN300" name="Pipe5_ret" outerDiameter="0.45" id="Pipe5_ret" length="252.3" innerDiameter="0.3127" related="Pipe5">
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" lon="4.372447461880088" lat="51.99657151577376" CRS="WGS84"/>
          <point xsi:type="esdl:Point" lon="4.369031429215318" lat="51.99571274701101" CRS="WGS84"/>
        </geometry>
        <port xsi:type="esdl:InPort" id="35ddd90a-e45c-4afd-95b4-80ce6c927071" name="In_ret" connectedTo="ca90e0a5-f866-4ec2-9b3b-07f054f1c2b2" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret"/>
        <port xsi:type="esdl:OutPort" id="6f9268a0-1fd9-42f6-8821-2d7d4a6e5618" name="Out_ret" connectedTo="6b4d9bba-484b-46aa-bfe6-895d491b6747" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret">
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="eab3b5a6-ee78-4c94-9a4f-de037943c91e" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" host="omotes_influxdb" port="8096" database="f709e076-6579-41f7-9440-575ae5a0dfc3" filters="&quot;assetId&quot;='Pipe5_ret'" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" field="HeatIn.Q">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
            <dataSource xsi:type="esdl:DataSource" id="19b67d30-60b2-4e6e-b932-92ca8e142a02" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="6db128a0-457b-48b1-98ca-bd0688ad9cbc" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" host="omotes_influxdb" port="8096" database="f709e076-6579-41f7-9440-575ae5a0dfc3" filters="&quot;assetId&quot;='Pipe5_ret'" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" field="Heat_flow">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
            <dataSource xsi:type="esdl:DataSource" id="5d655589-3ec6-4e40-91a7-e707fe4aef78" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="89cd355d-f468-4419-9761-8e82070912d3" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" host="omotes_influxdb" port="8096" database="f709e076-6579-41f7-9440-575ae5a0dfc3" filters="&quot;assetId&quot;='Pipe5_ret'" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" field="PostProc.Velocity">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="SPEED" unit="METRE" perTimeUnit="SECOND"/>
            <dataSource xsi:type="esdl:DataSource" id="7e0a8808-b56a-485c-a3ac-3102e29b90b5" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
        </port>
      </asset>
      <area xsi:type="esdl:Area" name="Area_76a7" id="76a75122-8ea6-472d-8059-374830275d72">
        <asset xsi:type="esdl:HeatingDemand" name="HeatingDemand_b0ff" id="b0ff0df6-4a47-43a5-a0a5-aa10975c0a5c" power="15000000.0">
          <geometry xsi:type="esdl:Point" lon="4.373545646667481" lat="52.00105253065436" CRS="WGS84"/>
          <port xsi:type="esdl:InPort" id="2c5a109b-0d98-47b6-acc1-05e1708f8b85" name="In" connectedTo="5169316d-ae93-4f04-9a34-7c776444b651" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6">
            <profile xsi:type="esdl:InfluxDBProfile" multiplier="2.0" startDate="2018-12-31T23:00:00.000000+0000" filters="" id="b8150ac7-ea23-4be6-b5a3-b6974b8df58d" database="energy_profiles" measurement="WarmingUp default profiles" host="profiles.warmingup.info" field="demand4_MW" port="443" endDate="2019-12-31T22:00:00.000000+0000">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="e9405fc8-5e57-4df5-8584-4babee7cdf1b"/>
            </profile>
          </port>
          <port xsi:type="esdl:OutPort" id="d7eb3623-7481-41bb-911d-2dd9bd67db39" name="Out" connectedTo="5e2f4591-43f2-489f-8eb2-63105dbd0355" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret">
            <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="3b64f658-500c-4042-bf64-23dc01e8aecf" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" host="omotes_influxdb" port="8096" database="f709e076-6579-41f7-9440-575ae5a0dfc3" filters="&quot;assetId&quot;='b0ff0df6-4a47-43a5-a0a5-aa10975c0a5c'" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" field="HeatIn.Q">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
              <dataSource xsi:type="esdl:DataSource" id="51681784-da8b-475d-9ede-da0061c483bf" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
            </profile>
            <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="bc32d435-5cc0-44ba-b77c-b8d274829934" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" host="omotes_influxdb" port="8096" database="f709e076-6579-41f7-9440-575ae5a0dfc3" filters="&quot;assetId&quot;='b0ff0df6-4a47-43a5-a0a5-aa10975c0a5c'" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" field="Heat_flow">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
              <dataSource xsi:type="esdl:DataSource" id="885e9807-9a94-43a6-977a-4b9bd2a0cd47" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
            </profile>
          </port>
          <costInformation xsi:type="esdl:CostInformation" id="cd676c1c-6224-406f-a864-3e7ff55265e0">
            <investmentCosts xsi:type="esdl:SingleValue" value="1000000.0" id="08f06cd1-471b-404a-8894-27b315775b59">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="f8e5bc00-6eae-47d6-b7ad-b9699879b14c" description="Cost in EUR/MW" perUnit="WATT" perMultiplier="MEGA" physicalQuantity="COST" unit="EURO"/>
            </investmentCosts>
            <installationCosts xsi:type="esdl:SingleValue" value="1000000.0" id="829c1c62-4266-4560-ac77-b961b7a722cf">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="1c0a9d42-bb5a-44c1-9ed6-824d7c82e932" physicalQuantity="COST" description="Cost in EUR" unit="EURO"/>
            </installationCosts>
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
        <KPIs xsi:type="esdl:KPIs" id="74bec31e-9d5b-468f-b831-fbcc27c62631">
          <kpi xsi:type="esdl:DoubleKPI" name="Investment" value="15.0">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" multiplier="MEGA" unit="EURO"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Installation" value="1.0">
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
          <kpi xsi:type="esdl:DoubleKPI" name="Total energy consumed [GWh]" value="7.4">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="ENERGY" multiplier="GIGA" unit="WATTHOUR"/>
          </kpi>
        </KPIs>
      </area>
      <area xsi:type="esdl:Area" name="Area_9d0f" id="9d0fd9ed-662c-42ec-a417-7e789737084c">
        <asset xsi:type="esdl:HeatingDemand" name="HeatingDemand_08fd" id="08fd3385-681a-4211-a083-51775cc99daa" power="15000000.0">
          <geometry xsi:type="esdl:Point" lon="4.373245239257813" lat="51.99648151568376" CRS="WGS84"/>
          <port xsi:type="esdl:InPort" id="01caa60f-1549-4f3f-817e-e4e6807b2398" name="In" connectedTo="787c6ae3-96da-41e1-af86-6e68a1e28cb1" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6">
            <profile xsi:type="esdl:InfluxDBProfile" multiplier="2.0" startDate="2018-12-31T23:00:00.000000+0000" filters="" id="ddd73fb0-d96f-4127-8d39-869455c77930" database="energy_profiles" measurement="WarmingUp default profiles" host="profiles.warmingup.info" field="demand4_MW" port="443" endDate="2019-12-31T22:00:00.000000+0000">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="e9405fc8-5e57-4df5-8584-4babee7cdf1b"/>
            </profile>
          </port>
          <port xsi:type="esdl:OutPort" id="ca90e0a5-f866-4ec2-9b3b-07f054f1c2b2" name="Out" connectedTo="35ddd90a-e45c-4afd-95b4-80ce6c927071" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret">
            <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="5bae8a79-bf81-4ddd-b7d1-b0c6c4476fe4" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" host="omotes_influxdb" port="8096" database="f709e076-6579-41f7-9440-575ae5a0dfc3" filters="&quot;assetId&quot;='08fd3385-681a-4211-a083-51775cc99daa'" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" field="HeatIn.Q">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
              <dataSource xsi:type="esdl:DataSource" id="2613b12d-6e18-431b-b2c9-9cc35aeadcde" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
            </profile>
            <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="8c569955-bc88-47e5-bdb5-cc0d12a2cf9d" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" host="omotes_influxdb" port="8096" database="f709e076-6579-41f7-9440-575ae5a0dfc3" filters="&quot;assetId&quot;='08fd3385-681a-4211-a083-51775cc99daa'" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" field="Heat_flow">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
              <dataSource xsi:type="esdl:DataSource" id="d9022ab6-8540-4d99-a7cd-76c0d4b04a42" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
            </profile>
          </port>
          <costInformation xsi:type="esdl:CostInformation" id="7eac6b5e-ba11-4ef1-b90e-599dd2690d20">
            <investmentCosts xsi:type="esdl:SingleValue" value="1000000.0" id="26aba0b6-a1a0-4610-97b3-be763548c669">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="424508c6-24aa-4a35-81e9-7ae198cbaeb8" description="Cost in EUR/MW" perUnit="WATT" perMultiplier="MEGA" physicalQuantity="COST" unit="EURO"/>
            </investmentCosts>
            <installationCosts xsi:type="esdl:SingleValue" value="1000000.0" id="3b93383a-2ec4-4b35-9335-ebd91f0de600">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="318840e0-6f48-46f4-b9c9-91315d7b45fd" physicalQuantity="COST" description="Cost in EUR" unit="EURO"/>
            </installationCosts>
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
        <KPIs xsi:type="esdl:KPIs" id="904b5efd-403b-4b12-b238-4bdc9b1f99d1">
          <kpi xsi:type="esdl:DoubleKPI" name="Investment" value="15.0">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" multiplier="MEGA" unit="EURO"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Installation" value="1.0">
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
          <kpi xsi:type="esdl:DoubleKPI" name="Total energy consumed [GWh]" value="7.4">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="ENERGY" multiplier="GIGA" unit="WATTHOUR"/>
          </kpi>
        </KPIs>
      </area>
      <area xsi:type="esdl:Area" name="Area_a58a" id="a58a988c-95c1-492b-bc63-b125d25f5108">
        <asset xsi:type="esdl:HeatingDemand" name="HeatingDemand_8fbe" id="8fbe3d4e-5d5b-4489-9271-9969c2b9e589" power="15000000.0">
          <geometry xsi:type="esdl:Point" lon="4.379038810729981" lat="51.99069441691871" CRS="WGS84"/>
          <port xsi:type="esdl:InPort" id="23cdb929-5cfc-4b8d-963e-06b6e6cf3a5c" name="In" connectedTo="13edd58c-4a04-4770-8aac-c6e8689acbba" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6">
            <profile xsi:type="esdl:InfluxDBProfile" multiplier="2.0" startDate="2018-12-31T23:00:00.000000+0000" filters="" id="5ae97047-619a-4119-84f3-848b36743e5d" database="energy_profiles" measurement="WarmingUp default profiles" host="profiles.warmingup.info" field="demand3_MW" port="443" endDate="2019-12-31T22:00:00.000000+0000">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="e9405fc8-5e57-4df5-8584-4babee7cdf1b"/>
            </profile>
          </port>
          <port xsi:type="esdl:OutPort" id="0fd050fa-15ff-4f1e-b0bd-ef1823365eaa" name="Out" connectedTo="6d1edc18-1962-4d3d-9882-ef27ae1702e8" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret">
            <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="0e284346-fc80-459d-acab-619a41735eb5" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" host="omotes_influxdb" port="8096" database="f709e076-6579-41f7-9440-575ae5a0dfc3" filters="&quot;assetId&quot;='8fbe3d4e-5d5b-4489-9271-9969c2b9e589'" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" field="HeatIn.Q">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
              <dataSource xsi:type="esdl:DataSource" id="301b4245-c3e8-4179-90e5-553b50cddae4" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
            </profile>
            <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="b525890f-9b0f-4080-9c1e-869039545318" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" host="omotes_influxdb" port="8096" database="f709e076-6579-41f7-9440-575ae5a0dfc3" filters="&quot;assetId&quot;='8fbe3d4e-5d5b-4489-9271-9969c2b9e589'" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" field="Heat_flow">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
              <dataSource xsi:type="esdl:DataSource" id="7454a718-7f0c-4aa9-8ae8-55fd55d7692b" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
            </profile>
          </port>
          <costInformation xsi:type="esdl:CostInformation" id="32e59a3e-fe5e-4201-bbd6-4f26dc4c961e">
            <investmentCosts xsi:type="esdl:SingleValue" value="1000000.0" id="3971c64d-50e4-47ec-a769-1f91935065d9">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="5a0e43e1-b141-4626-87eb-487cdb70e60e" description="Cost in EUR/MW" perUnit="WATT" perMultiplier="MEGA" physicalQuantity="COST" unit="EURO"/>
            </investmentCosts>
            <installationCosts xsi:type="esdl:SingleValue" value="1000000.0" id="850701a9-ec9a-40c5-ab3e-e0dbe6165cb6">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="b18cdc99-6303-404c-958a-1a4c079f842d" physicalQuantity="COST" description="Cost in EUR" unit="EURO"/>
            </installationCosts>
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
        <KPIs xsi:type="esdl:KPIs" id="6a2b56c7-bcd3-43ee-938d-6784cdb712a9">
          <kpi xsi:type="esdl:DoubleKPI" name="Investment" value="15.0">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" multiplier="MEGA" unit="EURO"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Installation" value="1.0">
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
          <kpi xsi:type="esdl:DoubleKPI" name="Total energy consumed [GWh]" value="6.6">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="ENERGY" multiplier="GIGA" unit="WATTHOUR"/>
          </kpi>
        </KPIs>
      </area>
      <KPIs xsi:type="esdl:KPIs" id="c6a570e8-85a3-4689-bc22-db7769b4f7c8">
        <kpi xsi:type="esdl:DistributionKPI" name="High level cost breakdown [EUR] (yearly averaged)">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO"/>
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" label="CAPEX" value="2593118.2473333334"/>
            <stringItem xsi:type="esdl:StringItem" label="OPEX" value="6820966.574093999"/>
          </distribution>
        </kpi>
        <kpi xsi:type="esdl:DistributionKPI" name="High level cost breakdown [EUR] (30.0 year period)">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO"/>
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" label="CAPEX" value="77793547.42"/>
            <stringItem xsi:type="esdl:StringItem" label="OPEX" value="204628997.22281995"/>
          </distribution>
        </kpi>
        <kpi xsi:type="esdl:DistributionKPI" name="Overall cost breakdown [EUR] (yearly averaged)">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO"/>
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" label="Installation" value="433333.3333333332"/>
            <stringItem xsi:type="esdl:StringItem" label="Investment" value="2159784.914"/>
            <stringItem xsi:type="esdl:StringItem" label="Variable OPEX" value="2127504.777293999"/>
            <stringItem xsi:type="esdl:StringItem" label="Fixed OPEX" value="4693461.7968"/>
          </distribution>
        </kpi>
        <kpi xsi:type="esdl:DistributionKPI" name="Overall cost breakdown [EUR] (30.0 year period)">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO"/>
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" label="Installation" value="12999999.999999996"/>
            <stringItem xsi:type="esdl:StringItem" label="Investment" value="64793547.42"/>
            <stringItem xsi:type="esdl:StringItem" label="Variable OPEX" value="63825143.31881998"/>
            <stringItem xsi:type="esdl:StringItem" label="Fixed OPEX" value="140803853.90399998"/>
          </distribution>
        </kpi>
        <kpi xsi:type="esdl:DistributionKPI" name="CAPEX breakdown [EUR] (30.0 year period)">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO"/>
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" label="ResidualHeatSource" value="21733654.491999995"/>
            <stringItem xsi:type="esdl:StringItem" label="Pipe" value="8059892.927999999"/>
            <stringItem xsi:type="esdl:StringItem" label="HeatingDemand" value="48000000.0"/>
          </distribution>
        </kpi>
        <kpi xsi:type="esdl:DistributionKPI" name="OPEX breakdown [EUR] (yearly averaged)">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO"/>
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" label="ResidualHeatSource" value="6820966.574093999"/>
          </distribution>
        </kpi>
        <kpi xsi:type="esdl:DistributionKPI" name="OPEX breakdown [EUR] (30.0 year period)">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO"/>
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" label="ResidualHeatSource" value="204628997.22281998"/>
          </distribution>
        </kpi>
        <kpi xsi:type="esdl:DistributionKPI" name="Energy production [Wh] (yearly averaged)">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="ENERGY" unit="WATTHOUR"/>
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" label="72d74fb5-134f-4bfb-829e-220ab76a8a7b" value="21275047772.94"/>
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
