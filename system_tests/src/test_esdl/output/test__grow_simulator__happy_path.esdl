<?xml version='1.0' encoding='UTF-8'?>
<esdl:EnergySystem xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:esdl="http://www.tno.nl/esdl" esdlVersion="v2207" name="PoC Tutorial_SmartControlOptimized_Simulation" id="1e4d1256-3d30-46cf-b8cc-a80c0a0b6cd0" version="13" description="">
  <energySystemInformation xsi:type="esdl:EnergySystemInformation" id="5fa7e6e3-5701-48a7-bbbd-cad59a46f6c5">
    <carriers xsi:type="esdl:Carriers" id="42a694c6-9a1b-4cc7-bbae-0b44725f9434">
      <carrier xsi:type="esdl:HeatCommodity" name="Primary" id="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" supplyTemperature="80.0"/>
      <carrier xsi:type="esdl:HeatCommodity" name="Primary_ret" id="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" returnTemperature="40.0"/>
    </carriers>
    <quantityAndUnits xsi:type="esdl:QuantityAndUnits" id="38f7850a-2090-411e-a15a-84b1d7b78362">
      <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" id="e9405fc8-5e57-4df5-8584-4babee7cdf1b" description="Power in MW" multiplier="MEGA" unit="WATT"/>
    </quantityAndUnits>
  </energySystemInformation>
  <instance xsi:type="esdl:Instance" name="Untitled instance" id="9af52a01-24e2-4bbe-a7b8-f868161e6ca3">
    <area xsi:type="esdl:Area" name="Untitled area" id="9edf5aa3-3855-4dac-b6f5-01c2edf1a43a">
      <asset xsi:type="esdl:ResidualHeatSource" id="72d74fb5-134f-4bfb-829e-220ab76a8a7b" power="50000000.0" name="ResidualHeatSource_72d7">
        <geometry xsi:type="esdl:Point" lat="52.00467202060717" lon="4.372987747192384" CRS="WGS84"/>
        <port xsi:type="esdl:OutPort" id="d890f8aa-9b94-493d-b017-bd7cebaf8c77" connectedTo="07c2f88e-85be-4b8b-a72e-14364a3810c9" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="Out">
          <profile xsi:type="esdl:InfluxDBProfile" field="HeatIn.Q" startDate="2018-12-31T23:00:00.000000+0000" database="1e4d1256-3d30-46cf-b8cc-a80c0a0b6cd0" host="localhost" id="8f9ca001-ebac-4310-87a6-12c53c5146d5" measurement="ResidualHeatSource_72d7" endDate="2019-12-31T23:00:00.000000+0000" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="CUBIC_METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="Heat_flow" startDate="2018-12-31T23:00:00.000000+0000" database="1e4d1256-3d30-46cf-b8cc-a80c0a0b6cd0" host="localhost" id="9c46f2f9-1eed-4cac-95c7-0626249b870c" measurement="ResidualHeatSource_72d7" endDate="2019-12-31T23:00:00.000000+0000" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="HeatIn.H" startDate="2018-12-31T23:00:00.000000+0000" database="1e4d1256-3d30-46cf-b8cc-a80c0a0b6cd0" host="localhost" id="2b65cdcd-5bda-4222-adba-5f7014f47140" measurement="ResidualHeatSource_72d7" endDate="2019-12-31T23:00:00.000000+0000" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="Pump_power" startDate="2018-12-31T23:00:00.000000+0000" database="1e4d1256-3d30-46cf-b8cc-a80c0a0b6cd0" host="localhost" id="7b4370df-c76f-47c1-90c2-0bdf2333e08a" measurement="ResidualHeatSource_72d7" endDate="2019-12-31T23:00:00.000000+0000" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
        </port>
        <port xsi:type="esdl:InPort" connectedTo="c0a27794-98e2-4119-a363-cec4f0b525cd" id="4d6c18cd-cc52-443d-8e53-96cd188dd1a8" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="In"/>
        <costInformation xsi:type="esdl:CostInformation" id="123cc46e-f8ef-42f9-842f-08e77dd06899">
          <variableOperationalCosts xsi:type="esdl:SingleValue" value="100.0" id="e5bc1b5e-23b1-4985-94f2-bea25c12da14">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" id="de56cc5d-2baa-451c-b38c-47abea1393c2" description="Cost in EUR/MWh" perMultiplier="MEGA" unit="EURO" perUnit="WATTHOUR"/>
          </variableOperationalCosts>
          <investmentCosts xsi:type="esdl:SingleValue" value="1500000.0" id="3102215e-50a4-4332-b16e-2fd6522df31b">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" id="69673880-fe81-4f34-8fd9-558cc693a251" description="Cost in EUR/MW" perMultiplier="MEGA" unit="EURO" perUnit="WATT"/>
          </investmentCosts>
          <marginalCosts xsi:type="esdl:SingleValue" value="1.0" id="e52de449-7340-4878-b582-d20711d9fb14">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="EURO" physicalQuantity="COST" description="Cost in EUR" id="4fccbb6b-2e41-46d9-a92c-f94da7c3aca7"/>
          </marginalCosts>
          <installationCosts xsi:type="esdl:SingleValue" value="10000000.0" id="12c24715-08dc-4b61-ae15-76541704c83a">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="EURO" physicalQuantity="COST" description="Cost in EUR" id="89b04c83-eb32-49a3-adc4-492a719221d3"/>
          </installationCosts>
          <fixedOperationalCosts xsi:type="esdl:SingleValue" value="600000.0" id="8ee43904-745d-4f5c-8b15-5a2adcde7e5f">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" id="4c3a445d-d13f-4f61-8d75-22280135830f" description="Cost in EUR/MW" perMultiplier="MEGA" unit="EURO" perUnit="WATT"/>
          </fixedOperationalCosts>
        </costInformation>
      </asset>
      <asset xsi:type="esdl:Pipe" outerDiameter="0.56" id="Pipe1" diameter="DN400" innerDiameter="0.3938" name="Pipe1" length="818.07" related="Pipe1_ret">
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" lat="52.00467202060717" lon="4.372987747192384"/>
          <point xsi:type="esdl:Point" lat="52.00210934629504" lon="4.365863800048829"/>
          <point xsi:type="esdl:Point" lat="51.99996926872789" lon="4.367129802703858"/>
        </geometry>
        <material xsi:type="esdl:CompoundMatter" compoundType="LAYERED">
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.0063">
            <matter xsi:type="esdl:Material" name="steel" id="74d84321-1767-4cec-b6e7-b90c06020400" thermalConductivity="52.15"/>
          </component>
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.0711">
            <matter xsi:type="esdl:Material" name="PUR" id="95012cd9-7648-4df5-8c83-74dc73bc16ba" thermalConductivity="0.027"/>
          </component>
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.0057">
            <matter xsi:type="esdl:Material" name="HDPE" id="1392ee3f-34f6-4c8e-ab0e-635b9d7ec9be" thermalConductivity="0.4"/>
          </component>
        </material>
        <port xsi:type="esdl:InPort" connectedTo="d890f8aa-9b94-493d-b017-bd7cebaf8c77" id="07c2f88e-85be-4b8b-a72e-14364a3810c9" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="In"/>
        <port xsi:type="esdl:OutPort" id="fc2801d0-215b-4d2b-9846-ee4918b87e21" connectedTo="d149871b-d76a-4cc3-8922-c8d99205f47e" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="Out">
          <profile xsi:type="esdl:InfluxDBProfile" field="HeatIn.Q" startDate="2018-12-31T23:00:00.000000+0000" database="1e4d1256-3d30-46cf-b8cc-a80c0a0b6cd0" host="localhost" id="8fe77d1b-16cc-427a-b9e6-343a6a6733e2" measurement="Pipe1" endDate="2019-12-31T23:00:00.000000+0000" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="CUBIC_METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="Heat_flow" startDate="2018-12-31T23:00:00.000000+0000" database="1e4d1256-3d30-46cf-b8cc-a80c0a0b6cd0" host="localhost" id="9a33bddf-5680-4ebd-b7d6-04d506869fe4" measurement="Pipe1" endDate="2019-12-31T23:00:00.000000+0000" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="HeatIn.H" startDate="2018-12-31T23:00:00.000000+0000" database="1e4d1256-3d30-46cf-b8cc-a80c0a0b6cd0" host="localhost" id="02879171-f256-47f4-9384-f744dcb54299" measurement="Pipe1" endDate="2019-12-31T23:00:00.000000+0000" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="PostProc.Velocity" startDate="2018-12-31T23:00:00.000000+0000" database="1e4d1256-3d30-46cf-b8cc-a80c0a0b6cd0" host="localhost" id="52d331ca-7529-4b4b-a8a3-179bcd2ca744" measurement="Pipe1" endDate="2019-12-31T23:00:00.000000+0000" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="SPEED" unit="METRE"/>
          </profile>
        </port>
        <dataSource xsi:type="esdl:DataSource" attribution="https://www.logstor.com/media/6506/product-catalogue-uk-202003.pdf" name="Logstor Product Catalogue Version 2020.03"/>
        <costInformation xsi:type="esdl:CostInformation" id="4a3d48d9-74bb-4407-b249-9e2af4d1037c">
          <investmentCosts xsi:type="esdl:SingleValue" value="2840.6" name="Combined investment and installation costs" id="2ab2214c-8d42-4b74-877f-7fb97f6eab86">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" id="9169bd50-197f-4d6b-aaac-b383a59c815d" description="Costs in EUR/m" unit="EURO" perUnit="METRE"/>
          </investmentCosts>
        </costInformation>
      </asset>
      <asset xsi:type="esdl:Joint" id="a04cb927-426d-4016-a084-356002a85d6c" name="Joint_a04c">
        <geometry xsi:type="esdl:Point" lat="51.99996926872789" lon="4.367129802703858"/>
        <port xsi:type="esdl:InPort" connectedTo="fc2801d0-215b-4d2b-9846-ee4918b87e21" id="d149871b-d76a-4cc3-8922-c8d99205f47e" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="In"/>
        <port xsi:type="esdl:OutPort" id="3535f436-1270-4b1b-a326-41d69cd6e330" connectedTo="863d2ff2-7a68-4bfb-8aa5-dab741b72b25 7f18f0b7-fcf3-4d83-8a65-79cbd3273ea7" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="Out"/>
      </asset>
      <asset xsi:type="esdl:Pipe" outerDiameter="0.56" id="Pipe2" diameter="DN400" innerDiameter="0.3938" name="Pipe2" length="517.54" related="Pipe2_ret">
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" lat="51.99996926872789" lon="4.367129802703858"/>
          <point xsi:type="esdl:Point" lat="51.995622746921015" lon="4.36983346939087"/>
        </geometry>
        <material xsi:type="esdl:CompoundMatter" compoundType="LAYERED">
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.0063">
            <matter xsi:type="esdl:Material" name="steel" id="74d84321-1767-4cec-b6e7-b90c06020400" thermalConductivity="52.15"/>
          </component>
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.0711">
            <matter xsi:type="esdl:Material" name="PUR" id="95012cd9-7648-4df5-8c83-74dc73bc16ba" thermalConductivity="0.027"/>
          </component>
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.0057">
            <matter xsi:type="esdl:Material" name="HDPE" id="1392ee3f-34f6-4c8e-ab0e-635b9d7ec9be" thermalConductivity="0.4"/>
          </component>
        </material>
        <port xsi:type="esdl:InPort" connectedTo="3535f436-1270-4b1b-a326-41d69cd6e330" id="863d2ff2-7a68-4bfb-8aa5-dab741b72b25" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="In"/>
        <port xsi:type="esdl:OutPort" id="8c38fc93-ed85-42ef-9be6-87d47c416e90" connectedTo="4d629e6e-5db4-4a8f-9945-934a24ede11a" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="Out">
          <profile xsi:type="esdl:InfluxDBProfile" field="HeatIn.Q" startDate="2018-12-31T23:00:00.000000+0000" database="1e4d1256-3d30-46cf-b8cc-a80c0a0b6cd0" host="localhost" id="a659a459-335a-45dd-8ac5-1248a6db0032" measurement="Pipe2" endDate="2019-12-31T23:00:00.000000+0000" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="CUBIC_METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="Heat_flow" startDate="2018-12-31T23:00:00.000000+0000" database="1e4d1256-3d30-46cf-b8cc-a80c0a0b6cd0" host="localhost" id="97077c31-8786-4526-9d5a-786802974f04" measurement="Pipe2" endDate="2019-12-31T23:00:00.000000+0000" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="HeatIn.H" startDate="2018-12-31T23:00:00.000000+0000" database="1e4d1256-3d30-46cf-b8cc-a80c0a0b6cd0" host="localhost" id="c71a6f99-c6f1-4c03-b043-5c8c195f143d" measurement="Pipe2" endDate="2019-12-31T23:00:00.000000+0000" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="PostProc.Velocity" startDate="2018-12-31T23:00:00.000000+0000" database="1e4d1256-3d30-46cf-b8cc-a80c0a0b6cd0" host="localhost" id="585f4e51-20a3-4e2b-9090-58f142cc40e4" measurement="Pipe2" endDate="2019-12-31T23:00:00.000000+0000" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="SPEED" unit="METRE"/>
          </profile>
        </port>
        <dataSource xsi:type="esdl:DataSource" attribution="https://www.logstor.com/media/6506/product-catalogue-uk-202003.pdf" name="Logstor Product Catalogue Version 2020.03"/>
        <costInformation xsi:type="esdl:CostInformation" id="4a3d48d9-74bb-4407-b249-9e2af4d1037c">
          <investmentCosts xsi:type="esdl:SingleValue" value="2840.6" name="Combined investment and installation costs" id="2ab2214c-8d42-4b74-877f-7fb97f6eab86">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" id="9169bd50-197f-4d6b-aaac-b383a59c815d" description="Costs in EUR/m" unit="EURO" perUnit="METRE"/>
          </investmentCosts>
        </costInformation>
      </asset>
      <asset xsi:type="esdl:Pipe" outerDiameter="0.56" id="Pipe3" diameter="DN400" innerDiameter="0.3938" name="Pipe3" length="1182.23" related="Pipe3_ret">
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" lat="51.995622746921015" lon="4.36983346939087"/>
          <point xsi:type="esdl:Point" lat="51.989029496545015" lon="4.373888969421388"/>
          <point xsi:type="esdl:Point" lat="51.99069441691871" lon="4.379038810729981"/>
        </geometry>
        <material xsi:type="esdl:CompoundMatter" compoundType="LAYERED">
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.0063">
            <matter xsi:type="esdl:Material" name="steel" id="74d84321-1767-4cec-b6e7-b90c06020400" thermalConductivity="52.15"/>
          </component>
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.0711">
            <matter xsi:type="esdl:Material" name="PUR" id="95012cd9-7648-4df5-8c83-74dc73bc16ba" thermalConductivity="0.027"/>
          </component>
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.0057">
            <matter xsi:type="esdl:Material" name="HDPE" id="1392ee3f-34f6-4c8e-ab0e-635b9d7ec9be" thermalConductivity="0.4"/>
          </component>
        </material>
        <port xsi:type="esdl:InPort" connectedTo="a42acf83-361d-4d4d-8001-8617daad939a" id="e44060e9-8b0e-41e5-ae46-ce074c891c15" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="In"/>
        <port xsi:type="esdl:OutPort" id="13edd58c-4a04-4770-8aac-c6e8689acbba" connectedTo="23cdb929-5cfc-4b8d-963e-06b6e6cf3a5c" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="Out">
          <profile xsi:type="esdl:InfluxDBProfile" field="HeatIn.Q" startDate="2018-12-31T23:00:00.000000+0000" database="1e4d1256-3d30-46cf-b8cc-a80c0a0b6cd0" host="localhost" id="3a38b94e-376a-4712-88df-3c9f14ea7c9c" measurement="Pipe3" endDate="2019-12-31T23:00:00.000000+0000" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="CUBIC_METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="Heat_flow" startDate="2018-12-31T23:00:00.000000+0000" database="1e4d1256-3d30-46cf-b8cc-a80c0a0b6cd0" host="localhost" id="cdef81eb-0a5d-48b3-8c29-f9fc3446f792" measurement="Pipe3" endDate="2019-12-31T23:00:00.000000+0000" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="HeatIn.H" startDate="2018-12-31T23:00:00.000000+0000" database="1e4d1256-3d30-46cf-b8cc-a80c0a0b6cd0" host="localhost" id="290b4f3a-42eb-4f75-a0ba-d0eb75047238" measurement="Pipe3" endDate="2019-12-31T23:00:00.000000+0000" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="PostProc.Velocity" startDate="2018-12-31T23:00:00.000000+0000" database="1e4d1256-3d30-46cf-b8cc-a80c0a0b6cd0" host="localhost" id="34a0954e-6545-4126-8273-1138e900042a" measurement="Pipe3" endDate="2019-12-31T23:00:00.000000+0000" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="SPEED" unit="METRE"/>
          </profile>
        </port>
        <dataSource xsi:type="esdl:DataSource" attribution="https://www.logstor.com/media/6506/product-catalogue-uk-202003.pdf" name="Logstor Product Catalogue Version 2020.03"/>
        <costInformation xsi:type="esdl:CostInformation" id="4a3d48d9-74bb-4407-b249-9e2af4d1037c">
          <investmentCosts xsi:type="esdl:SingleValue" value="2840.6" name="Combined investment and installation costs" id="2ab2214c-8d42-4b74-877f-7fb97f6eab86">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" id="9169bd50-197f-4d6b-aaac-b383a59c815d" description="Costs in EUR/m" unit="EURO" perUnit="METRE"/>
          </investmentCosts>
        </costInformation>
      </asset>
      <asset xsi:type="esdl:Joint" id="95caf7c7-e89f-4378-96f2-f904f9255c83" name="Joint_95ca">
        <geometry xsi:type="esdl:Point" lat="51.995622746921015" lon="4.36983346939087"/>
        <port xsi:type="esdl:InPort" connectedTo="8c38fc93-ed85-42ef-9be6-87d47c416e90 abfddfae-c090-4b8a-88b1-23d4c6adacc5" id="4d629e6e-5db4-4a8f-9945-934a24ede11a" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="In"/>
        <port xsi:type="esdl:OutPort" id="a42acf83-361d-4d4d-8001-8617daad939a" connectedTo="e44060e9-8b0e-41e5-ae46-ce074c891c15 20165ec3-cf86-41e4-976f-079ba0ca5be4" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="Out"/>
      </asset>
      <asset xsi:type="esdl:Pipe" outerDiameter="0.45" id="Pipe4" diameter="DN300" innerDiameter="0.3127" name="Pipe4" length="455.4" related="Pipe4_ret">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="51.99996926872789" lon="4.367129802703858"/>
          <point xsi:type="esdl:Point" lat="52.00105253065436" lon="4.373545646667481"/>
        </geometry>
        <material xsi:type="esdl:CompoundMatter" compoundType="LAYERED">
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.0056">
            <matter xsi:type="esdl:Material" name="steel" id="f4cee538-cc3b-4809-bd66-979f2ce9649b" thermalConductivity="52.15"/>
          </component>
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.05785">
            <matter xsi:type="esdl:Material" name="PUR" id="e4c0350c-cd79-45b4-a45c-6259c750b478" thermalConductivity="0.027"/>
          </component>
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.0052">
            <matter xsi:type="esdl:Material" name="HDPE" id="9a97f588-10fe-4a34-b0f2-277862151763" thermalConductivity="0.4"/>
          </component>
        </material>
        <port xsi:type="esdl:InPort" connectedTo="3535f436-1270-4b1b-a326-41d69cd6e330" id="7f18f0b7-fcf3-4d83-8a65-79cbd3273ea7" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="In"/>
        <port xsi:type="esdl:OutPort" id="5169316d-ae93-4f04-9a34-7c776444b651" connectedTo="2c5a109b-0d98-47b6-acc1-05e1708f8b85" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="Out">
          <profile xsi:type="esdl:InfluxDBProfile" field="HeatIn.Q" startDate="2018-12-31T23:00:00.000000+0000" database="1e4d1256-3d30-46cf-b8cc-a80c0a0b6cd0" host="localhost" id="1677328b-2cbe-441d-af01-15968b4895a1" measurement="Pipe4" endDate="2019-12-31T23:00:00.000000+0000" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="CUBIC_METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="Heat_flow" startDate="2018-12-31T23:00:00.000000+0000" database="1e4d1256-3d30-46cf-b8cc-a80c0a0b6cd0" host="localhost" id="a10f3116-d76d-4db7-b07c-4a945abb7a03" measurement="Pipe4" endDate="2019-12-31T23:00:00.000000+0000" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="HeatIn.H" startDate="2018-12-31T23:00:00.000000+0000" database="1e4d1256-3d30-46cf-b8cc-a80c0a0b6cd0" host="localhost" id="015116e0-0399-4680-9d64-978606a9068e" measurement="Pipe4" endDate="2019-12-31T23:00:00.000000+0000" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="PostProc.Velocity" startDate="2018-12-31T23:00:00.000000+0000" database="1e4d1256-3d30-46cf-b8cc-a80c0a0b6cd0" host="localhost" id="80871fad-c8e9-48c5-9b3b-bb12d0586c45" measurement="Pipe4" endDate="2019-12-31T23:00:00.000000+0000" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="SPEED" unit="METRE"/>
          </profile>
        </port>
        <dataSource xsi:type="esdl:DataSource" attribution="https://www.logstor.com/media/6506/product-catalogue-uk-202003.pdf" name="Logstor Product Catalogue Version 2020.03"/>
        <costInformation xsi:type="esdl:CostInformation" id="384df56d-e3f0-4794-a0e2-bc0c71482e45">
          <investmentCosts xsi:type="esdl:SingleValue" value="1962.1" name="Combined investment and installation costs" id="1e93bdda-8a74-42d5-960d-d64e4dff2025">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" id="983f0959-8566-43ce-a380-782d29406ed3" description="Costs in EUR/m" unit="EURO" perUnit="METRE"/>
          </investmentCosts>
        </costInformation>
      </asset>
      <asset xsi:type="esdl:Pipe" outerDiameter="0.45" id="Pipe5" diameter="DN300" innerDiameter="0.3127" name="Pipe5" length="252.3" related="Pipe5_ret">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="51.995622746921015" lon="4.36983346939087"/>
          <point xsi:type="esdl:Point" lat="51.99648151568376" lon="4.373245239257813"/>
        </geometry>
        <material xsi:type="esdl:CompoundMatter" compoundType="LAYERED">
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.0056">
            <matter xsi:type="esdl:Material" name="steel" id="f4cee538-cc3b-4809-bd66-979f2ce9649b" thermalConductivity="52.15"/>
          </component>
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.05785">
            <matter xsi:type="esdl:Material" name="PUR" id="e4c0350c-cd79-45b4-a45c-6259c750b478" thermalConductivity="0.027"/>
          </component>
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.0052">
            <matter xsi:type="esdl:Material" name="HDPE" id="9a97f588-10fe-4a34-b0f2-277862151763" thermalConductivity="0.4"/>
          </component>
        </material>
        <port xsi:type="esdl:InPort" connectedTo="a42acf83-361d-4d4d-8001-8617daad939a" id="20165ec3-cf86-41e4-976f-079ba0ca5be4" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="In"/>
        <port xsi:type="esdl:OutPort" id="787c6ae3-96da-41e1-af86-6e68a1e28cb1" connectedTo="01caa60f-1549-4f3f-817e-e4e6807b2398" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="Out">
          <profile xsi:type="esdl:InfluxDBProfile" field="HeatIn.Q" startDate="2018-12-31T23:00:00.000000+0000" database="1e4d1256-3d30-46cf-b8cc-a80c0a0b6cd0" host="localhost" id="c5e18b79-fcb5-46c7-b53a-b76bf2d57a97" measurement="Pipe5" endDate="2019-12-31T23:00:00.000000+0000" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="CUBIC_METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="Heat_flow" startDate="2018-12-31T23:00:00.000000+0000" database="1e4d1256-3d30-46cf-b8cc-a80c0a0b6cd0" host="localhost" id="1546c065-f779-4ea4-be95-02b532aa0d2a" measurement="Pipe5" endDate="2019-12-31T23:00:00.000000+0000" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="HeatIn.H" startDate="2018-12-31T23:00:00.000000+0000" database="1e4d1256-3d30-46cf-b8cc-a80c0a0b6cd0" host="localhost" id="aae9bad6-fb59-4c24-a234-0f920977824c" measurement="Pipe5" endDate="2019-12-31T23:00:00.000000+0000" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="PostProc.Velocity" startDate="2018-12-31T23:00:00.000000+0000" database="1e4d1256-3d30-46cf-b8cc-a80c0a0b6cd0" host="localhost" id="18fdfadc-59ab-4e3b-8749-5c30b84b4b49" measurement="Pipe5" endDate="2019-12-31T23:00:00.000000+0000" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="SPEED" unit="METRE"/>
          </profile>
        </port>
        <dataSource xsi:type="esdl:DataSource" attribution="https://www.logstor.com/media/6506/product-catalogue-uk-202003.pdf" name="Logstor Product Catalogue Version 2020.03"/>
        <costInformation xsi:type="esdl:CostInformation" id="4c8d9c8f-7e99-4402-8f66-d413e73db121">
          <investmentCosts xsi:type="esdl:SingleValue" value="1962.1" name="Combined investment and installation costs" id="1e93bdda-8a74-42d5-960d-d64e4dff2025">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" id="983f0959-8566-43ce-a380-782d29406ed3" description="Costs in EUR/m" unit="EURO" perUnit="METRE"/>
          </investmentCosts>
        </costInformation>
      </asset>
      <asset xsi:type="esdl:Joint" id="076ba789-3040-4952-9b2b-fbf9ed05e6bd" name="Joint_a04c_ret">
        <geometry xsi:type="esdl:Point" lat="52.000059268817886" lon="4.3663488762941665" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" connectedTo="c5df4e61-6603-4315-a45a-196903690d9e 23d8b6bb-9480-4f02-ba7c-d00de8ff206e" id="1ba08c64-4c54-4f23-93bf-2b2f6c04229d" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="ret_port"/>
        <port xsi:type="esdl:OutPort" id="044ef084-2a9e-4356-bac2-207f5361d4ce" connectedTo="2c3c73cb-d282-4c97-a060-922c91c50180" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="ret_port"/>
      </asset>
      <asset xsi:type="esdl:Joint" id="b4a5be45-3352-4837-94d6-b110aa842da6" name="Joint_95ca_ret">
        <geometry xsi:type="esdl:Point" lat="51.99571274701101" lon="4.369031429215318" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" connectedTo="59b53a77-a253-4a96-81ef-84e719a1f518 6f9268a0-1fd9-42f6-8821-2d7d4a6e5618" id="6b4d9bba-484b-46aa-bfe6-895d491b6747" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="ret_port"/>
        <port xsi:type="esdl:OutPort" id="5a47482f-6cdf-41b3-91b0-014578ee8143" connectedTo="da70a1aa-53c4-496e-ba63-2c04674b8c84 c92afccb-09a2-4a99-ad98-3f18ca0122dd" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="ret_port"/>
      </asset>
      <asset xsi:type="esdl:Pipe" outerDiameter="0.56" id="Pipe1_ret" diameter="DN400" innerDiameter="0.3938" name="Pipe1_ret" length="818.07" related="Pipe1">
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" lat="52.000059268817886" lon="4.3663488762941665" CRS="WGS84"/>
          <point xsi:type="esdl:Point" lat="52.00219934638504" lon="4.365092860885141" CRS="WGS84"/>
          <point xsi:type="esdl:Point" lat="52.004762020697164" lon="4.372228431895539" CRS="WGS84"/>
        </geometry>
        <port xsi:type="esdl:InPort" connectedTo="044ef084-2a9e-4356-bac2-207f5361d4ce" id="2c3c73cb-d282-4c97-a060-922c91c50180" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="In_ret"/>
        <port xsi:type="esdl:OutPort" id="c0a27794-98e2-4119-a363-cec4f0b525cd" connectedTo="4d6c18cd-cc52-443d-8e53-96cd188dd1a8" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="Out_ret">
          <profile xsi:type="esdl:InfluxDBProfile" field="HeatIn.Q" startDate="2018-12-31T23:00:00.000000+0000" database="1e4d1256-3d30-46cf-b8cc-a80c0a0b6cd0" host="localhost" id="30060e76-7478-41b9-87d4-dbecb4cce1dc" measurement="Pipe1_ret" endDate="2019-12-31T23:00:00.000000+0000" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="CUBIC_METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="Heat_flow" startDate="2018-12-31T23:00:00.000000+0000" database="1e4d1256-3d30-46cf-b8cc-a80c0a0b6cd0" host="localhost" id="6d9ddbda-eb44-4c94-8ac6-da4eaf2e7d1b" measurement="Pipe1_ret" endDate="2019-12-31T23:00:00.000000+0000" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="HeatIn.H" startDate="2018-12-31T23:00:00.000000+0000" database="1e4d1256-3d30-46cf-b8cc-a80c0a0b6cd0" host="localhost" id="f7f1f60b-483f-4d4f-9bf2-c0a21146e94e" measurement="Pipe1_ret" endDate="2019-12-31T23:00:00.000000+0000" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="PostProc.Velocity" startDate="2018-12-31T23:00:00.000000+0000" database="1e4d1256-3d30-46cf-b8cc-a80c0a0b6cd0" host="localhost" id="652c009e-339d-4dc8-9e06-417be1bc41f6" measurement="Pipe1_ret" endDate="2019-12-31T23:00:00.000000+0000" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="SPEED" unit="METRE"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Pipe" outerDiameter="0.56" id="Pipe2_ret" diameter="DN400" innerDiameter="0.3938" name="Pipe2_ret" length="517.54" related="Pipe2">
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" lat="51.99571274701101" lon="4.369031429215318" CRS="WGS84"/>
          <point xsi:type="esdl:Point" lat="52.000059268817886" lon="4.3663488762941665" CRS="WGS84"/>
        </geometry>
        <port xsi:type="esdl:InPort" connectedTo="5a47482f-6cdf-41b3-91b0-014578ee8143" id="da70a1aa-53c4-496e-ba63-2c04674b8c84" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="In_ret"/>
        <port xsi:type="esdl:OutPort" id="c5df4e61-6603-4315-a45a-196903690d9e" connectedTo="1ba08c64-4c54-4f23-93bf-2b2f6c04229d" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="Out_ret">
          <profile xsi:type="esdl:InfluxDBProfile" field="HeatIn.Q" startDate="2018-12-31T23:00:00.000000+0000" database="1e4d1256-3d30-46cf-b8cc-a80c0a0b6cd0" host="localhost" id="c99c42a3-c85c-4eb3-943a-2673393ea9e4" measurement="Pipe2_ret" endDate="2019-12-31T23:00:00.000000+0000" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="CUBIC_METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="Heat_flow" startDate="2018-12-31T23:00:00.000000+0000" database="1e4d1256-3d30-46cf-b8cc-a80c0a0b6cd0" host="localhost" id="eb0c04c8-4cce-4c46-9daa-62beb9133492" measurement="Pipe2_ret" endDate="2019-12-31T23:00:00.000000+0000" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="HeatIn.H" startDate="2018-12-31T23:00:00.000000+0000" database="1e4d1256-3d30-46cf-b8cc-a80c0a0b6cd0" host="localhost" id="2fb9ae1c-7ddb-4130-b647-7f76b25903f0" measurement="Pipe2_ret" endDate="2019-12-31T23:00:00.000000+0000" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="PostProc.Velocity" startDate="2018-12-31T23:00:00.000000+0000" database="1e4d1256-3d30-46cf-b8cc-a80c0a0b6cd0" host="localhost" id="a0f915ab-727a-4e87-9ef7-ef56039ebc17" measurement="Pipe2_ret" endDate="2019-12-31T23:00:00.000000+0000" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="SPEED" unit="METRE"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Pipe" outerDiameter="0.56" id="Pipe3_ret" diameter="DN400" innerDiameter="0.3938" name="Pipe3_ret" length="1182.23" related="Pipe3">
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" lat="51.990784417008705" lon="4.378211386257638" CRS="WGS84"/>
          <point xsi:type="esdl:Point" lat="51.98911949663501" lon="4.37305259776345" CRS="WGS84"/>
          <point xsi:type="esdl:Point" lat="51.99571274701101" lon="4.369031429215318" CRS="WGS84"/>
        </geometry>
        <port xsi:type="esdl:InPort" connectedTo="0fd050fa-15ff-4f1e-b0bd-ef1823365eaa" id="6d1edc18-1962-4d3d-9882-ef27ae1702e8" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="In_ret"/>
        <port xsi:type="esdl:OutPort" id="59b53a77-a253-4a96-81ef-84e719a1f518" connectedTo="6b4d9bba-484b-46aa-bfe6-895d491b6747" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="Out_ret">
          <profile xsi:type="esdl:InfluxDBProfile" field="HeatIn.Q" startDate="2018-12-31T23:00:00.000000+0000" database="1e4d1256-3d30-46cf-b8cc-a80c0a0b6cd0" host="localhost" id="3ca5cc59-e063-462f-959e-88cf8d738124" measurement="Pipe3_ret" endDate="2019-12-31T23:00:00.000000+0000" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="CUBIC_METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="Heat_flow" startDate="2018-12-31T23:00:00.000000+0000" database="1e4d1256-3d30-46cf-b8cc-a80c0a0b6cd0" host="localhost" id="11545c4c-ee7f-4d1e-a7db-60eb6979c5cc" measurement="Pipe3_ret" endDate="2019-12-31T23:00:00.000000+0000" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="HeatIn.H" startDate="2018-12-31T23:00:00.000000+0000" database="1e4d1256-3d30-46cf-b8cc-a80c0a0b6cd0" host="localhost" id="0bb87cfa-40f2-435a-999c-8af04aa9b007" measurement="Pipe3_ret" endDate="2019-12-31T23:00:00.000000+0000" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="PostProc.Velocity" startDate="2018-12-31T23:00:00.000000+0000" database="1e4d1256-3d30-46cf-b8cc-a80c0a0b6cd0" host="localhost" id="f73452af-0509-4777-a2ef-c2e32790e74a" measurement="Pipe3_ret" endDate="2019-12-31T23:00:00.000000+0000" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="SPEED" unit="METRE"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Pipe" outerDiameter="0.45" id="Pipe4_ret" diameter="DN300" innerDiameter="0.3127" name="Pipe4_ret" length="455.4" related="Pipe4">
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" lat="52.00114253074436" lon="4.372769808163894" CRS="WGS84"/>
          <point xsi:type="esdl:Point" lat="52.000059268817886" lon="4.3663488762941665" CRS="WGS84"/>
        </geometry>
        <port xsi:type="esdl:InPort" connectedTo="d7eb3623-7481-41bb-911d-2dd9bd67db39" id="5e2f4591-43f2-489f-8eb2-63105dbd0355" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="In_ret"/>
        <port xsi:type="esdl:OutPort" id="23d8b6bb-9480-4f02-ba7c-d00de8ff206e" connectedTo="1ba08c64-4c54-4f23-93bf-2b2f6c04229d" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="Out_ret">
          <profile xsi:type="esdl:InfluxDBProfile" field="HeatIn.Q" startDate="2018-12-31T23:00:00.000000+0000" database="1e4d1256-3d30-46cf-b8cc-a80c0a0b6cd0" host="localhost" id="1cf91c7b-8229-471d-b79a-3b04ccc765e3" measurement="Pipe4_ret" endDate="2019-12-31T23:00:00.000000+0000" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="CUBIC_METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="Heat_flow" startDate="2018-12-31T23:00:00.000000+0000" database="1e4d1256-3d30-46cf-b8cc-a80c0a0b6cd0" host="localhost" id="9693e4a8-fe43-4b45-8eeb-ee24c0443e81" measurement="Pipe4_ret" endDate="2019-12-31T23:00:00.000000+0000" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="HeatIn.H" startDate="2018-12-31T23:00:00.000000+0000" database="1e4d1256-3d30-46cf-b8cc-a80c0a0b6cd0" host="localhost" id="07b0ae88-e37a-4183-80a0-9c2eaf0c917b" measurement="Pipe4_ret" endDate="2019-12-31T23:00:00.000000+0000" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="PostProc.Velocity" startDate="2018-12-31T23:00:00.000000+0000" database="1e4d1256-3d30-46cf-b8cc-a80c0a0b6cd0" host="localhost" id="eba4329b-f4f1-47dc-88fe-7533295cd26d" measurement="Pipe4_ret" endDate="2019-12-31T23:00:00.000000+0000" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="SPEED" unit="METRE"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Pipe" outerDiameter="0.45" id="Pipe5_ret" diameter="DN300" innerDiameter="0.3127" name="Pipe5_ret" length="252.3" related="Pipe5">
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" lat="51.99657151577376" lon="4.372447461880088" CRS="WGS84"/>
          <point xsi:type="esdl:Point" lat="51.99571274701101" lon="4.369031429215318" CRS="WGS84"/>
        </geometry>
        <port xsi:type="esdl:InPort" connectedTo="ca90e0a5-f866-4ec2-9b3b-07f054f1c2b2" id="35ddd90a-e45c-4afd-95b4-80ce6c927071" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="In_ret"/>
        <port xsi:type="esdl:OutPort" id="6f9268a0-1fd9-42f6-8821-2d7d4a6e5618" connectedTo="6b4d9bba-484b-46aa-bfe6-895d491b6747" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="Out_ret">
          <profile xsi:type="esdl:InfluxDBProfile" field="HeatIn.Q" startDate="2018-12-31T23:00:00.000000+0000" database="1e4d1256-3d30-46cf-b8cc-a80c0a0b6cd0" host="localhost" id="7658ab59-543c-4a4f-abe8-865524b584f2" measurement="Pipe5_ret" endDate="2019-12-31T23:00:00.000000+0000" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="CUBIC_METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="Heat_flow" startDate="2018-12-31T23:00:00.000000+0000" database="1e4d1256-3d30-46cf-b8cc-a80c0a0b6cd0" host="localhost" id="fd905568-f8a0-412c-ba7a-ea192040c660" measurement="Pipe5_ret" endDate="2019-12-31T23:00:00.000000+0000" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="HeatIn.H" startDate="2018-12-31T23:00:00.000000+0000" database="1e4d1256-3d30-46cf-b8cc-a80c0a0b6cd0" host="localhost" id="e6731bb2-d01a-4322-8814-30624736d40d" measurement="Pipe5_ret" endDate="2019-12-31T23:00:00.000000+0000" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="PostProc.Velocity" startDate="2018-12-31T23:00:00.000000+0000" database="1e4d1256-3d30-46cf-b8cc-a80c0a0b6cd0" host="localhost" id="ad5febea-4cbb-42aa-a003-a91ae4e56597" measurement="Pipe5_ret" endDate="2019-12-31T23:00:00.000000+0000" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="SPEED" unit="METRE"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:ResidualHeatSource" id="76f0817c-9f01-431e-be96-dbf3ee806d76" power="50000000.0" name="ResidualHeatSource_76f0">
        <geometry xsi:type="esdl:Point" lat="51.995081053536964" lon="4.364705085754395" CRS="WGS84"/>
        <port xsi:type="esdl:OutPort" id="81fbe527-8919-4864-b3fa-d3dbc223e4bb" connectedTo="74f2c723-08f3-4d44-871b-875aa721e055" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="Out">
          <profile xsi:type="esdl:InfluxDBProfile" field="HeatIn.Q" startDate="2018-12-31T23:00:00.000000+0000" database="1e4d1256-3d30-46cf-b8cc-a80c0a0b6cd0" host="localhost" id="8a900de4-915a-41bb-b716-88ae74987f6c" measurement="ResidualHeatSource_76f0" endDate="2019-12-31T23:00:00.000000+0000" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="CUBIC_METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="Heat_flow" startDate="2018-12-31T23:00:00.000000+0000" database="1e4d1256-3d30-46cf-b8cc-a80c0a0b6cd0" host="localhost" id="dddeab58-a6d7-452f-8875-6d11fa89a085" measurement="ResidualHeatSource_76f0" endDate="2019-12-31T23:00:00.000000+0000" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="HeatIn.H" startDate="2018-12-31T23:00:00.000000+0000" database="1e4d1256-3d30-46cf-b8cc-a80c0a0b6cd0" host="localhost" id="18827045-4ec8-4387-96ef-8af117db98a4" measurement="ResidualHeatSource_76f0" endDate="2019-12-31T23:00:00.000000+0000" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="Pump_power" startDate="2018-12-31T23:00:00.000000+0000" database="1e4d1256-3d30-46cf-b8cc-a80c0a0b6cd0" host="localhost" id="23bf4077-b08e-4963-953c-b42b02d34f0a" measurement="ResidualHeatSource_76f0" endDate="2019-12-31T23:00:00.000000+0000" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
        </port>
        <port xsi:type="esdl:InPort" connectedTo="3d19f298-ae58-4e56-92b6-e3ea896af6cb" id="4d708ad1-b369-47a3-abd3-26aa96173e71" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="In"/>
        <costInformation xsi:type="esdl:CostInformation" id="8a3abfe2-d012-489d-87c3-2732a6d4b25f">
          <variableOperationalCosts xsi:type="esdl:SingleValue" value="200.0" id="233a17e9-7392-49fb-a833-f8761c322098">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" id="6fad95f6-2d6b-4310-9f76-9b3a26b3bd40" description="Cost in EUR/MWh" perMultiplier="MEGA" unit="EURO" perUnit="WATTHOUR"/>
          </variableOperationalCosts>
          <investmentCosts xsi:type="esdl:SingleValue" value="2000000.0" id="a572009d-83d3-48ba-8727-e41267ca5350">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" id="6862d724-1794-4bab-b666-258fd14150ac" description="Cost in EUR/MW" perMultiplier="MEGA" unit="EURO" perUnit="WATT"/>
          </investmentCosts>
          <marginalCosts xsi:type="esdl:SingleValue" value="2.0" id="c36fe934-9dc9-4ef1-bd6b-6e1e4168ae91">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="EURO" physicalQuantity="COST" description="Cost in EUR" id="4cfb1695-3026-49fa-a8ba-2f90450196d4"/>
          </marginalCosts>
          <installationCosts xsi:type="esdl:SingleValue" value="20000000.0" id="938b0cb2-d1e5-4fcc-bf45-6de3b5b06de2">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="EURO" physicalQuantity="COST" description="Cost in EUR" id="44294593-d3b9-4940-9b58-699ccbb28b86"/>
          </installationCosts>
          <fixedOperationalCosts xsi:type="esdl:SingleValue" value="900000.0" id="b1b80150-e761-4633-b9d5-81b1d69a6db8">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" id="2c63c99b-cc4c-471a-a83e-a0d25cad5b7e" description="Cost in EUR/MW" perMultiplier="MEGA" unit="EURO" perUnit="WATT"/>
          </fixedOperationalCosts>
        </costInformation>
      </asset>
      <asset xsi:type="esdl:Pipe" outerDiameter="0.4" id="8fa58f83-6d2c-4ed7-b8bb-d83d089a3932" diameter="DN250" innerDiameter="0.263" name="Pipe_8fa5" length="356.2">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="51.995081053536964" lon="4.364705085754395"/>
          <point xsi:type="esdl:Point" lat="51.995622746921015" lon="4.36983346939087"/>
        </geometry>
        <material xsi:type="esdl:CompoundMatter" compoundType="LAYERED">
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.005">
            <matter xsi:type="esdl:Material" name="steel" id="faac539b-4b7c-43f8-abcd-f08fa2652b7b" thermalConductivity="52.15"/>
          </component>
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.0587">
            <matter xsi:type="esdl:Material" name="PUR" id="d23b4eeb-a419-4c16-bc7e-280a76116f04" thermalConductivity="0.027"/>
          </component>
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.0048">
            <matter xsi:type="esdl:Material" name="HDPE" id="a2b91e8d-471d-4276-a8f6-4efb01054b4e" thermalConductivity="0.4"/>
          </component>
        </material>
        <port xsi:type="esdl:InPort" connectedTo="81fbe527-8919-4864-b3fa-d3dbc223e4bb" id="74f2c723-08f3-4d44-871b-875aa721e055" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="In"/>
        <port xsi:type="esdl:OutPort" id="abfddfae-c090-4b8a-88b1-23d4c6adacc5" connectedTo="4d629e6e-5db4-4a8f-9945-934a24ede11a" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="Out">
          <profile xsi:type="esdl:InfluxDBProfile" field="HeatIn.Q" startDate="2018-12-31T23:00:00.000000+0000" database="1e4d1256-3d30-46cf-b8cc-a80c0a0b6cd0" host="localhost" id="5f7e012d-e069-4f1e-a6be-8ba35efa6959" measurement="Pipe_8fa5" endDate="2019-12-31T23:00:00.000000+0000" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="CUBIC_METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="Heat_flow" startDate="2018-12-31T23:00:00.000000+0000" database="1e4d1256-3d30-46cf-b8cc-a80c0a0b6cd0" host="localhost" id="c73a0fbe-7fdc-451b-a8a5-da8453359c6f" measurement="Pipe_8fa5" endDate="2019-12-31T23:00:00.000000+0000" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="HeatIn.H" startDate="2018-12-31T23:00:00.000000+0000" database="1e4d1256-3d30-46cf-b8cc-a80c0a0b6cd0" host="localhost" id="2edce2e8-bd2a-450c-994e-6085c3619bb9" measurement="Pipe_8fa5" endDate="2019-12-31T23:00:00.000000+0000" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="PostProc.Velocity" startDate="2018-12-31T23:00:00.000000+0000" database="1e4d1256-3d30-46cf-b8cc-a80c0a0b6cd0" host="localhost" id="00c0695d-0492-4d41-83cc-60d4dad5f493" measurement="Pipe_8fa5" endDate="2019-12-31T23:00:00.000000+0000" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="SPEED" unit="METRE"/>
          </profile>
        </port>
        <dataSource xsi:type="esdl:DataSource" attribution="https://www.logstor.com/media/6506/product-catalogue-uk-202003.pdf" name="Logstor Product Catalogue Version 2020.03"/>
        <costInformation xsi:type="esdl:CostInformation" id="91120115-4997-441c-8732-827100c28f9b">
          <investmentCosts xsi:type="esdl:SingleValue" value="2840.6" name="Combined investment and installation costs" id="2ab2214c-8d42-4b74-877f-7fb97f6eab86">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" id="9169bd50-197f-4d6b-aaac-b383a59c815d" description="Costs in EUR/m" unit="EURO" perUnit="METRE"/>
          </investmentCosts>
        </costInformation>
      </asset>
      <asset xsi:type="esdl:Pipe" outerDiameter="0.4" id="c4b13a2c-8331-4deb-9580-af593a1854d4" diameter="DN250" innerDiameter="0.263" name="Pipe_8fa5_ret" length="304.4">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="51.99571274701101" lon="4.369031429215318"/>
          <point xsi:type="esdl:Point" lat="51.995081053536964" lon="4.364705085754395"/>
        </geometry>
        <port xsi:type="esdl:InPort" connectedTo="5a47482f-6cdf-41b3-91b0-014578ee8143" id="c92afccb-09a2-4a99-ad98-3f18ca0122dd" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="In"/>
        <port xsi:type="esdl:OutPort" id="3d19f298-ae58-4e56-92b6-e3ea896af6cb" connectedTo="4d708ad1-b369-47a3-abd3-26aa96173e71" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="Out">
          <profile xsi:type="esdl:InfluxDBProfile" field="HeatIn.Q" startDate="2018-12-31T23:00:00.000000+0000" database="1e4d1256-3d30-46cf-b8cc-a80c0a0b6cd0" host="localhost" id="0815ee8d-6ec9-4f9b-9187-86bf0efb6c77" measurement="Pipe_8fa5_ret" endDate="2019-12-31T23:00:00.000000+0000" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="CUBIC_METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="Heat_flow" startDate="2018-12-31T23:00:00.000000+0000" database="1e4d1256-3d30-46cf-b8cc-a80c0a0b6cd0" host="localhost" id="98463c7d-dda9-4195-b759-bf570d96cf0b" measurement="Pipe_8fa5_ret" endDate="2019-12-31T23:00:00.000000+0000" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="HeatIn.H" startDate="2018-12-31T23:00:00.000000+0000" database="1e4d1256-3d30-46cf-b8cc-a80c0a0b6cd0" host="localhost" id="a8662e07-0bba-41c8-a700-281c97ab2b89" measurement="Pipe_8fa5_ret" endDate="2019-12-31T23:00:00.000000+0000" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="PostProc.Velocity" startDate="2018-12-31T23:00:00.000000+0000" database="1e4d1256-3d30-46cf-b8cc-a80c0a0b6cd0" host="localhost" id="c96a5dd4-8535-4268-a9b5-56b1bf095ab1" measurement="Pipe_8fa5_ret" endDate="2019-12-31T23:00:00.000000+0000" port="8096">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="SPEED" unit="METRE"/>
          </profile>
        </port>
        <dataSource xsi:type="esdl:DataSource" attribution="https://www.logstor.com/media/6506/product-catalogue-uk-202003.pdf" name="Logstor Product Catalogue Version 2020.03"/>
        <costInformation xsi:type="esdl:CostInformation" id="cfd3ba5f-9772-414f-9316-9b746039f0e6">
          <investmentCosts xsi:type="esdl:SingleValue" value="2840.6" name="Combined investment and installation costs" id="2ab2214c-8d42-4b74-877f-7fb97f6eab86">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" id="9169bd50-197f-4d6b-aaac-b383a59c815d" description="Costs in EUR/m" unit="EURO" perUnit="METRE"/>
          </investmentCosts>
        </costInformation>
      </asset>
      <area xsi:type="esdl:Area" name="Area_76a7" id="76a75122-8ea6-472d-8059-374830275d72">
        <asset xsi:type="esdl:HeatingDemand" id="b0ff0df6-4a47-43a5-a0a5-aa10975c0a5c" power="15000000.0" name="HeatingDemand_b0ff">
          <geometry xsi:type="esdl:Point" lat="52.00105253065436" lon="4.373545646667481" CRS="WGS84"/>
          <port xsi:type="esdl:InPort" connectedTo="5169316d-ae93-4f04-9a34-7c776444b651" id="2c5a109b-0d98-47b6-acc1-05e1708f8b85" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="In">
            <profile xsi:type="esdl:InfluxDBProfile" field="demand4_MW" startDate="2018-12-31T23:00:00.000000+0000" database="energy_profiles" host="profiles.warmingup.info" id="b8150ac7-ea23-4be6-b5a3-b6974b8df58d" measurement="WarmingUp default profiles" filters="" multiplier="2.0" endDate="2019-12-31T22:00:00.000000+0000" port="443">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="e9405fc8-5e57-4df5-8584-4babee7cdf1b"/>
            </profile>
          </port>
          <port xsi:type="esdl:OutPort" id="d7eb3623-7481-41bb-911d-2dd9bd67db39" connectedTo="5e2f4591-43f2-489f-8eb2-63105dbd0355" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="Out">
            <profile xsi:type="esdl:InfluxDBProfile" field="HeatIn.Q" startDate="2018-12-31T23:00:00.000000+0000" database="1e4d1256-3d30-46cf-b8cc-a80c0a0b6cd0" host="localhost" id="bc3c63a2-15ee-483b-8ab5-7a1d082317f8" measurement="HeatingDemand_b0ff" endDate="2019-12-31T23:00:00.000000+0000" port="8096">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="CUBIC_METRE"/>
            </profile>
            <profile xsi:type="esdl:InfluxDBProfile" field="Heat_flow" startDate="2018-12-31T23:00:00.000000+0000" database="1e4d1256-3d30-46cf-b8cc-a80c0a0b6cd0" host="localhost" id="7d92b2ab-21a6-4735-b587-0a4010c8760a" measurement="HeatingDemand_b0ff" endDate="2019-12-31T23:00:00.000000+0000" port="8096">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
            </profile>
            <profile xsi:type="esdl:InfluxDBProfile" field="HeatIn.H" startDate="2018-12-31T23:00:00.000000+0000" database="1e4d1256-3d30-46cf-b8cc-a80c0a0b6cd0" host="localhost" id="d507f3c0-da7d-4c90-bb01-3f444588b260" measurement="HeatingDemand_b0ff" endDate="2019-12-31T23:00:00.000000+0000" port="8096">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
            </profile>
          </port>
          <costInformation xsi:type="esdl:CostInformation" id="cd676c1c-6224-406f-a864-3e7ff55265e0">
            <installationCosts xsi:type="esdl:SingleValue" value="1000000.0" id="829c1c62-4266-4560-ac77-b961b7a722cf">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="EURO" physicalQuantity="COST" description="Cost in EUR" id="1c0a9d42-bb5a-44c1-9ed6-824d7c82e932"/>
            </installationCosts>
            <investmentCosts xsi:type="esdl:SingleValue" value="1000000.0" id="08f06cd1-471b-404a-8894-27b315775b59">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" id="f8e5bc00-6eae-47d6-b7ad-b9699879b14c" description="Cost in EUR/MW" perMultiplier="MEGA" unit="EURO" perUnit="WATT"/>
            </investmentCosts>
          </costInformation>
        </asset>
        <geometry xsi:type="esdl:Polygon" CRS="WGS84">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="52.003232185574326" lon="4.376142024993897"/>
            <point xsi:type="esdl:Point" lat="52.002228236493224" lon="4.372107982635499"/>
            <point xsi:type="esdl:Point" lat="52.0031132980428" lon="4.3712711334228525"/>
            <point xsi:type="esdl:Point" lat="52.00197724570447" lon="4.366979598999024"/>
            <point xsi:type="esdl:Point" lat="51.99826505971136" lon="4.369254112243653"/>
            <point xsi:type="esdl:Point" lat="51.99945404958839" lon="4.373760223388673"/>
            <point xsi:type="esdl:Point" lat="51.995635958872874" lon="4.3776869773864755"/>
            <point xsi:type="esdl:Point" lat="51.9963626102222" lon="4.380712509155274"/>
          </exterior>
        </geometry>
        <KPIs xsi:type="esdl:KPIs" id="15bbd8e0-f43b-488b-bc1a-6993b47e1fcf">
          <kpi xsi:type="esdl:DoubleKPI" value="15.0" name="Investment">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO" multiplier="MEGA"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="1.0" name="Installation">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO" multiplier="MEGA"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Variable OPEX">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO" multiplier="MEGA"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Fixed OPEX">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO" multiplier="MEGA"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Estimated energy from local source(s) [%]">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PERCENT"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="100.0" name="Estimated energy from regional source(s) [%]">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PERCENT"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="7.4" name="Total energy consumed [GWh]">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="ENERGY" unit="WATTHOUR" multiplier="GIGA"/>
          </kpi>
        </KPIs>
      </area>
      <area xsi:type="esdl:Area" name="Area_9d0f" id="9d0fd9ed-662c-42ec-a417-7e789737084c">
        <asset xsi:type="esdl:HeatingDemand" id="08fd3385-681a-4211-a083-51775cc99daa" power="15000000.0" name="HeatingDemand_08fd">
          <geometry xsi:type="esdl:Point" lat="51.99648151568376" lon="4.373245239257813" CRS="WGS84"/>
          <port xsi:type="esdl:InPort" connectedTo="787c6ae3-96da-41e1-af86-6e68a1e28cb1" id="01caa60f-1549-4f3f-817e-e4e6807b2398" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="In">
            <profile xsi:type="esdl:InfluxDBProfile" field="demand4_MW" startDate="2018-12-31T23:00:00.000000+0000" database="energy_profiles" host="profiles.warmingup.info" id="ddd73fb0-d96f-4127-8d39-869455c77930" measurement="WarmingUp default profiles" filters="" multiplier="2.0" endDate="2019-12-31T22:00:00.000000+0000" port="443">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="e9405fc8-5e57-4df5-8584-4babee7cdf1b"/>
            </profile>
          </port>
          <port xsi:type="esdl:OutPort" id="ca90e0a5-f866-4ec2-9b3b-07f054f1c2b2" connectedTo="35ddd90a-e45c-4afd-95b4-80ce6c927071" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="Out">
            <profile xsi:type="esdl:InfluxDBProfile" field="HeatIn.Q" startDate="2018-12-31T23:00:00.000000+0000" database="1e4d1256-3d30-46cf-b8cc-a80c0a0b6cd0" host="localhost" id="e05da56e-7481-4444-909f-9637f4ea9d34" measurement="HeatingDemand_08fd" endDate="2019-12-31T23:00:00.000000+0000" port="8096">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="CUBIC_METRE"/>
            </profile>
            <profile xsi:type="esdl:InfluxDBProfile" field="Heat_flow" startDate="2018-12-31T23:00:00.000000+0000" database="1e4d1256-3d30-46cf-b8cc-a80c0a0b6cd0" host="localhost" id="19587aa4-2754-48c2-a457-8d7eabab9837" measurement="HeatingDemand_08fd" endDate="2019-12-31T23:00:00.000000+0000" port="8096">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
            </profile>
            <profile xsi:type="esdl:InfluxDBProfile" field="HeatIn.H" startDate="2018-12-31T23:00:00.000000+0000" database="1e4d1256-3d30-46cf-b8cc-a80c0a0b6cd0" host="localhost" id="25a11429-4e36-4e8f-b14b-ed99a254b7b2" measurement="HeatingDemand_08fd" endDate="2019-12-31T23:00:00.000000+0000" port="8096">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
            </profile>
          </port>
          <costInformation xsi:type="esdl:CostInformation" id="7eac6b5e-ba11-4ef1-b90e-599dd2690d20">
            <installationCosts xsi:type="esdl:SingleValue" value="1000000.0" id="3b93383a-2ec4-4b35-9335-ebd91f0de600">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="EURO" physicalQuantity="COST" description="Cost in EUR" id="318840e0-6f48-46f4-b9c9-91315d7b45fd"/>
            </installationCosts>
            <investmentCosts xsi:type="esdl:SingleValue" value="1000000.0" id="26aba0b6-a1a0-4610-97b3-be763548c669">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" id="424508c6-24aa-4a35-81e9-7ae198cbaeb8" description="Cost in EUR/MW" perMultiplier="MEGA" unit="EURO" perUnit="WATT"/>
            </investmentCosts>
          </costInformation>
        </asset>
        <geometry xsi:type="esdl:Polygon" CRS="WGS84">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.99817258139733" lon="4.3692970275878915"/>
            <point xsi:type="esdl:Point" lat="51.99932194116153" lon="4.373695850372315"/>
            <point xsi:type="esdl:Point" lat="51.99534529503086" lon="4.376678466796876"/>
            <point xsi:type="esdl:Point" lat="51.99624370444482" lon="4.38081979751587"/>
            <point xsi:type="esdl:Point" lat="51.99490929572965" lon="4.381613731384278"/>
            <point xsi:type="esdl:Point" lat="51.99272923553559" lon="4.372708797454835"/>
          </exterior>
        </geometry>
        <KPIs xsi:type="esdl:KPIs" id="26f2c8be-f865-403d-9c46-c8aadebdffd2">
          <kpi xsi:type="esdl:DoubleKPI" value="15.0" name="Investment">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO" multiplier="MEGA"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="1.0" name="Installation">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO" multiplier="MEGA"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Variable OPEX">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO" multiplier="MEGA"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Fixed OPEX">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO" multiplier="MEGA"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Estimated energy from local source(s) [%]">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PERCENT"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="100.0" name="Estimated energy from regional source(s) [%]">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PERCENT"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="7.4" name="Total energy consumed [GWh]">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="ENERGY" unit="WATTHOUR" multiplier="GIGA"/>
          </kpi>
        </KPIs>
      </area>
      <area xsi:type="esdl:Area" name="Area_a58a" id="a58a988c-95c1-492b-bc63-b125d25f5108">
        <asset xsi:type="esdl:HeatingDemand" id="8fbe3d4e-5d5b-4489-9271-9969c2b9e589" power="15000000.0" name="HeatingDemand_8fbe">
          <geometry xsi:type="esdl:Point" lat="51.99069441691871" lon="4.379038810729981" CRS="WGS84"/>
          <port xsi:type="esdl:InPort" connectedTo="13edd58c-4a04-4770-8aac-c6e8689acbba" id="23cdb929-5cfc-4b8d-963e-06b6e6cf3a5c" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="In">
            <profile xsi:type="esdl:InfluxDBProfile" field="demand3_MW" startDate="2018-12-31T23:00:00.000000+0000" database="energy_profiles" host="profiles.warmingup.info" id="5ae97047-619a-4119-84f3-848b36743e5d" measurement="WarmingUp default profiles" filters="" multiplier="2.0" endDate="2019-12-31T22:00:00.000000+0000" port="443">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="e9405fc8-5e57-4df5-8584-4babee7cdf1b"/>
            </profile>
          </port>
          <port xsi:type="esdl:OutPort" id="0fd050fa-15ff-4f1e-b0bd-ef1823365eaa" connectedTo="6d1edc18-1962-4d3d-9882-ef27ae1702e8" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="Out">
            <profile xsi:type="esdl:InfluxDBProfile" field="HeatIn.Q" startDate="2018-12-31T23:00:00.000000+0000" database="1e4d1256-3d30-46cf-b8cc-a80c0a0b6cd0" host="localhost" id="4926ba15-6891-4247-884e-d758d3ca6f65" measurement="HeatingDemand_8fbe" endDate="2019-12-31T23:00:00.000000+0000" port="8096">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="CUBIC_METRE"/>
            </profile>
            <profile xsi:type="esdl:InfluxDBProfile" field="Heat_flow" startDate="2018-12-31T23:00:00.000000+0000" database="1e4d1256-3d30-46cf-b8cc-a80c0a0b6cd0" host="localhost" id="7db42757-5844-4784-95c8-173dad0224ca" measurement="HeatingDemand_8fbe" endDate="2019-12-31T23:00:00.000000+0000" port="8096">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
            </profile>
            <profile xsi:type="esdl:InfluxDBProfile" field="HeatIn.H" startDate="2018-12-31T23:00:00.000000+0000" database="1e4d1256-3d30-46cf-b8cc-a80c0a0b6cd0" host="localhost" id="042b9800-ce56-4ee9-8fb4-bf34e64c0cbe" measurement="HeatingDemand_8fbe" endDate="2019-12-31T23:00:00.000000+0000" port="8096">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
            </profile>
          </port>
          <costInformation xsi:type="esdl:CostInformation" id="32e59a3e-fe5e-4201-bbd6-4f26dc4c961e">
            <installationCosts xsi:type="esdl:SingleValue" value="1000000.0" id="850701a9-ec9a-40c5-ab3e-e0dbe6165cb6">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="EURO" physicalQuantity="COST" description="Cost in EUR" id="b18cdc99-6303-404c-958a-1a4c079f842d"/>
            </installationCosts>
            <investmentCosts xsi:type="esdl:SingleValue" value="1000000.0" id="3971c64d-50e4-47ec-a769-1f91935065d9">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" id="5a0e43e1-b141-4626-87eb-487cdb70e60e" description="Cost in EUR/MW" perMultiplier="MEGA" unit="EURO" perUnit="WATT"/>
            </investmentCosts>
          </costInformation>
        </asset>
        <geometry xsi:type="esdl:Polygon" CRS="WGS84">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.992279997820766" lon="4.372987747192384"/>
            <point xsi:type="esdl:Point" lat="51.994235470276436" lon="4.382214546203614"/>
            <point xsi:type="esdl:Point" lat="51.989333415199866" lon="4.38581943511963"/>
            <point xsi:type="esdl:Point" lat="51.98688879367896" lon="4.37633514404297"/>
          </exterior>
        </geometry>
        <KPIs xsi:type="esdl:KPIs" id="1881a113-4eec-4e0f-b12e-4e1d227fa694">
          <kpi xsi:type="esdl:DoubleKPI" value="15.0" name="Investment">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO" multiplier="MEGA"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="1.0" name="Installation">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO" multiplier="MEGA"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Variable OPEX">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO" multiplier="MEGA"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Fixed OPEX">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO" multiplier="MEGA"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Estimated energy from local source(s) [%]">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PERCENT"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="100.0" name="Estimated energy from regional source(s) [%]">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PERCENT"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="6.6" name="Total energy consumed [GWh]">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="ENERGY" unit="WATTHOUR" multiplier="GIGA"/>
          </kpi>
        </KPIs>
      </area>
      <KPIs xsi:type="esdl:KPIs" id="f42dec6a-64dc-47d3-85de-480e093aeb0a">
        <kpi xsi:type="esdl:DistributionKPI" name="High level cost breakdown [EUR]">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO"/>
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" label="CAPEX" value="263417254.834"/>
            <stringItem xsi:type="esdl:StringItem" label="OPEX" value="77323747.63888116"/>
          </distribution>
        </kpi>
        <kpi xsi:type="esdl:DistributionKPI" name="Overall cost breakdown [EUR]">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO"/>
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" label="Installation" value="33000000.0"/>
            <stringItem xsi:type="esdl:StringItem" label="Investment" value="230417254.834"/>
            <stringItem xsi:type="esdl:StringItem" label="Variable OPEX" value="2323747.638881156"/>
            <stringItem xsi:type="esdl:StringItem" label="Fixed OPEX" value="75000000.0"/>
          </distribution>
        </kpi>
        <kpi xsi:type="esdl:DistributionKPI" name="CAPEX breakdown [EUR]">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO"/>
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" label="ResidualHeatSource" value="205000000.0"/>
            <stringItem xsi:type="esdl:StringItem" label="Pipe" value="10417254.834"/>
            <stringItem xsi:type="esdl:StringItem" label="HeatingDemand" value="48000000.0"/>
          </distribution>
        </kpi>
        <kpi xsi:type="esdl:DistributionKPI" name="OPEX breakdown [EUR]">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO"/>
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" label="ResidualHeatSource" value="77323747.63888116"/>
          </distribution>
        </kpi>
        <kpi xsi:type="esdl:DistributionKPI" name="Energy production [Wh]">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="ENERGY" unit="WATTHOUR"/>
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" label="ResidualHeatSource_72d7" value="22383310982.337627"/>
            <stringItem xsi:type="esdl:StringItem" label="ResidualHeatSource_76f0" value="427082703.2369676"/>
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
