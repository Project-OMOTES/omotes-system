<?xml version='1.0' encoding='UTF-8'?>
<esdl:EnergySystem xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:esdl="http://www.tno.nl/esdl" description="" esdlVersion="v2207" name="PoC Tutorial_SmartControlOptimized_GrowOptimized" id="306111cf-0771-4945-9bd1-7e66eba8af21" version="13">
  <instance xsi:type="esdl:Instance" id="9af52a01-24e2-4bbe-a7b8-f868161e6ca3" name="Untitled instance">
    <area xsi:type="esdl:Area" name="Untitled area" id="9edf5aa3-3855-4dac-b6f5-01c2edf1a43a">
      <KPIs xsi:type="esdl:KPIs" id="1fe057df-92f4-4818-af19-808e89a39ee8">
        <kpi xsi:type="esdl:DistributionKPI" name="High level cost breakdown [EUR]">
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" value="78022464.89327627" label="CAPEX"/>
            <stringItem xsi:type="esdl:StringItem" value="7046221.367797825" label="OPEX"/>
          </distribution>
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO"/>
        </kpi>
        <kpi xsi:type="esdl:DistributionKPI" name="Overall cost breakdown [EUR]">
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" value="13000000.0" label="Installation"/>
            <stringItem xsi:type="esdl:StringItem" value="65022464.89327627" label="Investment"/>
            <stringItem xsi:type="esdl:StringItem" value="2261192.581687317" label="Variable OPEX"/>
            <stringItem xsi:type="esdl:StringItem" value="4785028.786110507" label="Fixed OPEX"/>
          </distribution>
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO"/>
        </kpi>
        <kpi xsi:type="esdl:DistributionKPI" name="CAPEX breakdown [EUR]">
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" value="21962571.965276267" label="ResidualHeatSource"/>
            <stringItem xsi:type="esdl:StringItem" value="8059892.928000001" label="Pipe"/>
            <stringItem xsi:type="esdl:StringItem" value="48000000.0" label="HeatingDemand"/>
          </distribution>
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO"/>
        </kpi>
        <kpi xsi:type="esdl:DistributionKPI" name="OPEX breakdown [EUR]">
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" value="7046221.367797825" label="ResidualHeatSource"/>
          </distribution>
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO"/>
        </kpi>
        <kpi xsi:type="esdl:DistributionKPI" name="Energy production [Wh]">
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" value="22611925816.873276" label="ResidualHeatSource_72d7"/>
          </distribution>
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="ENERGY" unit="WATTHOUR"/>
        </kpi>
        <kpi xsi:type="esdl:DistributionKPI" name="Area_76a7: Asset cost breakdown [EUR]">
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" value="1000000.0" label="Installation"/>
            <stringItem xsi:type="esdl:StringItem" value="15000000.0" label="Investment"/>
          </distribution>
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO"/>
        </kpi>
        <kpi xsi:type="esdl:DistributionKPI" name="Area_9d0f: Asset cost breakdown [EUR]">
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" value="1000000.0" label="Installation"/>
            <stringItem xsi:type="esdl:StringItem" value="15000000.0" label="Investment"/>
          </distribution>
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO"/>
        </kpi>
        <kpi xsi:type="esdl:DistributionKPI" name="Area_a58a: Asset cost breakdown [EUR]">
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" value="1000000.0" label="Installation"/>
            <stringItem xsi:type="esdl:StringItem" value="15000000.0" label="Investment"/>
          </distribution>
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO"/>
        </kpi>
      </KPIs>
      <asset xsi:type="esdl:ResidualHeatSource" name="ResidualHeatSource_72d7" id="72d74fb5-134f-4bfb-829e-220ab76a8a7b" power="7975047.976850845">
        <costInformation xsi:type="esdl:CostInformation" id="123cc46e-f8ef-42f9-842f-08e77dd06899">
          <fixedOperationalCosts xsi:type="esdl:SingleValue" id="8ee43904-745d-4f5c-8b15-5a2adcde7e5f" value="600000.0">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perUnit="WATT" physicalQuantity="COST" unit="EURO" id="4c3a445d-d13f-4f61-8d75-22280135830f" description="Cost in EUR/MW" perMultiplier="MEGA"/>
          </fixedOperationalCosts>
          <variableOperationalCosts xsi:type="esdl:SingleValue" id="e5bc1b5e-23b1-4985-94f2-bea25c12da14" value="100.0">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perUnit="WATTHOUR" physicalQuantity="COST" unit="EURO" id="de56cc5d-2baa-451c-b38c-47abea1393c2" description="Cost in EUR/MWh" perMultiplier="MEGA"/>
          </variableOperationalCosts>
          <investmentCosts xsi:type="esdl:SingleValue" id="3102215e-50a4-4332-b16e-2fd6522df31b" value="1500000.0">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perUnit="WATT" physicalQuantity="COST" unit="EURO" id="69673880-fe81-4f34-8fd9-558cc693a251" description="Cost in EUR/MW" perMultiplier="MEGA"/>
          </investmentCosts>
          <marginalCosts xsi:type="esdl:SingleValue" id="e52de449-7340-4878-b582-d20711d9fb14" value="1.0">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="4fccbb6b-2e41-46d9-a92c-f94da7c3aca7" physicalQuantity="COST" unit="EURO" description="Cost in EUR"/>
          </marginalCosts>
          <installationCosts xsi:type="esdl:SingleValue" id="12c24715-08dc-4b61-ae15-76541704c83a" value="10000000.0">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="89b04c83-eb32-49a3-adc4-492a719221d3" physicalQuantity="COST" unit="EURO" description="Cost in EUR"/>
          </installationCosts>
        </costInformation>
        <port xsi:type="esdl:OutPort" name="Out" id="d890f8aa-9b94-493d-b017-bd7cebaf8c77" connectedTo="07c2f88e-85be-4b8b-a72e-14364a3810c9" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6">
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="HeatIn.Q" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="3e371fe4-01a8-4ff2-81f0-4623c8ebfa3a" measurement="ResidualHeatSource_72d7">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="CUBIC_METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="Heat_flow" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="2f259c73-2df6-4735-896d-1a2f6827541b" measurement="ResidualHeatSource_72d7">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="HeatIn.H" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="065f7f46-f458-4469-899d-2a7ba417f1b1" measurement="ResidualHeatSource_72d7">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="Pump_power" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="a4447941-b9d4-42fa-884f-9bc9f8851583" measurement="ResidualHeatSource_72d7">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
        </port>
        <port xsi:type="esdl:InPort" name="In" connectedTo="c0a27794-98e2-4119-a363-cec4f0b525cd" id="4d6c18cd-cc52-443d-8e53-96cd188dd1a8" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret"/>
        <geometry xsi:type="esdl:Point" lon="4.372987747192384" CRS="WGS84" lat="52.00467202060717"/>
      </asset>
      <asset xsi:type="esdl:Pipe" name="Pipe1" length="818.07" related="Pipe1_ret" id="Pipe1" outerDiameter="0.56" diameter="DN400" innerDiameter="0.3938">
        <costInformation xsi:type="esdl:CostInformation" id="4a3d48d9-74bb-4407-b249-9e2af4d1037c">
          <investmentCosts xsi:type="esdl:SingleValue" id="2ab2214c-8d42-4b74-877f-7fb97f6eab86" name="Combined investment and installation costs" value="2840.6">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perUnit="METRE" physicalQuantity="COST" unit="EURO" id="9169bd50-197f-4d6b-aaac-b383a59c815d" description="Costs in EUR/m"/>
          </investmentCosts>
        </costInformation>
        <material xsi:type="esdl:CompoundMatter" compoundType="LAYERED">
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.0063">
            <matter xsi:type="esdl:Material" thermalConductivity="52.15" name="steel" id="74d84321-1767-4cec-b6e7-b90c06020400"/>
          </component>
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.0711">
            <matter xsi:type="esdl:Material" thermalConductivity="0.027" name="PUR" id="95012cd9-7648-4df5-8c83-74dc73bc16ba"/>
          </component>
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.0057">
            <matter xsi:type="esdl:Material" thermalConductivity="0.4" name="HDPE" id="1392ee3f-34f6-4c8e-ab0e-635b9d7ec9be"/>
          </component>
        </material>
        <port xsi:type="esdl:InPort" name="In" connectedTo="d890f8aa-9b94-493d-b017-bd7cebaf8c77" id="07c2f88e-85be-4b8b-a72e-14364a3810c9" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6"/>
        <port xsi:type="esdl:OutPort" name="Out" id="fc2801d0-215b-4d2b-9846-ee4918b87e21" connectedTo="d149871b-d76a-4cc3-8922-c8d99205f47e" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6">
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="HeatIn.Q" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="29004b3e-e4ac-4c5b-925c-6369528b22d2" measurement="Pipe1">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="CUBIC_METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="Heat_flow" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="bb9fa627-257c-46c5-a4bb-07eb44fa6f4b" measurement="Pipe1">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="HeatIn.H" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="83145b11-9546-4205-899e-fb6f1372c9d4" measurement="Pipe1">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="PostProc.Velocity" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="de7c20c3-bc97-4a1c-80ed-0a091e1faf2a" measurement="Pipe1">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="SPEED" unit="METRE"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" lon="4.372987747192384" lat="52.00467202060717"/>
          <point xsi:type="esdl:Point" lon="4.365863800048829" lat="52.00210934629504"/>
          <point xsi:type="esdl:Point" lon="4.367129802703858" lat="51.99996926872789"/>
        </geometry>
        <dataSource xsi:type="esdl:DataSource" attribution="https://www.logstor.com/media/6506/product-catalogue-uk-202003.pdf" name="Logstor Product Catalogue Version 2020.03"/>
      </asset>
      <asset xsi:type="esdl:Joint" name="Joint_a04c" id="a04cb927-426d-4016-a084-356002a85d6c">
        <port xsi:type="esdl:InPort" name="In" connectedTo="fc2801d0-215b-4d2b-9846-ee4918b87e21" id="d149871b-d76a-4cc3-8922-c8d99205f47e" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6"/>
        <port xsi:type="esdl:OutPort" name="Out" id="3535f436-1270-4b1b-a326-41d69cd6e330" connectedTo="863d2ff2-7a68-4bfb-8aa5-dab741b72b25 7f18f0b7-fcf3-4d83-8a65-79cbd3273ea7" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6"/>
        <geometry xsi:type="esdl:Point" lon="4.367129802703858" lat="51.99996926872789"/>
      </asset>
      <asset xsi:type="esdl:Pipe" name="Pipe2" length="517.54" related="Pipe2_ret" id="Pipe2" outerDiameter="0.56" diameter="DN400" innerDiameter="0.3938">
        <costInformation xsi:type="esdl:CostInformation" id="4a3d48d9-74bb-4407-b249-9e2af4d1037c">
          <investmentCosts xsi:type="esdl:SingleValue" id="2ab2214c-8d42-4b74-877f-7fb97f6eab86" name="Combined investment and installation costs" value="2840.6">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perUnit="METRE" physicalQuantity="COST" unit="EURO" id="9169bd50-197f-4d6b-aaac-b383a59c815d" description="Costs in EUR/m"/>
          </investmentCosts>
        </costInformation>
        <material xsi:type="esdl:CompoundMatter" compoundType="LAYERED">
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.0063">
            <matter xsi:type="esdl:Material" thermalConductivity="52.15" name="steel" id="74d84321-1767-4cec-b6e7-b90c06020400"/>
          </component>
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.0711">
            <matter xsi:type="esdl:Material" thermalConductivity="0.027" name="PUR" id="95012cd9-7648-4df5-8c83-74dc73bc16ba"/>
          </component>
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.0057">
            <matter xsi:type="esdl:Material" thermalConductivity="0.4" name="HDPE" id="1392ee3f-34f6-4c8e-ab0e-635b9d7ec9be"/>
          </component>
        </material>
        <port xsi:type="esdl:InPort" name="In" connectedTo="3535f436-1270-4b1b-a326-41d69cd6e330" id="863d2ff2-7a68-4bfb-8aa5-dab741b72b25" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6"/>
        <port xsi:type="esdl:OutPort" name="Out" id="8c38fc93-ed85-42ef-9be6-87d47c416e90" connectedTo="4d629e6e-5db4-4a8f-9945-934a24ede11a" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6">
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="HeatIn.Q" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="be3826bf-2a04-4682-a902-09e2a384af21" measurement="Pipe2">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="CUBIC_METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="Heat_flow" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="95a23dbe-8015-4bd2-acda-ef74833c485a" measurement="Pipe2">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="HeatIn.H" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="14a5b2d1-78b5-460c-a2e7-212ec249d09d" measurement="Pipe2">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="PostProc.Velocity" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="feb5924a-9a77-4f71-8693-996964be83e4" measurement="Pipe2">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="SPEED" unit="METRE"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" lon="4.367129802703858" lat="51.99996926872789"/>
          <point xsi:type="esdl:Point" lon="4.36983346939087" lat="51.995622746921015"/>
        </geometry>
        <dataSource xsi:type="esdl:DataSource" attribution="https://www.logstor.com/media/6506/product-catalogue-uk-202003.pdf" name="Logstor Product Catalogue Version 2020.03"/>
      </asset>
      <asset xsi:type="esdl:Pipe" name="Pipe3" length="1182.23" related="Pipe3_ret" id="Pipe3" outerDiameter="0.56" diameter="DN400" innerDiameter="0.3938">
        <costInformation xsi:type="esdl:CostInformation" id="4a3d48d9-74bb-4407-b249-9e2af4d1037c">
          <investmentCosts xsi:type="esdl:SingleValue" id="2ab2214c-8d42-4b74-877f-7fb97f6eab86" name="Combined investment and installation costs" value="2840.6">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perUnit="METRE" physicalQuantity="COST" unit="EURO" id="9169bd50-197f-4d6b-aaac-b383a59c815d" description="Costs in EUR/m"/>
          </investmentCosts>
        </costInformation>
        <material xsi:type="esdl:CompoundMatter" compoundType="LAYERED">
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.0063">
            <matter xsi:type="esdl:Material" thermalConductivity="52.15" name="steel" id="74d84321-1767-4cec-b6e7-b90c06020400"/>
          </component>
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.0711">
            <matter xsi:type="esdl:Material" thermalConductivity="0.027" name="PUR" id="95012cd9-7648-4df5-8c83-74dc73bc16ba"/>
          </component>
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.0057">
            <matter xsi:type="esdl:Material" thermalConductivity="0.4" name="HDPE" id="1392ee3f-34f6-4c8e-ab0e-635b9d7ec9be"/>
          </component>
        </material>
        <port xsi:type="esdl:InPort" name="In" connectedTo="a42acf83-361d-4d4d-8001-8617daad939a" id="e44060e9-8b0e-41e5-ae46-ce074c891c15" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6"/>
        <port xsi:type="esdl:OutPort" name="Out" id="13edd58c-4a04-4770-8aac-c6e8689acbba" connectedTo="23cdb929-5cfc-4b8d-963e-06b6e6cf3a5c" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6">
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="HeatIn.Q" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="58baf44a-d070-4f2a-b806-e56f1b97b096" measurement="Pipe3">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="CUBIC_METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="Heat_flow" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="2d7448f7-6cf6-4294-8990-613fd34bae3d" measurement="Pipe3">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="HeatIn.H" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="8c49923d-d2b3-4d95-8b73-b33fbbfd9816" measurement="Pipe3">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="PostProc.Velocity" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="ef3e7db4-af4f-40c6-a4ea-e9c7f1acb042" measurement="Pipe3">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="SPEED" unit="METRE"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" lon="4.36983346939087" lat="51.995622746921015"/>
          <point xsi:type="esdl:Point" lon="4.373888969421388" lat="51.989029496545015"/>
          <point xsi:type="esdl:Point" lon="4.379038810729981" lat="51.99069441691871"/>
        </geometry>
        <dataSource xsi:type="esdl:DataSource" attribution="https://www.logstor.com/media/6506/product-catalogue-uk-202003.pdf" name="Logstor Product Catalogue Version 2020.03"/>
      </asset>
      <asset xsi:type="esdl:Joint" name="Joint_95ca" id="95caf7c7-e89f-4378-96f2-f904f9255c83">
        <port xsi:type="esdl:InPort" name="In" connectedTo="8c38fc93-ed85-42ef-9be6-87d47c416e90" id="4d629e6e-5db4-4a8f-9945-934a24ede11a" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6"/>
        <port xsi:type="esdl:OutPort" name="Out" id="a42acf83-361d-4d4d-8001-8617daad939a" connectedTo="e44060e9-8b0e-41e5-ae46-ce074c891c15 20165ec3-cf86-41e4-976f-079ba0ca5be4" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6"/>
        <geometry xsi:type="esdl:Point" lon="4.36983346939087" lat="51.995622746921015"/>
      </asset>
      <asset xsi:type="esdl:Pipe" name="Pipe4" length="455.4" related="Pipe4_ret" id="Pipe4" outerDiameter="0.45" diameter="DN300" innerDiameter="0.3127">
        <costInformation xsi:type="esdl:CostInformation" id="384df56d-e3f0-4794-a0e2-bc0c71482e45">
          <investmentCosts xsi:type="esdl:SingleValue" id="1e93bdda-8a74-42d5-960d-d64e4dff2025" name="Combined investment and installation costs" value="1962.1">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perUnit="METRE" physicalQuantity="COST" unit="EURO" id="983f0959-8566-43ce-a380-782d29406ed3" description="Costs in EUR/m"/>
          </investmentCosts>
        </costInformation>
        <material xsi:type="esdl:CompoundMatter" compoundType="LAYERED">
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.0056">
            <matter xsi:type="esdl:Material" thermalConductivity="52.15" name="steel" id="f4cee538-cc3b-4809-bd66-979f2ce9649b"/>
          </component>
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.05785">
            <matter xsi:type="esdl:Material" thermalConductivity="0.027" name="PUR" id="e4c0350c-cd79-45b4-a45c-6259c750b478"/>
          </component>
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.0052">
            <matter xsi:type="esdl:Material" thermalConductivity="0.4" name="HDPE" id="9a97f588-10fe-4a34-b0f2-277862151763"/>
          </component>
        </material>
        <port xsi:type="esdl:InPort" name="In" connectedTo="3535f436-1270-4b1b-a326-41d69cd6e330" id="7f18f0b7-fcf3-4d83-8a65-79cbd3273ea7" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6"/>
        <port xsi:type="esdl:OutPort" name="Out" id="5169316d-ae93-4f04-9a34-7c776444b651" connectedTo="2c5a109b-0d98-47b6-acc1-05e1708f8b85" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6">
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="HeatIn.Q" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="4b1ca612-2936-4dd9-8248-239fa9b32ad1" measurement="Pipe4">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="CUBIC_METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="Heat_flow" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="08396345-c745-40a4-9d9b-6d4e25595b5c" measurement="Pipe4">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="HeatIn.H" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="2706936e-bc9c-46ff-b935-365d118c9412" measurement="Pipe4">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="PostProc.Velocity" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="94fa56f7-06bd-4dac-80e8-cc4b67084af8" measurement="Pipe4">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="SPEED" unit="METRE"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lon="4.367129802703858" lat="51.99996926872789"/>
          <point xsi:type="esdl:Point" lon="4.373545646667481" lat="52.00105253065436"/>
        </geometry>
        <dataSource xsi:type="esdl:DataSource" attribution="https://www.logstor.com/media/6506/product-catalogue-uk-202003.pdf" name="Logstor Product Catalogue Version 2020.03"/>
      </asset>
      <asset xsi:type="esdl:Pipe" name="Pipe5" length="252.3" related="Pipe5_ret" id="Pipe5" outerDiameter="0.45" diameter="DN300" innerDiameter="0.3127">
        <costInformation xsi:type="esdl:CostInformation" id="4c8d9c8f-7e99-4402-8f66-d413e73db121">
          <investmentCosts xsi:type="esdl:SingleValue" id="1e93bdda-8a74-42d5-960d-d64e4dff2025" name="Combined investment and installation costs" value="1962.1">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perUnit="METRE" physicalQuantity="COST" unit="EURO" id="983f0959-8566-43ce-a380-782d29406ed3" description="Costs in EUR/m"/>
          </investmentCosts>
        </costInformation>
        <material xsi:type="esdl:CompoundMatter" compoundType="LAYERED">
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.0056">
            <matter xsi:type="esdl:Material" thermalConductivity="52.15" name="steel" id="f4cee538-cc3b-4809-bd66-979f2ce9649b"/>
          </component>
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.05785">
            <matter xsi:type="esdl:Material" thermalConductivity="0.027" name="PUR" id="e4c0350c-cd79-45b4-a45c-6259c750b478"/>
          </component>
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.0052">
            <matter xsi:type="esdl:Material" thermalConductivity="0.4" name="HDPE" id="9a97f588-10fe-4a34-b0f2-277862151763"/>
          </component>
        </material>
        <port xsi:type="esdl:InPort" name="In" connectedTo="a42acf83-361d-4d4d-8001-8617daad939a" id="20165ec3-cf86-41e4-976f-079ba0ca5be4" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6"/>
        <port xsi:type="esdl:OutPort" name="Out" id="787c6ae3-96da-41e1-af86-6e68a1e28cb1" connectedTo="01caa60f-1549-4f3f-817e-e4e6807b2398" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6">
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="HeatIn.Q" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="889ddb40-c2cc-4afb-86f7-c9f58aeabc8b" measurement="Pipe5">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="CUBIC_METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="Heat_flow" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="20e7faef-7317-423a-bb00-819177c6f075" measurement="Pipe5">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="HeatIn.H" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="02ebe84a-2da3-4d89-9536-a6e4090bcbc7" measurement="Pipe5">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="PostProc.Velocity" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="45f45e65-06be-4df8-a821-728827d73a65" measurement="Pipe5">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="SPEED" unit="METRE"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lon="4.36983346939087" lat="51.995622746921015"/>
          <point xsi:type="esdl:Point" lon="4.373245239257813" lat="51.99648151568376"/>
        </geometry>
        <dataSource xsi:type="esdl:DataSource" attribution="https://www.logstor.com/media/6506/product-catalogue-uk-202003.pdf" name="Logstor Product Catalogue Version 2020.03"/>
      </asset>
      <asset xsi:type="esdl:Joint" name="Joint_a04c_ret" id="076ba789-3040-4952-9b2b-fbf9ed05e6bd">
        <port xsi:type="esdl:InPort" name="ret_port" connectedTo="c5df4e61-6603-4315-a45a-196903690d9e 23d8b6bb-9480-4f02-ba7c-d00de8ff206e" id="1ba08c64-4c54-4f23-93bf-2b2f6c04229d" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret"/>
        <port xsi:type="esdl:OutPort" name="ret_port" id="044ef084-2a9e-4356-bac2-207f5361d4ce" connectedTo="2c3c73cb-d282-4c97-a060-922c91c50180" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret"/>
        <geometry xsi:type="esdl:Point" lon="4.3663488762941665" CRS="WGS84" lat="52.000059268817886"/>
      </asset>
      <asset xsi:type="esdl:Joint" name="Joint_95ca_ret" id="b4a5be45-3352-4837-94d6-b110aa842da6">
        <port xsi:type="esdl:InPort" name="ret_port" connectedTo="59b53a77-a253-4a96-81ef-84e719a1f518 6f9268a0-1fd9-42f6-8821-2d7d4a6e5618" id="6b4d9bba-484b-46aa-bfe6-895d491b6747" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret"/>
        <port xsi:type="esdl:OutPort" name="ret_port" id="5a47482f-6cdf-41b3-91b0-014578ee8143" connectedTo="da70a1aa-53c4-496e-ba63-2c04674b8c84" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret"/>
        <geometry xsi:type="esdl:Point" lon="4.369031429215318" CRS="WGS84" lat="51.99571274701101"/>
      </asset>
      <asset xsi:type="esdl:Pipe" name="Pipe1_ret" length="818.07" related="Pipe1" id="Pipe1_ret" outerDiameter="0.56" diameter="DN400" innerDiameter="0.3938">
        <port xsi:type="esdl:InPort" name="In_ret" connectedTo="044ef084-2a9e-4356-bac2-207f5361d4ce" id="2c3c73cb-d282-4c97-a060-922c91c50180" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret"/>
        <port xsi:type="esdl:OutPort" name="Out_ret" id="c0a27794-98e2-4119-a363-cec4f0b525cd" connectedTo="4d6c18cd-cc52-443d-8e53-96cd188dd1a8" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret">
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="HeatIn.Q" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="e219ea3e-e5e3-4072-b3dd-f5fb301c4478" measurement="Pipe1_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="CUBIC_METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="Heat_flow" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="1fd20f55-4655-467e-8929-7464a05ef757" measurement="Pipe1_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="HeatIn.H" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="0ee93563-e625-46b8-8152-b827f14a98af" measurement="Pipe1_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="PostProc.Velocity" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="ece39554-80f2-470c-9e75-d04019e3249c" measurement="Pipe1_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="SPEED" unit="METRE"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" lon="4.3663488762941665" CRS="WGS84" lat="52.000059268817886"/>
          <point xsi:type="esdl:Point" lon="4.365092860885141" CRS="WGS84" lat="52.00219934638504"/>
          <point xsi:type="esdl:Point" lon="4.372228431895539" CRS="WGS84" lat="52.004762020697164"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:Pipe" name="Pipe2_ret" length="517.54" related="Pipe2" id="Pipe2_ret" outerDiameter="0.56" diameter="DN400" innerDiameter="0.3938">
        <port xsi:type="esdl:InPort" name="In_ret" connectedTo="5a47482f-6cdf-41b3-91b0-014578ee8143" id="da70a1aa-53c4-496e-ba63-2c04674b8c84" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret"/>
        <port xsi:type="esdl:OutPort" name="Out_ret" id="c5df4e61-6603-4315-a45a-196903690d9e" connectedTo="1ba08c64-4c54-4f23-93bf-2b2f6c04229d" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret">
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="HeatIn.Q" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="295de165-2107-4c2f-8977-1753da7bccfc" measurement="Pipe2_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="CUBIC_METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="Heat_flow" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="5962ee1f-5dcb-4f68-85c3-cac5dc13c323" measurement="Pipe2_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="HeatIn.H" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="92612c59-15bd-4a57-8f34-352b23e98e75" measurement="Pipe2_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="PostProc.Velocity" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="326826ad-f555-4efa-b4ac-6b327cf9da3c" measurement="Pipe2_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="SPEED" unit="METRE"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" lon="4.369031429215318" CRS="WGS84" lat="51.99571274701101"/>
          <point xsi:type="esdl:Point" lon="4.3663488762941665" CRS="WGS84" lat="52.000059268817886"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:Pipe" name="Pipe3_ret" length="1182.23" related="Pipe3" id="Pipe3_ret" outerDiameter="0.56" diameter="DN400" innerDiameter="0.3938">
        <port xsi:type="esdl:InPort" name="In_ret" connectedTo="0fd050fa-15ff-4f1e-b0bd-ef1823365eaa" id="6d1edc18-1962-4d3d-9882-ef27ae1702e8" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret"/>
        <port xsi:type="esdl:OutPort" name="Out_ret" id="59b53a77-a253-4a96-81ef-84e719a1f518" connectedTo="6b4d9bba-484b-46aa-bfe6-895d491b6747" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret">
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="HeatIn.Q" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="126c42be-a8bf-4646-a352-7d4976a1ed4b" measurement="Pipe3_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="CUBIC_METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="Heat_flow" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="5230e4de-3a59-41b6-8d03-220e9d8743dc" measurement="Pipe3_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="HeatIn.H" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="f71388a1-1e5f-4075-8524-d911dfd5f332" measurement="Pipe3_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="PostProc.Velocity" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="d4bafdfb-d33f-41d0-8eb4-d62d8ec2a379" measurement="Pipe3_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="SPEED" unit="METRE"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" lon="4.378211386257638" CRS="WGS84" lat="51.990784417008705"/>
          <point xsi:type="esdl:Point" lon="4.37305259776345" CRS="WGS84" lat="51.98911949663501"/>
          <point xsi:type="esdl:Point" lon="4.369031429215318" CRS="WGS84" lat="51.99571274701101"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:Pipe" name="Pipe4_ret" length="455.4" related="Pipe4" id="Pipe4_ret" outerDiameter="0.45" diameter="DN300" innerDiameter="0.3127">
        <port xsi:type="esdl:InPort" name="In_ret" connectedTo="d7eb3623-7481-41bb-911d-2dd9bd67db39" id="5e2f4591-43f2-489f-8eb2-63105dbd0355" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret"/>
        <port xsi:type="esdl:OutPort" name="Out_ret" id="23d8b6bb-9480-4f02-ba7c-d00de8ff206e" connectedTo="1ba08c64-4c54-4f23-93bf-2b2f6c04229d" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret">
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="HeatIn.Q" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="50d6d63d-87e7-45a6-a3e7-814fd33bec6a" measurement="Pipe4_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="CUBIC_METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="Heat_flow" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="bce89390-964e-48ec-84de-a889dfb79a38" measurement="Pipe4_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="HeatIn.H" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="2a0edf46-7944-44bf-87f8-3fffc6fda7ce" measurement="Pipe4_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="PostProc.Velocity" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="cc43df73-6c3d-4e07-8fd2-0b45149e2217" measurement="Pipe4_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="SPEED" unit="METRE"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" lon="4.372769808163894" CRS="WGS84" lat="52.00114253074436"/>
          <point xsi:type="esdl:Point" lon="4.3663488762941665" CRS="WGS84" lat="52.000059268817886"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:Pipe" name="Pipe5_ret" length="252.3" related="Pipe5" id="Pipe5_ret" outerDiameter="0.45" diameter="DN300" innerDiameter="0.3127">
        <port xsi:type="esdl:InPort" name="In_ret" connectedTo="ca90e0a5-f866-4ec2-9b3b-07f054f1c2b2" id="35ddd90a-e45c-4afd-95b4-80ce6c927071" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret"/>
        <port xsi:type="esdl:OutPort" name="Out_ret" id="6f9268a0-1fd9-42f6-8821-2d7d4a6e5618" connectedTo="6b4d9bba-484b-46aa-bfe6-895d491b6747" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret">
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="HeatIn.Q" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="fe179915-2508-4c21-a936-6c97e0c382ad" measurement="Pipe5_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="CUBIC_METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="Heat_flow" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="aaeb78c6-0dc8-4ca0-bab6-8a8be7d89f9f" measurement="Pipe5_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="HeatIn.H" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="1a195a0b-3373-4893-82cc-0c5f49782bb3" measurement="Pipe5_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="PostProc.Velocity" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="eb401d59-c9be-41a4-bf40-6ad4a8e8e28d" measurement="Pipe5_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="SPEED" unit="METRE"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" lon="4.372447461880088" CRS="WGS84" lat="51.99657151577376"/>
          <point xsi:type="esdl:Point" lon="4.369031429215318" CRS="WGS84" lat="51.99571274701101"/>
        </geometry>
      </asset>
      <area xsi:type="esdl:Area" name="Area_76a7" id="76a75122-8ea6-472d-8059-374830275d72">
        <KPIs xsi:type="esdl:KPIs" id="97ed38fb-ff56-4b7e-8bc9-6201e09bda4a">
          <kpi xsi:type="esdl:DoubleKPI" value="15.0" name="Investment">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" multiplier="MEGA" physicalQuantity="COST" unit="EURO"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="1.0" name="Installation">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" multiplier="MEGA" physicalQuantity="COST" unit="EURO"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Variable OPEX">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" multiplier="MEGA" physicalQuantity="COST" unit="EURO"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Fixed OPEX">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" multiplier="MEGA" physicalQuantity="COST" unit="EURO"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Estimated energy from local source(s) [%]">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PERCENT"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="100.0" name="Estimated energy from regional source(s) [%]">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PERCENT"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="7.4" name="Total energy consumed [GWh]">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" multiplier="GIGA" physicalQuantity="ENERGY" unit="WATTHOUR"/>
          </kpi>
        </KPIs>
        <asset xsi:type="esdl:HeatingDemand" name="HeatingDemand_b0ff" id="b0ff0df6-4a47-43a5-a0a5-aa10975c0a5c" power="15000000.0">
          <costInformation xsi:type="esdl:CostInformation" id="cd676c1c-6224-406f-a864-3e7ff55265e0">
            <installationCosts xsi:type="esdl:SingleValue" id="829c1c62-4266-4560-ac77-b961b7a722cf" value="1000000.0">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="1c0a9d42-bb5a-44c1-9ed6-824d7c82e932" physicalQuantity="COST" unit="EURO" description="Cost in EUR"/>
            </installationCosts>
            <investmentCosts xsi:type="esdl:SingleValue" id="08f06cd1-471b-404a-8894-27b315775b59" value="1000000.0">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perUnit="WATT" physicalQuantity="COST" unit="EURO" id="f8e5bc00-6eae-47d6-b7ad-b9699879b14c" description="Cost in EUR/MW" perMultiplier="MEGA"/>
            </investmentCosts>
          </costInformation>
          <port xsi:type="esdl:InPort" name="In" connectedTo="5169316d-ae93-4f04-9a34-7c776444b651" id="2c5a109b-0d98-47b6-acc1-05e1708f8b85" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6">
            <profile xsi:type="esdl:InfluxDBProfile" multiplier="2.0" endDate="2019-12-31T22:00:00.000000+0000" filters="" port="443" field="demand4_MW" database="energy_profiles" startDate="2018-12-31T23:00:00.000000+0000" host="profiles.warmingup.info" id="b8150ac7-ea23-4be6-b5a3-b6974b8df58d" measurement="WarmingUp default profiles">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="e9405fc8-5e57-4df5-8584-4babee7cdf1b"/>
            </profile>
          </port>
          <port xsi:type="esdl:OutPort" name="Out" id="d7eb3623-7481-41bb-911d-2dd9bd67db39" connectedTo="5e2f4591-43f2-489f-8eb2-63105dbd0355" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret">
            <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="HeatIn.Q" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="930faf23-1a1d-4dc2-8fc4-e01cb2b4542c" measurement="HeatingDemand_b0ff">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="CUBIC_METRE"/>
            </profile>
            <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="Heat_flow" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="c46d08c2-57cd-4b0b-9d70-c7103bec9078" measurement="HeatingDemand_b0ff">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
            </profile>
            <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="HeatIn.H" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="ac6c9fa2-9d22-4323-aa98-4875980c4e86" measurement="HeatingDemand_b0ff">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
            </profile>
          </port>
          <geometry xsi:type="esdl:Point" lon="4.373545646667481" CRS="WGS84" lat="52.00105253065436"/>
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
      </area>
      <area xsi:type="esdl:Area" name="Area_9d0f" id="9d0fd9ed-662c-42ec-a417-7e789737084c">
        <KPIs xsi:type="esdl:KPIs" id="a27a6196-6c44-4bdc-8234-52d6f86b4269">
          <kpi xsi:type="esdl:DoubleKPI" value="15.0" name="Investment">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" multiplier="MEGA" physicalQuantity="COST" unit="EURO"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="1.0" name="Installation">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" multiplier="MEGA" physicalQuantity="COST" unit="EURO"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Variable OPEX">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" multiplier="MEGA" physicalQuantity="COST" unit="EURO"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Fixed OPEX">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" multiplier="MEGA" physicalQuantity="COST" unit="EURO"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Estimated energy from local source(s) [%]">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PERCENT"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="100.0" name="Estimated energy from regional source(s) [%]">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PERCENT"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="7.4" name="Total energy consumed [GWh]">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" multiplier="GIGA" physicalQuantity="ENERGY" unit="WATTHOUR"/>
          </kpi>
        </KPIs>
        <asset xsi:type="esdl:HeatingDemand" name="HeatingDemand_08fd" id="08fd3385-681a-4211-a083-51775cc99daa" power="15000000.0">
          <costInformation xsi:type="esdl:CostInformation" id="7eac6b5e-ba11-4ef1-b90e-599dd2690d20">
            <installationCosts xsi:type="esdl:SingleValue" id="3b93383a-2ec4-4b35-9335-ebd91f0de600" value="1000000.0">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="318840e0-6f48-46f4-b9c9-91315d7b45fd" physicalQuantity="COST" unit="EURO" description="Cost in EUR"/>
            </installationCosts>
            <investmentCosts xsi:type="esdl:SingleValue" id="26aba0b6-a1a0-4610-97b3-be763548c669" value="1000000.0">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perUnit="WATT" physicalQuantity="COST" unit="EURO" id="424508c6-24aa-4a35-81e9-7ae198cbaeb8" description="Cost in EUR/MW" perMultiplier="MEGA"/>
            </investmentCosts>
          </costInformation>
          <port xsi:type="esdl:InPort" name="In" connectedTo="787c6ae3-96da-41e1-af86-6e68a1e28cb1" id="01caa60f-1549-4f3f-817e-e4e6807b2398" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6">
            <profile xsi:type="esdl:InfluxDBProfile" multiplier="2.0" endDate="2019-12-31T22:00:00.000000+0000" filters="" port="443" field="demand4_MW" database="energy_profiles" startDate="2018-12-31T23:00:00.000000+0000" host="profiles.warmingup.info" id="ddd73fb0-d96f-4127-8d39-869455c77930" measurement="WarmingUp default profiles">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="e9405fc8-5e57-4df5-8584-4babee7cdf1b"/>
            </profile>
          </port>
          <port xsi:type="esdl:OutPort" name="Out" id="ca90e0a5-f866-4ec2-9b3b-07f054f1c2b2" connectedTo="35ddd90a-e45c-4afd-95b4-80ce6c927071" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret">
            <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="HeatIn.Q" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="001575a0-e891-4170-a4b5-ca8536925492" measurement="HeatingDemand_08fd">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="CUBIC_METRE"/>
            </profile>
            <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="Heat_flow" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="e0d5dd45-3636-431e-9042-28efb4457803" measurement="HeatingDemand_08fd">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
            </profile>
            <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="HeatIn.H" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="d8441138-b477-4c7a-a347-4e55b3747fd0" measurement="HeatingDemand_08fd">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
            </profile>
          </port>
          <geometry xsi:type="esdl:Point" lon="4.373245239257813" CRS="WGS84" lat="51.99648151568376"/>
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
      </area>
      <area xsi:type="esdl:Area" name="Area_a58a" id="a58a988c-95c1-492b-bc63-b125d25f5108">
        <KPIs xsi:type="esdl:KPIs" id="2c1c5ddb-5fd7-4426-9cd1-e62cb747671b">
          <kpi xsi:type="esdl:DoubleKPI" value="15.0" name="Investment">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" multiplier="MEGA" physicalQuantity="COST" unit="EURO"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="1.0" name="Installation">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" multiplier="MEGA" physicalQuantity="COST" unit="EURO"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Variable OPEX">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" multiplier="MEGA" physicalQuantity="COST" unit="EURO"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Fixed OPEX">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" multiplier="MEGA" physicalQuantity="COST" unit="EURO"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Estimated energy from local source(s) [%]">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PERCENT"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="100.0" name="Estimated energy from regional source(s) [%]">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PERCENT"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="6.6" name="Total energy consumed [GWh]">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" multiplier="GIGA" physicalQuantity="ENERGY" unit="WATTHOUR"/>
          </kpi>
        </KPIs>
        <asset xsi:type="esdl:HeatingDemand" name="HeatingDemand_8fbe" id="8fbe3d4e-5d5b-4489-9271-9969c2b9e589" power="15000000.0">
          <costInformation xsi:type="esdl:CostInformation" id="32e59a3e-fe5e-4201-bbd6-4f26dc4c961e">
            <installationCosts xsi:type="esdl:SingleValue" id="850701a9-ec9a-40c5-ab3e-e0dbe6165cb6" value="1000000.0">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="b18cdc99-6303-404c-958a-1a4c079f842d" physicalQuantity="COST" unit="EURO" description="Cost in EUR"/>
            </installationCosts>
            <investmentCosts xsi:type="esdl:SingleValue" id="3971c64d-50e4-47ec-a769-1f91935065d9" value="1000000.0">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perUnit="WATT" physicalQuantity="COST" unit="EURO" id="5a0e43e1-b141-4626-87eb-487cdb70e60e" description="Cost in EUR/MW" perMultiplier="MEGA"/>
            </investmentCosts>
          </costInformation>
          <port xsi:type="esdl:InPort" name="In" connectedTo="13edd58c-4a04-4770-8aac-c6e8689acbba" id="23cdb929-5cfc-4b8d-963e-06b6e6cf3a5c" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6">
            <profile xsi:type="esdl:InfluxDBProfile" multiplier="2.0" endDate="2019-12-31T22:00:00.000000+0000" filters="" port="443" field="demand3_MW" database="energy_profiles" startDate="2018-12-31T23:00:00.000000+0000" host="profiles.warmingup.info" id="5ae97047-619a-4119-84f3-848b36743e5d" measurement="WarmingUp default profiles">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="e9405fc8-5e57-4df5-8584-4babee7cdf1b"/>
            </profile>
          </port>
          <port xsi:type="esdl:OutPort" name="Out" id="0fd050fa-15ff-4f1e-b0bd-ef1823365eaa" connectedTo="6d1edc18-1962-4d3d-9882-ef27ae1702e8" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret">
            <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="HeatIn.Q" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="c50afa45-8c1b-456e-8389-0a2f3ffcd28a" measurement="HeatingDemand_8fbe">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="CUBIC_METRE"/>
            </profile>
            <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="Heat_flow" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="0facce95-dcc7-4114-aa84-a3365f810b1e" measurement="HeatingDemand_8fbe">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
            </profile>
            <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="HeatIn.H" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="b4c37287-dc04-4562-a967-34c6a30dc9cd" measurement="HeatingDemand_8fbe">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
            </profile>
          </port>
          <geometry xsi:type="esdl:Point" lon="4.379038810729981" CRS="WGS84" lat="51.99069441691871"/>
        </asset>
        <geometry xsi:type="esdl:Polygon" CRS="WGS84">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lon="4.372987747192384" lat="51.992279997820766"/>
            <point xsi:type="esdl:Point" lon="4.382214546203614" lat="51.994235470276436"/>
            <point xsi:type="esdl:Point" lon="4.38581943511963" lat="51.989333415199866"/>
            <point xsi:type="esdl:Point" lon="4.37633514404297" lat="51.98688879367896"/>
          </exterior>
        </geometry>
      </area>
    </area>
  </instance>
  <energySystemInformation xsi:type="esdl:EnergySystemInformation" id="5fa7e6e3-5701-48a7-bbbd-cad59a46f6c5">
    <quantityAndUnits xsi:type="esdl:QuantityAndUnits" id="38f7850a-2090-411e-a15a-84b1d7b78362">
      <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT" id="e9405fc8-5e57-4df5-8584-4babee7cdf1b" description="Power in MW" multiplier="MEGA"/>
    </quantityAndUnits>
    <carriers xsi:type="esdl:Carriers" id="42a694c6-9a1b-4cc7-bbae-0b44725f9434">
      <carrier xsi:type="esdl:HeatCommodity" name="Primary" id="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" supplyTemperature="80.0"/>
      <carrier xsi:type="esdl:HeatCommodity" name="Primary_ret" id="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" returnTemperature="40.0"/>
    </carriers>
  </energySystemInformation>
</esdl:EnergySystem>
