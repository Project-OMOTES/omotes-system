<?xml version='1.0' encoding='UTF-8'?>
<esdl:EnergySystem xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:esdl="http://www.tno.nl/esdl" version="13" description="" esdlVersion="v2207" name="PoC Tutorial_SmartControlOptimized_Simulation" id="df5366b7-d4c2-43fd-8223-00d724cb2055">
  <instance xsi:type="esdl:Instance" id="9af52a01-24e2-4bbe-a7b8-f868161e6ca3" name="Untitled instance">
    <area xsi:type="esdl:Area" name="Untitled area" id="9edf5aa3-3855-4dac-b6f5-01c2edf1a43a">
      <KPIs xsi:type="esdl:KPIs" id="051c27a9-4dee-4d97-8fa4-80638e67539b">
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
      <asset xsi:type="esdl:ResidualHeatSource" name="ResidualHeatSource_72d7" id="72d74fb5-134f-4bfb-829e-220ab76a8a7b" power="50000000.0">
        <costInformation xsi:type="esdl:CostInformation" id="123cc46e-f8ef-42f9-842f-08e77dd06899">
          <fixedOperationalCosts xsi:type="esdl:SingleValue" value="600000.0" id="8ee43904-745d-4f5c-8b15-5a2adcde7e5f">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perUnit="WATT" physicalQuantity="COST" unit="EURO" id="4c3a445d-d13f-4f61-8d75-22280135830f" description="Cost in EUR/MW" perMultiplier="MEGA"/>
          </fixedOperationalCosts>
          <variableOperationalCosts xsi:type="esdl:SingleValue" value="100.0" id="e5bc1b5e-23b1-4985-94f2-bea25c12da14">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perUnit="WATTHOUR" physicalQuantity="COST" unit="EURO" id="de56cc5d-2baa-451c-b38c-47abea1393c2" description="Cost in EUR/MWh" perMultiplier="MEGA"/>
          </variableOperationalCosts>
          <investmentCosts xsi:type="esdl:SingleValue" value="1500000.0" id="3102215e-50a4-4332-b16e-2fd6522df31b">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perUnit="WATT" physicalQuantity="COST" unit="EURO" id="69673880-fe81-4f34-8fd9-558cc693a251" description="Cost in EUR/MW" perMultiplier="MEGA"/>
          </investmentCosts>
          <marginalCosts xsi:type="esdl:SingleValue" value="1.0" id="e52de449-7340-4878-b582-d20711d9fb14">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO" description="Cost in EUR" id="4fccbb6b-2e41-46d9-a92c-f94da7c3aca7"/>
          </marginalCosts>
          <installationCosts xsi:type="esdl:SingleValue" value="10000000.0" id="12c24715-08dc-4b61-ae15-76541704c83a">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO" description="Cost in EUR" id="89b04c83-eb32-49a3-adc4-492a719221d3"/>
          </installationCosts>
        </costInformation>
        <port xsi:type="esdl:OutPort" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="Out" id="d890f8aa-9b94-493d-b017-bd7cebaf8c77" connectedTo="07c2f88e-85be-4b8b-a72e-14364a3810c9">
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="HeatIn.Q" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="21d73320-ba31-474d-a782-20f696107c05" measurement="ResidualHeatSource_72d7">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="Heat_flow" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="59dc1ffa-f4f0-4eff-909d-971d46b9f92b" measurement="ResidualHeatSource_72d7">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="HeatIn.H" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="7114ecff-e31f-4cdc-95bf-a443a47aa369" measurement="ResidualHeatSource_72d7">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="Pump_power" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="576211ab-4a08-4767-ae33-8d7117de5a88" measurement="ResidualHeatSource_72d7">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
        </port>
        <port xsi:type="esdl:InPort" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="In" connectedTo="c0a27794-98e2-4119-a363-cec4f0b525cd" id="4d6c18cd-cc52-443d-8e53-96cd188dd1a8"/>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="4.372987747192384" lat="52.00467202060717"/>
      </asset>
      <asset xsi:type="esdl:Pipe" innerDiameter="0.3938" length="818.07" name="Pipe1" state="OPTIONAL" related="Pipe1_ret" id="Pipe1" outerDiameter="0.56" diameter="DN400">
        <costInformation xsi:type="esdl:CostInformation" id="4a3d48d9-74bb-4407-b249-9e2af4d1037c">
          <investmentCosts xsi:type="esdl:SingleValue" name="Combined investment and installation costs" value="2840.6" id="2ab2214c-8d42-4b74-877f-7fb97f6eab86">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perUnit="METRE" physicalQuantity="COST" unit="EURO" id="9169bd50-197f-4d6b-aaac-b383a59c815d" description="Costs in EUR/m"/>
          </investmentCosts>
        </costInformation>
        <port xsi:type="esdl:InPort" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="In" connectedTo="d890f8aa-9b94-493d-b017-bd7cebaf8c77" id="07c2f88e-85be-4b8b-a72e-14364a3810c9"/>
        <port xsi:type="esdl:OutPort" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="Out" id="fc2801d0-215b-4d2b-9846-ee4918b87e21" connectedTo="d149871b-d76a-4cc3-8922-c8d99205f47e">
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="HeatIn.Q" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="4285e965-8495-4275-9dd2-1d7ff8bb7d50" measurement="Pipe1">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="Heat_flow" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="f36e98fb-90b9-4fa9-8748-e7892698630f" measurement="Pipe1">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="HeatIn.H" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="71533845-091b-458e-8dd5-3bac974ae4af" measurement="Pipe1">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="PostProc.Velocity" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="a18dc062-32a5-471d-ae8e-5a2d9e3eec03" measurement="Pipe1">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="SPEED" unit="METRE" perTimeUnit="SECOND"/>
          </profile>
        </port>
        <material xsi:type="esdl:CompoundMatter" compoundType="LAYERED">
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.0063">
            <matter xsi:type="esdl:Material" id="74d84321-1767-4cec-b6e7-b90c06020400" name="steel" thermalConductivity="52.15"/>
          </component>
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.0711">
            <matter xsi:type="esdl:Material" id="95012cd9-7648-4df5-8c83-74dc73bc16ba" name="PUR" thermalConductivity="0.027"/>
          </component>
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.0057">
            <matter xsi:type="esdl:Material" id="1392ee3f-34f6-4c8e-ab0e-635b9d7ec9be" name="HDPE" thermalConductivity="0.4"/>
          </component>
        </material>
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" lon="4.372987747192384" lat="52.00467202060717"/>
          <point xsi:type="esdl:Point" lon="4.365863800048829" lat="52.00210934629504"/>
          <point xsi:type="esdl:Point" lon="4.367129802703858" lat="51.99996926872789"/>
        </geometry>
        <dataSource xsi:type="esdl:DataSource" attribution="https://www.logstor.com/media/6506/product-catalogue-uk-202003.pdf" name="Logstor Product Catalogue Version 2020.03"/>
      </asset>
      <asset xsi:type="esdl:Joint" name="Joint_a04c" id="a04cb927-426d-4016-a084-356002a85d6c">
        <port xsi:type="esdl:InPort" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="In" connectedTo="fc2801d0-215b-4d2b-9846-ee4918b87e21" id="d149871b-d76a-4cc3-8922-c8d99205f47e"/>
        <port xsi:type="esdl:OutPort" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="Out" id="3535f436-1270-4b1b-a326-41d69cd6e330" connectedTo="863d2ff2-7a68-4bfb-8aa5-dab741b72b25 7f18f0b7-fcf3-4d83-8a65-79cbd3273ea7"/>
        <geometry xsi:type="esdl:Point" lon="4.367129802703858" lat="51.99996926872789"/>
      </asset>
      <asset xsi:type="esdl:Pipe" innerDiameter="0.3938" length="517.54" name="Pipe2" related="Pipe2_ret" id="Pipe2" outerDiameter="0.56" diameter="DN400">
        <costInformation xsi:type="esdl:CostInformation" id="4a3d48d9-74bb-4407-b249-9e2af4d1037c">
          <investmentCosts xsi:type="esdl:SingleValue" name="Combined investment and installation costs" value="2840.6" id="2ab2214c-8d42-4b74-877f-7fb97f6eab86">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perUnit="METRE" physicalQuantity="COST" unit="EURO" id="9169bd50-197f-4d6b-aaac-b383a59c815d" description="Costs in EUR/m"/>
          </investmentCosts>
        </costInformation>
        <port xsi:type="esdl:InPort" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="In" connectedTo="3535f436-1270-4b1b-a326-41d69cd6e330" id="863d2ff2-7a68-4bfb-8aa5-dab741b72b25"/>
        <port xsi:type="esdl:OutPort" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="Out" id="8c38fc93-ed85-42ef-9be6-87d47c416e90" connectedTo="4d629e6e-5db4-4a8f-9945-934a24ede11a">
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="HeatIn.Q" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="d2d8c554-6ec2-4e3f-bc86-87e949d769eb" measurement="Pipe2">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="Heat_flow" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="deb5d17a-bbd1-415a-9f7c-c7a894f664fc" measurement="Pipe2">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="HeatIn.H" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="10063edc-7d7e-4697-a36e-a7af4e11e2c0" measurement="Pipe2">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="PostProc.Velocity" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="c371a20d-3ba6-4308-b316-5331cb926a08" measurement="Pipe2">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="SPEED" unit="METRE" perTimeUnit="SECOND"/>
          </profile>
        </port>
        <material xsi:type="esdl:CompoundMatter" compoundType="LAYERED">
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.0063">
            <matter xsi:type="esdl:Material" id="74d84321-1767-4cec-b6e7-b90c06020400" name="steel" thermalConductivity="52.15"/>
          </component>
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.0711">
            <matter xsi:type="esdl:Material" id="95012cd9-7648-4df5-8c83-74dc73bc16ba" name="PUR" thermalConductivity="0.027"/>
          </component>
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.0057">
            <matter xsi:type="esdl:Material" id="1392ee3f-34f6-4c8e-ab0e-635b9d7ec9be" name="HDPE" thermalConductivity="0.4"/>
          </component>
        </material>
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" lon="4.367129802703858" lat="51.99996926872789"/>
          <point xsi:type="esdl:Point" lon="4.36983346939087" lat="51.995622746921015"/>
        </geometry>
        <dataSource xsi:type="esdl:DataSource" attribution="https://www.logstor.com/media/6506/product-catalogue-uk-202003.pdf" name="Logstor Product Catalogue Version 2020.03"/>
      </asset>
      <asset xsi:type="esdl:Pipe" innerDiameter="0.3938" length="1182.23" name="Pipe3" related="Pipe3_ret" id="Pipe3" outerDiameter="0.56" diameter="DN400">
        <costInformation xsi:type="esdl:CostInformation" id="4a3d48d9-74bb-4407-b249-9e2af4d1037c">
          <investmentCosts xsi:type="esdl:SingleValue" name="Combined investment and installation costs" value="2840.6" id="2ab2214c-8d42-4b74-877f-7fb97f6eab86">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perUnit="METRE" physicalQuantity="COST" unit="EURO" id="9169bd50-197f-4d6b-aaac-b383a59c815d" description="Costs in EUR/m"/>
          </investmentCosts>
        </costInformation>
        <port xsi:type="esdl:InPort" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="In" connectedTo="a42acf83-361d-4d4d-8001-8617daad939a" id="e44060e9-8b0e-41e5-ae46-ce074c891c15"/>
        <port xsi:type="esdl:OutPort" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="Out" id="13edd58c-4a04-4770-8aac-c6e8689acbba" connectedTo="23cdb929-5cfc-4b8d-963e-06b6e6cf3a5c">
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="HeatIn.Q" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="a222cf8b-bac2-42a4-9db2-a1b3e538ab42" measurement="Pipe3">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="Heat_flow" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="3f670f4a-0f69-4bf2-b062-72ea798f4f1f" measurement="Pipe3">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="HeatIn.H" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="4f1247f3-ff3f-4f37-b261-b2ab82f0fa6c" measurement="Pipe3">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="PostProc.Velocity" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="198ec5fc-134b-43d3-9267-bdc6a06bd437" measurement="Pipe3">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="SPEED" unit="METRE" perTimeUnit="SECOND"/>
          </profile>
        </port>
        <material xsi:type="esdl:CompoundMatter" compoundType="LAYERED">
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.0063">
            <matter xsi:type="esdl:Material" id="74d84321-1767-4cec-b6e7-b90c06020400" name="steel" thermalConductivity="52.15"/>
          </component>
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.0711">
            <matter xsi:type="esdl:Material" id="95012cd9-7648-4df5-8c83-74dc73bc16ba" name="PUR" thermalConductivity="0.027"/>
          </component>
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.0057">
            <matter xsi:type="esdl:Material" id="1392ee3f-34f6-4c8e-ab0e-635b9d7ec9be" name="HDPE" thermalConductivity="0.4"/>
          </component>
        </material>
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" lon="4.36983346939087" lat="51.995622746921015"/>
          <point xsi:type="esdl:Point" lon="4.373888969421388" lat="51.989029496545015"/>
          <point xsi:type="esdl:Point" lon="4.379038810729981" lat="51.99069441691871"/>
        </geometry>
        <dataSource xsi:type="esdl:DataSource" attribution="https://www.logstor.com/media/6506/product-catalogue-uk-202003.pdf" name="Logstor Product Catalogue Version 2020.03"/>
      </asset>
      <asset xsi:type="esdl:Joint" name="Joint_95ca" id="95caf7c7-e89f-4378-96f2-f904f9255c83">
        <port xsi:type="esdl:InPort" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="In" connectedTo="8c38fc93-ed85-42ef-9be6-87d47c416e90 abfddfae-c090-4b8a-88b1-23d4c6adacc5" id="4d629e6e-5db4-4a8f-9945-934a24ede11a"/>
        <port xsi:type="esdl:OutPort" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="Out" id="a42acf83-361d-4d4d-8001-8617daad939a" connectedTo="e44060e9-8b0e-41e5-ae46-ce074c891c15 20165ec3-cf86-41e4-976f-079ba0ca5be4"/>
        <geometry xsi:type="esdl:Point" lon="4.36983346939087" lat="51.995622746921015"/>
      </asset>
      <asset xsi:type="esdl:Pipe" innerDiameter="0.3127" length="455.4" name="Pipe4" related="Pipe4_ret" id="Pipe4" outerDiameter="0.45" diameter="DN300">
        <costInformation xsi:type="esdl:CostInformation" id="384df56d-e3f0-4794-a0e2-bc0c71482e45">
          <investmentCosts xsi:type="esdl:SingleValue" name="Combined investment and installation costs" value="1962.1" id="1e93bdda-8a74-42d5-960d-d64e4dff2025">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perUnit="METRE" physicalQuantity="COST" unit="EURO" id="983f0959-8566-43ce-a380-782d29406ed3" description="Costs in EUR/m"/>
          </investmentCosts>
        </costInformation>
        <port xsi:type="esdl:InPort" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="In" connectedTo="3535f436-1270-4b1b-a326-41d69cd6e330" id="7f18f0b7-fcf3-4d83-8a65-79cbd3273ea7"/>
        <port xsi:type="esdl:OutPort" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="Out" id="5169316d-ae93-4f04-9a34-7c776444b651" connectedTo="2c5a109b-0d98-47b6-acc1-05e1708f8b85">
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="HeatIn.Q" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="4e41801f-590e-4601-ad0b-a753a1e68378" measurement="Pipe4">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="Heat_flow" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="0539c020-4c2f-4e38-9de9-c048ac14eb6a" measurement="Pipe4">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="HeatIn.H" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="49c782ff-33f4-4815-bc2d-b4e3c2ff9198" measurement="Pipe4">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="PostProc.Velocity" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="75e22e85-3e6d-4caf-bbb1-77b30e50d04a" measurement="Pipe4">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="SPEED" unit="METRE" perTimeUnit="SECOND"/>
          </profile>
        </port>
        <material xsi:type="esdl:CompoundMatter" compoundType="LAYERED">
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.0056">
            <matter xsi:type="esdl:Material" id="f4cee538-cc3b-4809-bd66-979f2ce9649b" name="steel" thermalConductivity="52.15"/>
          </component>
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.05785">
            <matter xsi:type="esdl:Material" id="e4c0350c-cd79-45b4-a45c-6259c750b478" name="PUR" thermalConductivity="0.027"/>
          </component>
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.0052">
            <matter xsi:type="esdl:Material" id="9a97f588-10fe-4a34-b0f2-277862151763" name="HDPE" thermalConductivity="0.4"/>
          </component>
        </material>
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lon="4.367129802703858" lat="51.99996926872789"/>
          <point xsi:type="esdl:Point" lon="4.373545646667481" lat="52.00105253065436"/>
        </geometry>
        <dataSource xsi:type="esdl:DataSource" attribution="https://www.logstor.com/media/6506/product-catalogue-uk-202003.pdf" name="Logstor Product Catalogue Version 2020.03"/>
      </asset>
      <asset xsi:type="esdl:Pipe" innerDiameter="0.3127" length="252.3" name="Pipe5" related="Pipe5_ret" id="Pipe5" outerDiameter="0.45" diameter="DN300">
        <costInformation xsi:type="esdl:CostInformation" id="4c8d9c8f-7e99-4402-8f66-d413e73db121">
          <investmentCosts xsi:type="esdl:SingleValue" name="Combined investment and installation costs" value="1962.1" id="1e93bdda-8a74-42d5-960d-d64e4dff2025">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perUnit="METRE" physicalQuantity="COST" unit="EURO" id="983f0959-8566-43ce-a380-782d29406ed3" description="Costs in EUR/m"/>
          </investmentCosts>
        </costInformation>
        <port xsi:type="esdl:InPort" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="In" connectedTo="a42acf83-361d-4d4d-8001-8617daad939a" id="20165ec3-cf86-41e4-976f-079ba0ca5be4"/>
        <port xsi:type="esdl:OutPort" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="Out" id="787c6ae3-96da-41e1-af86-6e68a1e28cb1" connectedTo="01caa60f-1549-4f3f-817e-e4e6807b2398">
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="HeatIn.Q" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="6ea8f268-996f-4418-9d80-fea91187b4fe" measurement="Pipe5">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="Heat_flow" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="48f2b3c6-b311-415c-9991-01cbef693941" measurement="Pipe5">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="HeatIn.H" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="3412758a-8f43-44a6-b2f6-2b13755ea3f9" measurement="Pipe5">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="PostProc.Velocity" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="9968e6a3-28a5-4c54-9cd0-3c6b50a91820" measurement="Pipe5">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="SPEED" unit="METRE" perTimeUnit="SECOND"/>
          </profile>
        </port>
        <material xsi:type="esdl:CompoundMatter" compoundType="LAYERED">
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.0056">
            <matter xsi:type="esdl:Material" id="f4cee538-cc3b-4809-bd66-979f2ce9649b" name="steel" thermalConductivity="52.15"/>
          </component>
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.05785">
            <matter xsi:type="esdl:Material" id="e4c0350c-cd79-45b4-a45c-6259c750b478" name="PUR" thermalConductivity="0.027"/>
          </component>
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.0052">
            <matter xsi:type="esdl:Material" id="9a97f588-10fe-4a34-b0f2-277862151763" name="HDPE" thermalConductivity="0.4"/>
          </component>
        </material>
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lon="4.36983346939087" lat="51.995622746921015"/>
          <point xsi:type="esdl:Point" lon="4.373245239257813" lat="51.99648151568376"/>
        </geometry>
        <dataSource xsi:type="esdl:DataSource" attribution="https://www.logstor.com/media/6506/product-catalogue-uk-202003.pdf" name="Logstor Product Catalogue Version 2020.03"/>
      </asset>
      <asset xsi:type="esdl:Joint" name="Joint_a04c_ret" id="076ba789-3040-4952-9b2b-fbf9ed05e6bd">
        <port xsi:type="esdl:InPort" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="ret_port" connectedTo="c5df4e61-6603-4315-a45a-196903690d9e 23d8b6bb-9480-4f02-ba7c-d00de8ff206e" id="1ba08c64-4c54-4f23-93bf-2b2f6c04229d"/>
        <port xsi:type="esdl:OutPort" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="ret_port" id="044ef084-2a9e-4356-bac2-207f5361d4ce" connectedTo="2c3c73cb-d282-4c97-a060-922c91c50180"/>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="4.3663488762941665" lat="52.000059268817886"/>
      </asset>
      <asset xsi:type="esdl:Joint" name="Joint_95ca_ret" id="b4a5be45-3352-4837-94d6-b110aa842da6">
        <port xsi:type="esdl:InPort" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="ret_port" connectedTo="59b53a77-a253-4a96-81ef-84e719a1f518 6f9268a0-1fd9-42f6-8821-2d7d4a6e5618" id="6b4d9bba-484b-46aa-bfe6-895d491b6747"/>
        <port xsi:type="esdl:OutPort" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="ret_port" id="5a47482f-6cdf-41b3-91b0-014578ee8143" connectedTo="da70a1aa-53c4-496e-ba63-2c04674b8c84 c92afccb-09a2-4a99-ad98-3f18ca0122dd"/>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="4.369031429215318" lat="51.99571274701101"/>
      </asset>
      <asset xsi:type="esdl:Pipe" innerDiameter="0.3938" length="818.07" name="Pipe1_ret" state="OPTIONAL" related="Pipe1" id="Pipe1_ret" outerDiameter="0.56" diameter="DN400">
        <port xsi:type="esdl:InPort" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="In_ret" connectedTo="044ef084-2a9e-4356-bac2-207f5361d4ce" id="2c3c73cb-d282-4c97-a060-922c91c50180"/>
        <port xsi:type="esdl:OutPort" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="Out_ret" id="c0a27794-98e2-4119-a363-cec4f0b525cd" connectedTo="4d6c18cd-cc52-443d-8e53-96cd188dd1a8">
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="HeatIn.Q" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="6d4ba196-4819-42ab-80f5-94ff24affbe9" measurement="Pipe1_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="Heat_flow" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="c00fd7eb-eb24-45ea-94f9-c7c929f93c2f" measurement="Pipe1_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="HeatIn.H" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="49c68da2-d2f5-49da-9ce8-7b36162acdd0" measurement="Pipe1_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="PostProc.Velocity" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="474cf260-ee50-4a04-af9c-d162eddfdb13" measurement="Pipe1_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="SPEED" unit="METRE" perTimeUnit="SECOND"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" CRS="WGS84" lon="4.3663488762941665" lat="52.000059268817886"/>
          <point xsi:type="esdl:Point" CRS="WGS84" lon="4.365092860885141" lat="52.00219934638504"/>
          <point xsi:type="esdl:Point" CRS="WGS84" lon="4.372228431895539" lat="52.004762020697164"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:Pipe" innerDiameter="0.3938" length="517.54" name="Pipe2_ret" related="Pipe2" id="Pipe2_ret" outerDiameter="0.56" diameter="DN400">
        <port xsi:type="esdl:InPort" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="In_ret" connectedTo="5a47482f-6cdf-41b3-91b0-014578ee8143" id="da70a1aa-53c4-496e-ba63-2c04674b8c84"/>
        <port xsi:type="esdl:OutPort" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="Out_ret" id="c5df4e61-6603-4315-a45a-196903690d9e" connectedTo="1ba08c64-4c54-4f23-93bf-2b2f6c04229d">
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="HeatIn.Q" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="456387cc-0460-400e-a846-3646a66e7b98" measurement="Pipe2_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="Heat_flow" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="24c98777-65f7-4974-a3a4-db40ccffad79" measurement="Pipe2_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="HeatIn.H" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="fbf3fc92-c813-4061-80cb-8493248e0b94" measurement="Pipe2_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="PostProc.Velocity" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="7a2f290f-6993-4181-b876-cf792201b165" measurement="Pipe2_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="SPEED" unit="METRE" perTimeUnit="SECOND"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" CRS="WGS84" lon="4.369031429215318" lat="51.99571274701101"/>
          <point xsi:type="esdl:Point" CRS="WGS84" lon="4.3663488762941665" lat="52.000059268817886"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:Pipe" innerDiameter="0.3938" length="1182.23" name="Pipe3_ret" related="Pipe3" id="Pipe3_ret" outerDiameter="0.56" diameter="DN400">
        <port xsi:type="esdl:InPort" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="In_ret" connectedTo="0fd050fa-15ff-4f1e-b0bd-ef1823365eaa" id="6d1edc18-1962-4d3d-9882-ef27ae1702e8"/>
        <port xsi:type="esdl:OutPort" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="Out_ret" id="59b53a77-a253-4a96-81ef-84e719a1f518" connectedTo="6b4d9bba-484b-46aa-bfe6-895d491b6747">
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="HeatIn.Q" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="c4c4ed39-b211-4b0b-8509-0da767ca5fbd" measurement="Pipe3_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="Heat_flow" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="2a954ed6-6330-47ed-a768-361579209678" measurement="Pipe3_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="HeatIn.H" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="ef2165d3-1196-47b5-a29e-9e77e51a1a07" measurement="Pipe3_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="PostProc.Velocity" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="6d4273d5-cff7-4995-a320-c8c6304a3484" measurement="Pipe3_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="SPEED" unit="METRE" perTimeUnit="SECOND"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" CRS="WGS84" lon="4.378211386257638" lat="51.990784417008705"/>
          <point xsi:type="esdl:Point" CRS="WGS84" lon="4.37305259776345" lat="51.98911949663501"/>
          <point xsi:type="esdl:Point" CRS="WGS84" lon="4.369031429215318" lat="51.99571274701101"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:Pipe" innerDiameter="0.3127" length="455.4" name="Pipe4_ret" related="Pipe4" id="Pipe4_ret" outerDiameter="0.45" diameter="DN300">
        <port xsi:type="esdl:InPort" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="In_ret" connectedTo="d7eb3623-7481-41bb-911d-2dd9bd67db39" id="5e2f4591-43f2-489f-8eb2-63105dbd0355"/>
        <port xsi:type="esdl:OutPort" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="Out_ret" id="23d8b6bb-9480-4f02-ba7c-d00de8ff206e" connectedTo="1ba08c64-4c54-4f23-93bf-2b2f6c04229d">
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="HeatIn.Q" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="850ed011-7be9-4768-9f0f-748a1cc1ef80" measurement="Pipe4_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="Heat_flow" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="16999df3-fcf0-490b-88fc-91b2342c3818" measurement="Pipe4_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="HeatIn.H" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="bcb26e13-dd91-4de4-b427-ae2d622bf78d" measurement="Pipe4_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="PostProc.Velocity" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="7a9ad7a5-3c37-410c-9832-f535aa56b9bb" measurement="Pipe4_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="SPEED" unit="METRE" perTimeUnit="SECOND"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" CRS="WGS84" lon="4.372769808163894" lat="52.00114253074436"/>
          <point xsi:type="esdl:Point" CRS="WGS84" lon="4.3663488762941665" lat="52.000059268817886"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:Pipe" innerDiameter="0.3127" length="252.3" name="Pipe5_ret" related="Pipe5" id="Pipe5_ret" outerDiameter="0.45" diameter="DN300">
        <port xsi:type="esdl:InPort" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="In_ret" connectedTo="ca90e0a5-f866-4ec2-9b3b-07f054f1c2b2" id="35ddd90a-e45c-4afd-95b4-80ce6c927071"/>
        <port xsi:type="esdl:OutPort" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="Out_ret" id="6f9268a0-1fd9-42f6-8821-2d7d4a6e5618" connectedTo="6b4d9bba-484b-46aa-bfe6-895d491b6747">
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="HeatIn.Q" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="e022e5b4-ae71-404a-9d4b-26aeb3c42a4e" measurement="Pipe5_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="Heat_flow" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="67853663-e1f4-4914-86fc-a921ad58e9f0" measurement="Pipe5_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="HeatIn.H" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="f127b2ac-fc0f-48d1-a188-94946b33a591" measurement="Pipe5_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="PostProc.Velocity" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="316a6fbc-49d0-4702-b112-522e475338da" measurement="Pipe5_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="SPEED" unit="METRE" perTimeUnit="SECOND"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" CRS="WGS84" lon="4.372447461880088" lat="51.99657151577376"/>
          <point xsi:type="esdl:Point" CRS="WGS84" lon="4.369031429215318" lat="51.99571274701101"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:ResidualHeatSource" name="ResidualHeatSource_76f0" id="76f0817c-9f01-431e-be96-dbf3ee806d76" power="50000000.0">
        <costInformation xsi:type="esdl:CostInformation" id="8a3abfe2-d012-489d-87c3-2732a6d4b25f">
          <fixedOperationalCosts xsi:type="esdl:SingleValue" value="900000.0" id="b1b80150-e761-4633-b9d5-81b1d69a6db8">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perUnit="WATT" physicalQuantity="COST" unit="EURO" id="2c63c99b-cc4c-471a-a83e-a0d25cad5b7e" description="Cost in EUR/MW" perMultiplier="MEGA"/>
          </fixedOperationalCosts>
          <variableOperationalCosts xsi:type="esdl:SingleValue" value="200.0" id="233a17e9-7392-49fb-a833-f8761c322098">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perUnit="WATTHOUR" physicalQuantity="COST" unit="EURO" id="6fad95f6-2d6b-4310-9f76-9b3a26b3bd40" description="Cost in EUR/MWh" perMultiplier="MEGA"/>
          </variableOperationalCosts>
          <investmentCosts xsi:type="esdl:SingleValue" value="2000000.0" id="a572009d-83d3-48ba-8727-e41267ca5350">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perUnit="WATT" physicalQuantity="COST" unit="EURO" id="6862d724-1794-4bab-b666-258fd14150ac" description="Cost in EUR/MW" perMultiplier="MEGA"/>
          </investmentCosts>
          <marginalCosts xsi:type="esdl:SingleValue" value="2.0" id="c36fe934-9dc9-4ef1-bd6b-6e1e4168ae91">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO" description="Cost in EUR" id="4cfb1695-3026-49fa-a8ba-2f90450196d4"/>
          </marginalCosts>
          <installationCosts xsi:type="esdl:SingleValue" value="20000000.0" id="938b0cb2-d1e5-4fcc-bf45-6de3b5b06de2">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO" description="Cost in EUR" id="44294593-d3b9-4940-9b58-699ccbb28b86"/>
          </installationCosts>
        </costInformation>
        <port xsi:type="esdl:OutPort" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="Out" id="81fbe527-8919-4864-b3fa-d3dbc223e4bb" connectedTo="74f2c723-08f3-4d44-871b-875aa721e055">
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="HeatIn.Q" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="d1659c61-054a-49e7-8d3c-7e9b7f906eae" measurement="ResidualHeatSource_76f0">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="Heat_flow" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="0b3dc6ba-4bce-47f1-87d2-76d6d99a145f" measurement="ResidualHeatSource_76f0">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="HeatIn.H" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="9de1d0c7-1d8a-4410-80c3-50fac9857955" measurement="ResidualHeatSource_76f0">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="Pump_power" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="a4b4d4ce-689c-4ad6-b4a4-dfc1feecfec0" measurement="ResidualHeatSource_76f0">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
        </port>
        <port xsi:type="esdl:InPort" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="In" connectedTo="3d19f298-ae58-4e56-92b6-e3ea896af6cb" id="4d708ad1-b369-47a3-abd3-26aa96173e71"/>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="4.364705085754395" lat="51.995081053536964"/>
      </asset>
      <asset xsi:type="esdl:Pipe" innerDiameter="0.263" length="356.2" name="Pipe_8fa5" state="OPTIONAL" id="8fa58f83-6d2c-4ed7-b8bb-d83d089a3932" outerDiameter="0.4" diameter="DN250">
        <costInformation xsi:type="esdl:CostInformation" id="91120115-4997-441c-8732-827100c28f9b">
          <investmentCosts xsi:type="esdl:SingleValue" name="Combined investment and installation costs" value="2840.6" id="2ab2214c-8d42-4b74-877f-7fb97f6eab86">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perUnit="METRE" physicalQuantity="COST" unit="EURO" id="9169bd50-197f-4d6b-aaac-b383a59c815d" description="Costs in EUR/m"/>
          </investmentCosts>
        </costInformation>
        <port xsi:type="esdl:InPort" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="In" connectedTo="81fbe527-8919-4864-b3fa-d3dbc223e4bb" id="74f2c723-08f3-4d44-871b-875aa721e055"/>
        <port xsi:type="esdl:OutPort" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="Out" id="abfddfae-c090-4b8a-88b1-23d4c6adacc5" connectedTo="4d629e6e-5db4-4a8f-9945-934a24ede11a">
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="HeatIn.Q" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="ce708049-1316-4c1c-b65c-3fa50480fcc9" measurement="Pipe_8fa5">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="Heat_flow" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="bcff38f5-1117-4b03-ae00-02eb8ab8e819" measurement="Pipe_8fa5">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="HeatIn.H" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="13d2d035-f6da-413b-85d6-27d77a1a3bff" measurement="Pipe_8fa5">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="PostProc.Velocity" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="a346587b-41eb-4eec-877f-dece139f16c9" measurement="Pipe_8fa5">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="SPEED" unit="METRE" perTimeUnit="SECOND"/>
          </profile>
        </port>
        <material xsi:type="esdl:CompoundMatter" compoundType="LAYERED">
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.005">
            <matter xsi:type="esdl:Material" id="faac539b-4b7c-43f8-abcd-f08fa2652b7b" name="steel" thermalConductivity="52.15"/>
          </component>
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.0587">
            <matter xsi:type="esdl:Material" id="d23b4eeb-a419-4c16-bc7e-280a76116f04" name="PUR" thermalConductivity="0.027"/>
          </component>
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.0048">
            <matter xsi:type="esdl:Material" id="a2b91e8d-471d-4276-a8f6-4efb01054b4e" name="HDPE" thermalConductivity="0.4"/>
          </component>
        </material>
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lon="4.364705085754395" lat="51.995081053536964"/>
          <point xsi:type="esdl:Point" lon="4.36983346939087" lat="51.995622746921015"/>
        </geometry>
        <dataSource xsi:type="esdl:DataSource" attribution="https://www.logstor.com/media/6506/product-catalogue-uk-202003.pdf" name="Logstor Product Catalogue Version 2020.03"/>
      </asset>
      <asset xsi:type="esdl:Pipe" innerDiameter="0.263" length="304.4" name="Pipe_8fa5_ret" state="OPTIONAL" id="c4b13a2c-8331-4deb-9580-af593a1854d4" outerDiameter="0.4" diameter="DN250">
        <costInformation xsi:type="esdl:CostInformation" id="cfd3ba5f-9772-414f-9316-9b746039f0e6">
          <investmentCosts xsi:type="esdl:SingleValue" name="Combined investment and installation costs" value="2840.6" id="2ab2214c-8d42-4b74-877f-7fb97f6eab86">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perUnit="METRE" physicalQuantity="COST" unit="EURO" id="9169bd50-197f-4d6b-aaac-b383a59c815d" description="Costs in EUR/m"/>
          </investmentCosts>
        </costInformation>
        <port xsi:type="esdl:InPort" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="In" connectedTo="5a47482f-6cdf-41b3-91b0-014578ee8143" id="c92afccb-09a2-4a99-ad98-3f18ca0122dd"/>
        <port xsi:type="esdl:OutPort" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="Out" id="3d19f298-ae58-4e56-92b6-e3ea896af6cb" connectedTo="4d708ad1-b369-47a3-abd3-26aa96173e71">
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="HeatIn.Q" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="2a21c30d-16ff-42e0-a900-b79ba2889794" measurement="Pipe_8fa5_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="Heat_flow" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="27eb3a70-ff8a-478d-9113-4113b29bccde" measurement="Pipe_8fa5_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="HeatIn.H" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="05fa8e67-f73c-41f9-b7aa-ea7aedd84329" measurement="Pipe_8fa5_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="PostProc.Velocity" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="fa54c1d1-c1a1-45de-b2ad-d92da4c693cd" measurement="Pipe_8fa5_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="SPEED" unit="METRE" perTimeUnit="SECOND"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lon="4.369031429215318" lat="51.99571274701101"/>
          <point xsi:type="esdl:Point" lon="4.364705085754395" lat="51.995081053536964"/>
        </geometry>
        <dataSource xsi:type="esdl:DataSource" attribution="https://www.logstor.com/media/6506/product-catalogue-uk-202003.pdf" name="Logstor Product Catalogue Version 2020.03"/>
      </asset>
      <area xsi:type="esdl:Area" name="Area_76a7" id="76a75122-8ea6-472d-8059-374830275d72">
        <KPIs xsi:type="esdl:KPIs" id="bd537423-03b4-414d-87aa-6c38d4a16648">
          <kpi xsi:type="esdl:DoubleKPI" name="Investment" value="15.0">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO" multiplier="MEGA"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Installation" value="1.0">
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
          <kpi xsi:type="esdl:DoubleKPI" name="Estimated energy from regional source(s) [%]" value="100.0">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PERCENT"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Total energy consumed [GWh]" value="7.4">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="ENERGY" unit="WATTHOUR" multiplier="GIGA"/>
          </kpi>
        </KPIs>
        <asset xsi:type="esdl:HeatingDemand" name="HeatingDemand_b0ff" id="b0ff0df6-4a47-43a5-a0a5-aa10975c0a5c" power="15000000.0">
          <costInformation xsi:type="esdl:CostInformation" id="cd676c1c-6224-406f-a864-3e7ff55265e0">
            <investmentCosts xsi:type="esdl:SingleValue" value="1000000.0" id="08f06cd1-471b-404a-8894-27b315775b59">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perUnit="WATT" physicalQuantity="COST" unit="EURO" id="f8e5bc00-6eae-47d6-b7ad-b9699879b14c" description="Cost in EUR/MW" perMultiplier="MEGA"/>
            </investmentCosts>
            <installationCosts xsi:type="esdl:SingleValue" value="1000000.0" id="829c1c62-4266-4560-ac77-b961b7a722cf">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO" description="Cost in EUR" id="1c0a9d42-bb5a-44c1-9ed6-824d7c82e932"/>
            </installationCosts>
          </costInformation>
          <port xsi:type="esdl:InPort" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="In" connectedTo="5169316d-ae93-4f04-9a34-7c776444b651" id="2c5a109b-0d98-47b6-acc1-05e1708f8b85">
            <profile xsi:type="esdl:InfluxDBProfile" multiplier="2.0" endDate="2019-12-31T22:00:00.000000+0000" filters="" port="443" field="demand4_MW" database="energy_profiles" startDate="2018-12-31T23:00:00.000000+0000" host="profiles.warmingup.info" id="b8150ac7-ea23-4be6-b5a3-b6974b8df58d" measurement="WarmingUp default profiles">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="e9405fc8-5e57-4df5-8584-4babee7cdf1b"/>
            </profile>
          </port>
          <port xsi:type="esdl:OutPort" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="Out" id="d7eb3623-7481-41bb-911d-2dd9bd67db39" connectedTo="5e2f4591-43f2-489f-8eb2-63105dbd0355">
            <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="HeatIn.Q" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="4cfddf14-e4ba-4719-a45d-4d8f08014b97" measurement="HeatingDemand_b0ff">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
            </profile>
            <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="Heat_flow" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="0881bcf9-5494-45db-8561-88ae3a7d1479" measurement="HeatingDemand_b0ff">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
            </profile>
            <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="HeatIn.H" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="2b68c51e-ffb6-41f4-b2cf-b5b72b01f80b" measurement="HeatingDemand_b0ff">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
            </profile>
          </port>
          <geometry xsi:type="esdl:Point" CRS="WGS84" lon="4.373545646667481" lat="52.00105253065436"/>
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
        <KPIs xsi:type="esdl:KPIs" id="320db745-6015-47c1-aaa6-f30a2b718998">
          <kpi xsi:type="esdl:DoubleKPI" name="Investment" value="15.0">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO" multiplier="MEGA"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Installation" value="1.0">
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
          <kpi xsi:type="esdl:DoubleKPI" name="Estimated energy from regional source(s) [%]" value="100.0">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PERCENT"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Total energy consumed [GWh]" value="7.4">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="ENERGY" unit="WATTHOUR" multiplier="GIGA"/>
          </kpi>
        </KPIs>
        <asset xsi:type="esdl:HeatingDemand" name="HeatingDemand_08fd" id="08fd3385-681a-4211-a083-51775cc99daa" power="15000000.0">
          <costInformation xsi:type="esdl:CostInformation" id="7eac6b5e-ba11-4ef1-b90e-599dd2690d20">
            <investmentCosts xsi:type="esdl:SingleValue" value="1000000.0" id="26aba0b6-a1a0-4610-97b3-be763548c669">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perUnit="WATT" physicalQuantity="COST" unit="EURO" id="424508c6-24aa-4a35-81e9-7ae198cbaeb8" description="Cost in EUR/MW" perMultiplier="MEGA"/>
            </investmentCosts>
            <installationCosts xsi:type="esdl:SingleValue" value="1000000.0" id="3b93383a-2ec4-4b35-9335-ebd91f0de600">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO" description="Cost in EUR" id="318840e0-6f48-46f4-b9c9-91315d7b45fd"/>
            </installationCosts>
          </costInformation>
          <port xsi:type="esdl:InPort" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="In" connectedTo="787c6ae3-96da-41e1-af86-6e68a1e28cb1" id="01caa60f-1549-4f3f-817e-e4e6807b2398">
            <profile xsi:type="esdl:InfluxDBProfile" multiplier="2.0" endDate="2019-12-31T22:00:00.000000+0000" filters="" port="443" field="demand4_MW" database="energy_profiles" startDate="2018-12-31T23:00:00.000000+0000" host="profiles.warmingup.info" id="ddd73fb0-d96f-4127-8d39-869455c77930" measurement="WarmingUp default profiles">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="e9405fc8-5e57-4df5-8584-4babee7cdf1b"/>
            </profile>
          </port>
          <port xsi:type="esdl:OutPort" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="Out" id="ca90e0a5-f866-4ec2-9b3b-07f054f1c2b2" connectedTo="35ddd90a-e45c-4afd-95b4-80ce6c927071">
            <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="HeatIn.Q" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="3fe49a79-7ab8-41ea-9c92-957bc7e2d1d2" measurement="HeatingDemand_08fd">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
            </profile>
            <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="Heat_flow" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="20939d61-1327-46a9-9110-4539fa123bf4" measurement="HeatingDemand_08fd">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
            </profile>
            <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="HeatIn.H" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="e42cf9fe-867c-4065-84c4-df3b50af0ae3" measurement="HeatingDemand_08fd">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
            </profile>
          </port>
          <geometry xsi:type="esdl:Point" CRS="WGS84" lon="4.373245239257813" lat="51.99648151568376"/>
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
        <KPIs xsi:type="esdl:KPIs" id="97c9eea9-3aa1-4eab-949d-e6a6279e2f6a">
          <kpi xsi:type="esdl:DoubleKPI" name="Investment" value="15.0">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO" multiplier="MEGA"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Installation" value="1.0">
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
          <kpi xsi:type="esdl:DoubleKPI" name="Estimated energy from regional source(s) [%]" value="100.0">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PERCENT"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Total energy consumed [GWh]" value="6.6">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="ENERGY" unit="WATTHOUR" multiplier="GIGA"/>
          </kpi>
        </KPIs>
        <asset xsi:type="esdl:HeatingDemand" name="HeatingDemand_8fbe" id="8fbe3d4e-5d5b-4489-9271-9969c2b9e589" power="15000000.0">
          <costInformation xsi:type="esdl:CostInformation" id="32e59a3e-fe5e-4201-bbd6-4f26dc4c961e">
            <investmentCosts xsi:type="esdl:SingleValue" value="1000000.0" id="3971c64d-50e4-47ec-a769-1f91935065d9">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perUnit="WATT" physicalQuantity="COST" unit="EURO" id="5a0e43e1-b141-4626-87eb-487cdb70e60e" description="Cost in EUR/MW" perMultiplier="MEGA"/>
            </investmentCosts>
            <installationCosts xsi:type="esdl:SingleValue" value="1000000.0" id="850701a9-ec9a-40c5-ab3e-e0dbe6165cb6">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO" description="Cost in EUR" id="b18cdc99-6303-404c-958a-1a4c079f842d"/>
            </installationCosts>
          </costInformation>
          <port xsi:type="esdl:InPort" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="In" connectedTo="13edd58c-4a04-4770-8aac-c6e8689acbba" id="23cdb929-5cfc-4b8d-963e-06b6e6cf3a5c">
            <profile xsi:type="esdl:InfluxDBProfile" multiplier="2.0" endDate="2019-12-31T22:00:00.000000+0000" filters="" port="443" field="demand3_MW" database="energy_profiles" startDate="2018-12-31T23:00:00.000000+0000" host="profiles.warmingup.info" id="5ae97047-619a-4119-84f3-848b36743e5d" measurement="WarmingUp default profiles">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="e9405fc8-5e57-4df5-8584-4babee7cdf1b"/>
            </profile>
          </port>
          <port xsi:type="esdl:OutPort" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="Out" id="0fd050fa-15ff-4f1e-b0bd-ef1823365eaa" connectedTo="6d1edc18-1962-4d3d-9882-ef27ae1702e8">
            <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="HeatIn.Q" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="1e944efe-684c-4c7a-952d-d5ed74f2a7f7" measurement="HeatingDemand_8fbe">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
            </profile>
            <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="Heat_flow" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="e2015811-ac63-419e-b8c0-ffd4ce9f426f" measurement="HeatingDemand_8fbe">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
            </profile>
            <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="HeatIn.H" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="fc204f83-4c17-4477-9e9c-fb1a1994b1c6" measurement="HeatingDemand_8fbe">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
            </profile>
          </port>
          <geometry xsi:type="esdl:Point" CRS="WGS84" lon="4.379038810729981" lat="51.99069441691871"/>
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
      <carrier xsi:type="esdl:HeatCommodity" id="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="Primary" supplyTemperature="80.0"/>
      <carrier xsi:type="esdl:HeatCommodity" name="Primary_ret" id="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" returnTemperature="40.0"/>
    </carriers>
  </energySystemInformation>
</esdl:EnergySystem>
