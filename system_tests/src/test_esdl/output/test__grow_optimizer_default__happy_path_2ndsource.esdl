<?xml version='1.0' encoding='UTF-8'?>
<esdl:EnergySystem xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:esdl="http://www.tno.nl/esdl" description="" esdlVersion="v2207" name="PoC Tutorial_SmartControlOptimized_GrowOptimized" id="06bbf919-9d66-4340-98ec-2a85c17b17aa" version="13">
  <energySystemInformation xsi:type="esdl:EnergySystemInformation" id="5fa7e6e3-5701-48a7-bbbd-cad59a46f6c5">
    <carriers xsi:type="esdl:Carriers" id="42a694c6-9a1b-4cc7-bbae-0b44725f9434">
      <carrier xsi:type="esdl:HeatCommodity" id="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" supplyTemperature="80.0" name="Primary"/>
      <carrier xsi:type="esdl:HeatCommodity" id="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" returnTemperature="40.0" name="Primary_ret"/>
    </carriers>
    <quantityAndUnits xsi:type="esdl:QuantityAndUnits" id="38f7850a-2090-411e-a15a-84b1d7b78362">
      <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT" id="e9405fc8-5e57-4df5-8584-4babee7cdf1b" description="Power in MW" multiplier="MEGA"/>
    </quantityAndUnits>
  </energySystemInformation>
  <instance xsi:type="esdl:Instance" name="Untitled instance" id="9af52a01-24e2-4bbe-a7b8-f868161e6ca3">
    <area xsi:type="esdl:Area" name="Untitled area" id="9edf5aa3-3855-4dac-b6f5-01c2edf1a43a">
      <KPIs xsi:type="esdl:KPIs" id="4742e830-5bbf-4b22-8b55-b40cea4516fe">
        <kpi xsi:type="esdl:DistributionKPI" name="High level cost breakdown [EUR]">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="EURO" physicalQuantity="COST"/>
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" value="72155637.64727625" label="CAPEX"/>
            <stringItem xsi:type="esdl:StringItem" value="3635738.0807508267" label="OPEX"/>
          </distribution>
        </kpi>
        <kpi xsi:type="esdl:DistributionKPI" name="Overall cost breakdown [EUR]">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="EURO" physicalQuantity="COST"/>
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" value="13000000.0" label="Installation"/>
            <stringItem xsi:type="esdl:StringItem" value="59155637.64727625" label="Investment"/>
            <stringItem xsi:type="esdl:StringItem" value="1197440.1930403279" label="Variable OPEX"/>
            <stringItem xsi:type="esdl:StringItem" value="2438297.887710499" label="Fixed OPEX"/>
          </distribution>
        </kpi>
        <kpi xsi:type="esdl:DistributionKPI" name="CAPEX breakdown [EUR]">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="EURO" physicalQuantity="COST"/>
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" value="16095744.719276248" label="ResidualHeatSource"/>
            <stringItem xsi:type="esdl:StringItem" value="8059892.928000001" label="Pipe"/>
            <stringItem xsi:type="esdl:StringItem" value="48000000.0" label="HeatingDemand"/>
          </distribution>
        </kpi>
        <kpi xsi:type="esdl:DistributionKPI" name="OPEX breakdown [EUR]">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="EURO" physicalQuantity="COST"/>
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" value="3635738.0807508267" label="ResidualHeatSource"/>
          </distribution>
        </kpi>
        <kpi xsi:type="esdl:DistributionKPI" name="Energy production [Wh]">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="WATTHOUR" physicalQuantity="ENERGY"/>
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" value="11974401930.403276" label="ResidualHeatSource_72d7"/>
          </distribution>
        </kpi>
        <kpi xsi:type="esdl:DistributionKPI" name="Area_76a7: Asset cost breakdown [EUR]">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="EURO" physicalQuantity="COST"/>
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" value="1000000.0" label="Installation"/>
            <stringItem xsi:type="esdl:StringItem" value="15000000.0" label="Investment"/>
          </distribution>
        </kpi>
        <kpi xsi:type="esdl:DistributionKPI" name="Area_9d0f: Asset cost breakdown [EUR]">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="EURO" physicalQuantity="COST"/>
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" value="1000000.0" label="Installation"/>
            <stringItem xsi:type="esdl:StringItem" value="15000000.0" label="Investment"/>
          </distribution>
        </kpi>
        <kpi xsi:type="esdl:DistributionKPI" name="Area_a58a: Asset cost breakdown [EUR]">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="EURO" physicalQuantity="COST"/>
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" value="1000000.0" label="Installation"/>
            <stringItem xsi:type="esdl:StringItem" value="15000000.0" label="Investment"/>
          </distribution>
        </kpi>
      </KPIs>
      <asset xsi:type="esdl:ResidualHeatSource" id="72d74fb5-134f-4bfb-829e-220ab76a8a7b" power="4063829.812850832" name="ResidualHeatSource_72d7">
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
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="EURO" description="Cost in EUR" id="4fccbb6b-2e41-46d9-a92c-f94da7c3aca7" physicalQuantity="COST"/>
          </marginalCosts>
          <installationCosts xsi:type="esdl:SingleValue" value="10000000.0" id="12c24715-08dc-4b61-ae15-76541704c83a">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="EURO" description="Cost in EUR" id="89b04c83-eb32-49a3-adc4-492a719221d3" physicalQuantity="COST"/>
          </installationCosts>
        </costInformation>
        <port xsi:type="esdl:OutPort" id="d890f8aa-9b94-493d-b017-bd7cebaf8c77" connectedTo="07c2f88e-85be-4b8b-a72e-14364a3810c9" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="Out">
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" field="HeatIn.Q" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="a6455c0a-260c-453d-b290-93c6c40cad18" measurement="ResidualHeatSource_72d7" endDate="2019-12-31T23:00:00.000000+0000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="CUBIC_METRE" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" field="Heat_flow" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="9866ca38-63fc-4064-9acf-52384085fba7" measurement="ResidualHeatSource_72d7" endDate="2019-12-31T23:00:00.000000+0000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="WATT" physicalQuantity="POWER"/>
          </profile>
        </port>
        <port xsi:type="esdl:InPort" connectedTo="c0a27794-98e2-4119-a363-cec4f0b525cd" id="4d6c18cd-cc52-443d-8e53-96cd188dd1a8" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="In"/>
        <geometry xsi:type="esdl:Point" lat="52.00467202060717" lon="4.372987747192384" CRS="WGS84"/>
      </asset>
      <asset xsi:type="esdl:Pipe" related="Pipe1_ret" name="Pipe1" id="Pipe1" outerDiameter="0.25" diameter="DN150" innerDiameter="0.1603" length="818.07">
        <costInformation xsi:type="esdl:CostInformation" id="4a3d48d9-74bb-4407-b249-9e2af4d1037c">
          <investmentCosts xsi:type="esdl:SingleValue" value="1126.4" id="2ab2214c-8d42-4b74-877f-7fb97f6eab86" name="Combined investment and installation costs">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perUnit="METRE" physicalQuantity="COST" unit="EURO" id="9169bd50-197f-4d6b-aaac-b383a59c815d" description="Costs in EUR/m"/>
          </investmentCosts>
        </costInformation>
        <material xsi:type="esdl:CompoundMatter" compoundType="LAYERED">
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.004">
            <matter xsi:type="esdl:Material" id="fa85538e-ebfa-4bce-8386-04980e793e18" thermalConductivity="52.15" name="steel"/>
          </component>
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.03725">
            <matter xsi:type="esdl:Material" id="3bafa031-f40f-42fc-b409-e35fffe5f457" thermalConductivity="0.027" name="PUR"/>
          </component>
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.0036">
            <matter xsi:type="esdl:Material" id="893337e3-58f1-4fb4-8c25-68d71b11fb71" thermalConductivity="0.4" name="HDPE"/>
          </component>
        </material>
        <port xsi:type="esdl:InPort" connectedTo="d890f8aa-9b94-493d-b017-bd7cebaf8c77" id="07c2f88e-85be-4b8b-a72e-14364a3810c9" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="In"/>
        <port xsi:type="esdl:OutPort" id="fc2801d0-215b-4d2b-9846-ee4918b87e21" connectedTo="d149871b-d76a-4cc3-8922-c8d99205f47e" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="Out">
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" field="HeatIn.Q" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="92cca058-5b49-46d2-a0f8-9747612d7f03" measurement="Pipe1" endDate="2019-12-31T23:00:00.000000+0000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="CUBIC_METRE" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" field="Heat_flow" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="3fd9ed6c-d5a2-4781-8737-7d52b5205759" measurement="Pipe1" endDate="2019-12-31T23:00:00.000000+0000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="WATT" physicalQuantity="POWER"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" field="PostProc.Velocity" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="5a83fca3-66b1-4b67-aa97-706040bf7f6f" measurement="Pipe1" endDate="2019-12-31T23:00:00.000000+0000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="METRE" perTimeUnit="SECOND" physicalQuantity="SPEED"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" lat="52.00467202060717" lon="4.372987747192384"/>
          <point xsi:type="esdl:Point" lat="52.00210934629504" lon="4.365863800048829"/>
          <point xsi:type="esdl:Point" lat="51.99996926872789" lon="4.367129802703858"/>
        </geometry>
        <dataSource xsi:type="esdl:DataSource" attribution="https://www.logstor.com/media/6506/product-catalogue-uk-202003.pdf" name="Logstor Product Catalogue Version 2020.03"/>
      </asset>
      <asset xsi:type="esdl:Joint" id="a04cb927-426d-4016-a084-356002a85d6c" name="Joint_a04c">
        <port xsi:type="esdl:InPort" connectedTo="fc2801d0-215b-4d2b-9846-ee4918b87e21" id="d149871b-d76a-4cc3-8922-c8d99205f47e" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="In"/>
        <port xsi:type="esdl:OutPort" id="3535f436-1270-4b1b-a326-41d69cd6e330" connectedTo="863d2ff2-7a68-4bfb-8aa5-dab741b72b25 7f18f0b7-fcf3-4d83-8a65-79cbd3273ea7" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="Out"/>
        <geometry xsi:type="esdl:Point" lat="51.99996926872789" lon="4.367129802703858"/>
      </asset>
      <asset xsi:type="esdl:Pipe" related="Pipe2_ret" name="Pipe2" id="Pipe2" outerDiameter="0.56" diameter="DN400" innerDiameter="0.3938" length="517.54">
        <costInformation xsi:type="esdl:CostInformation" id="4a3d48d9-74bb-4407-b249-9e2af4d1037c">
          <investmentCosts xsi:type="esdl:SingleValue" value="2840.6" id="2ab2214c-8d42-4b74-877f-7fb97f6eab86" name="Combined investment and installation costs">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perUnit="METRE" physicalQuantity="COST" unit="EURO" id="9169bd50-197f-4d6b-aaac-b383a59c815d" description="Costs in EUR/m"/>
          </investmentCosts>
        </costInformation>
        <material xsi:type="esdl:CompoundMatter" compoundType="LAYERED">
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.0063">
            <matter xsi:type="esdl:Material" id="74d84321-1767-4cec-b6e7-b90c06020400" thermalConductivity="52.15" name="steel"/>
          </component>
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.0711">
            <matter xsi:type="esdl:Material" id="95012cd9-7648-4df5-8c83-74dc73bc16ba" thermalConductivity="0.027" name="PUR"/>
          </component>
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.0057">
            <matter xsi:type="esdl:Material" id="1392ee3f-34f6-4c8e-ab0e-635b9d7ec9be" thermalConductivity="0.4" name="HDPE"/>
          </component>
        </material>
        <port xsi:type="esdl:InPort" connectedTo="3535f436-1270-4b1b-a326-41d69cd6e330" id="863d2ff2-7a68-4bfb-8aa5-dab741b72b25" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="In"/>
        <port xsi:type="esdl:OutPort" id="8c38fc93-ed85-42ef-9be6-87d47c416e90" connectedTo="4d629e6e-5db4-4a8f-9945-934a24ede11a" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="Out">
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" field="HeatIn.Q" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="adae1c82-757a-493e-97ad-dc35ea1b0c34" measurement="Pipe2" endDate="2019-12-31T23:00:00.000000+0000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="CUBIC_METRE" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" field="Heat_flow" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="1e84bdd1-67d3-43b2-8565-f2fad61c19b7" measurement="Pipe2" endDate="2019-12-31T23:00:00.000000+0000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="WATT" physicalQuantity="POWER"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" field="PostProc.Velocity" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="56c51498-348c-4be9-8fc7-cbf4dc314fd8" measurement="Pipe2" endDate="2019-12-31T23:00:00.000000+0000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="METRE" perTimeUnit="SECOND" physicalQuantity="SPEED"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" lat="51.99996926872789" lon="4.367129802703858"/>
          <point xsi:type="esdl:Point" lat="51.995622746921015" lon="4.36983346939087"/>
        </geometry>
        <dataSource xsi:type="esdl:DataSource" attribution="https://www.logstor.com/media/6506/product-catalogue-uk-202003.pdf" name="Logstor Product Catalogue Version 2020.03"/>
      </asset>
      <asset xsi:type="esdl:Pipe" related="Pipe3_ret" name="Pipe3" id="Pipe3" outerDiameter="0.56" diameter="DN400" innerDiameter="0.3938" length="1182.23">
        <costInformation xsi:type="esdl:CostInformation" id="4a3d48d9-74bb-4407-b249-9e2af4d1037c">
          <investmentCosts xsi:type="esdl:SingleValue" value="2840.6" id="2ab2214c-8d42-4b74-877f-7fb97f6eab86" name="Combined investment and installation costs">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perUnit="METRE" physicalQuantity="COST" unit="EURO" id="9169bd50-197f-4d6b-aaac-b383a59c815d" description="Costs in EUR/m"/>
          </investmentCosts>
        </costInformation>
        <material xsi:type="esdl:CompoundMatter" compoundType="LAYERED">
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.0063">
            <matter xsi:type="esdl:Material" id="74d84321-1767-4cec-b6e7-b90c06020400" thermalConductivity="52.15" name="steel"/>
          </component>
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.0711">
            <matter xsi:type="esdl:Material" id="95012cd9-7648-4df5-8c83-74dc73bc16ba" thermalConductivity="0.027" name="PUR"/>
          </component>
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.0057">
            <matter xsi:type="esdl:Material" id="1392ee3f-34f6-4c8e-ab0e-635b9d7ec9be" thermalConductivity="0.4" name="HDPE"/>
          </component>
        </material>
        <port xsi:type="esdl:InPort" connectedTo="a42acf83-361d-4d4d-8001-8617daad939a" id="e44060e9-8b0e-41e5-ae46-ce074c891c15" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="In"/>
        <port xsi:type="esdl:OutPort" id="13edd58c-4a04-4770-8aac-c6e8689acbba" connectedTo="23cdb929-5cfc-4b8d-963e-06b6e6cf3a5c" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="Out">
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" field="HeatIn.Q" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="aa2612ee-66be-4dad-8346-363cda16cfc0" measurement="Pipe3" endDate="2019-12-31T23:00:00.000000+0000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="CUBIC_METRE" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" field="Heat_flow" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="b08bc3ae-4a8f-4457-a489-504170b2591f" measurement="Pipe3" endDate="2019-12-31T23:00:00.000000+0000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="WATT" physicalQuantity="POWER"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" field="PostProc.Velocity" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="6f35d2d4-e2de-4cc9-a55d-d4071ba0bff7" measurement="Pipe3" endDate="2019-12-31T23:00:00.000000+0000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="METRE" perTimeUnit="SECOND" physicalQuantity="SPEED"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" lat="51.995622746921015" lon="4.36983346939087"/>
          <point xsi:type="esdl:Point" lat="51.989029496545015" lon="4.373888969421388"/>
          <point xsi:type="esdl:Point" lat="51.99069441691871" lon="4.379038810729981"/>
        </geometry>
        <dataSource xsi:type="esdl:DataSource" attribution="https://www.logstor.com/media/6506/product-catalogue-uk-202003.pdf" name="Logstor Product Catalogue Version 2020.03"/>
      </asset>
      <asset xsi:type="esdl:Joint" id="95caf7c7-e89f-4378-96f2-f904f9255c83" name="Joint_95ca">
        <port xsi:type="esdl:InPort" connectedTo="8c38fc93-ed85-42ef-9be6-87d47c416e90" id="4d629e6e-5db4-4a8f-9945-934a24ede11a" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="In"/>
        <port xsi:type="esdl:OutPort" id="a42acf83-361d-4d4d-8001-8617daad939a" connectedTo="e44060e9-8b0e-41e5-ae46-ce074c891c15 20165ec3-cf86-41e4-976f-079ba0ca5be4" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="Out"/>
        <geometry xsi:type="esdl:Point" lat="51.995622746921015" lon="4.36983346939087"/>
      </asset>
      <asset xsi:type="esdl:Pipe" related="Pipe4_ret" name="Pipe4" id="Pipe4" outerDiameter="0.45" diameter="DN300" innerDiameter="0.3127" length="455.4">
        <costInformation xsi:type="esdl:CostInformation" id="384df56d-e3f0-4794-a0e2-bc0c71482e45">
          <investmentCosts xsi:type="esdl:SingleValue" value="1962.1" id="1e93bdda-8a74-42d5-960d-d64e4dff2025" name="Combined investment and installation costs">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perUnit="METRE" physicalQuantity="COST" unit="EURO" id="983f0959-8566-43ce-a380-782d29406ed3" description="Costs in EUR/m"/>
          </investmentCosts>
        </costInformation>
        <material xsi:type="esdl:CompoundMatter" compoundType="LAYERED">
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.0056">
            <matter xsi:type="esdl:Material" id="f4cee538-cc3b-4809-bd66-979f2ce9649b" thermalConductivity="52.15" name="steel"/>
          </component>
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.05785">
            <matter xsi:type="esdl:Material" id="e4c0350c-cd79-45b4-a45c-6259c750b478" thermalConductivity="0.027" name="PUR"/>
          </component>
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.0052">
            <matter xsi:type="esdl:Material" id="9a97f588-10fe-4a34-b0f2-277862151763" thermalConductivity="0.4" name="HDPE"/>
          </component>
        </material>
        <port xsi:type="esdl:InPort" connectedTo="3535f436-1270-4b1b-a326-41d69cd6e330" id="7f18f0b7-fcf3-4d83-8a65-79cbd3273ea7" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="In"/>
        <port xsi:type="esdl:OutPort" id="5169316d-ae93-4f04-9a34-7c776444b651" connectedTo="2c5a109b-0d98-47b6-acc1-05e1708f8b85" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="Out">
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" field="HeatIn.Q" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="e5fd033b-c85b-4a92-a0e9-60c0251c135f" measurement="Pipe4" endDate="2019-12-31T23:00:00.000000+0000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="CUBIC_METRE" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" field="Heat_flow" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="f94de4b7-6a20-4095-afa1-7c15793163ea" measurement="Pipe4" endDate="2019-12-31T23:00:00.000000+0000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="WATT" physicalQuantity="POWER"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" field="PostProc.Velocity" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="c1ecfb6c-8bf7-4faa-96ea-a5237991f15c" measurement="Pipe4" endDate="2019-12-31T23:00:00.000000+0000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="METRE" perTimeUnit="SECOND" physicalQuantity="SPEED"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="51.99996926872789" lon="4.367129802703858"/>
          <point xsi:type="esdl:Point" lat="52.00105253065436" lon="4.373545646667481"/>
        </geometry>
        <dataSource xsi:type="esdl:DataSource" attribution="https://www.logstor.com/media/6506/product-catalogue-uk-202003.pdf" name="Logstor Product Catalogue Version 2020.03"/>
      </asset>
      <asset xsi:type="esdl:Pipe" related="Pipe5_ret" name="Pipe5" id="Pipe5" outerDiameter="0.45" diameter="DN300" innerDiameter="0.3127" length="252.3">
        <costInformation xsi:type="esdl:CostInformation" id="4c8d9c8f-7e99-4402-8f66-d413e73db121">
          <investmentCosts xsi:type="esdl:SingleValue" value="1962.1" id="1e93bdda-8a74-42d5-960d-d64e4dff2025" name="Combined investment and installation costs">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perUnit="METRE" physicalQuantity="COST" unit="EURO" id="983f0959-8566-43ce-a380-782d29406ed3" description="Costs in EUR/m"/>
          </investmentCosts>
        </costInformation>
        <material xsi:type="esdl:CompoundMatter" compoundType="LAYERED">
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.0056">
            <matter xsi:type="esdl:Material" id="f4cee538-cc3b-4809-bd66-979f2ce9649b" thermalConductivity="52.15" name="steel"/>
          </component>
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.05785">
            <matter xsi:type="esdl:Material" id="e4c0350c-cd79-45b4-a45c-6259c750b478" thermalConductivity="0.027" name="PUR"/>
          </component>
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.0052">
            <matter xsi:type="esdl:Material" id="9a97f588-10fe-4a34-b0f2-277862151763" thermalConductivity="0.4" name="HDPE"/>
          </component>
        </material>
        <port xsi:type="esdl:InPort" connectedTo="a42acf83-361d-4d4d-8001-8617daad939a" id="20165ec3-cf86-41e4-976f-079ba0ca5be4" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="In"/>
        <port xsi:type="esdl:OutPort" id="787c6ae3-96da-41e1-af86-6e68a1e28cb1" connectedTo="01caa60f-1549-4f3f-817e-e4e6807b2398" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="Out">
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" field="HeatIn.Q" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="c50405c3-29cc-4236-ac14-feea8c67a660" measurement="Pipe5" endDate="2019-12-31T23:00:00.000000+0000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="CUBIC_METRE" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" field="Heat_flow" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="1bd152d4-92e9-439f-ba6e-fae5ae679ba0" measurement="Pipe5" endDate="2019-12-31T23:00:00.000000+0000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="WATT" physicalQuantity="POWER"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" field="PostProc.Velocity" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="f47c83c2-b7ce-4f14-9711-4b58487e7c47" measurement="Pipe5" endDate="2019-12-31T23:00:00.000000+0000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="METRE" perTimeUnit="SECOND" physicalQuantity="SPEED"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="51.995622746921015" lon="4.36983346939087"/>
          <point xsi:type="esdl:Point" lat="51.99648151568376" lon="4.373245239257813"/>
        </geometry>
        <dataSource xsi:type="esdl:DataSource" attribution="https://www.logstor.com/media/6506/product-catalogue-uk-202003.pdf" name="Logstor Product Catalogue Version 2020.03"/>
      </asset>
      <asset xsi:type="esdl:Joint" id="076ba789-3040-4952-9b2b-fbf9ed05e6bd" name="Joint_a04c_ret">
        <port xsi:type="esdl:InPort" connectedTo="c5df4e61-6603-4315-a45a-196903690d9e 23d8b6bb-9480-4f02-ba7c-d00de8ff206e" id="1ba08c64-4c54-4f23-93bf-2b2f6c04229d" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="ret_port"/>
        <port xsi:type="esdl:OutPort" id="044ef084-2a9e-4356-bac2-207f5361d4ce" connectedTo="2c3c73cb-d282-4c97-a060-922c91c50180" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="ret_port"/>
        <geometry xsi:type="esdl:Point" lat="52.000059268817886" lon="4.3663488762941665" CRS="WGS84"/>
      </asset>
      <asset xsi:type="esdl:Joint" id="b4a5be45-3352-4837-94d6-b110aa842da6" name="Joint_95ca_ret">
        <port xsi:type="esdl:InPort" connectedTo="59b53a77-a253-4a96-81ef-84e719a1f518 6f9268a0-1fd9-42f6-8821-2d7d4a6e5618" id="6b4d9bba-484b-46aa-bfe6-895d491b6747" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="ret_port"/>
        <port xsi:type="esdl:OutPort" id="5a47482f-6cdf-41b3-91b0-014578ee8143" connectedTo="da70a1aa-53c4-496e-ba63-2c04674b8c84" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="ret_port"/>
        <geometry xsi:type="esdl:Point" lat="51.99571274701101" lon="4.369031429215318" CRS="WGS84"/>
      </asset>
      <asset xsi:type="esdl:Pipe" related="Pipe1" name="Pipe1_ret" id="Pipe1_ret" outerDiameter="0.25" diameter="DN150" innerDiameter="0.1603" length="818.07">
        <port xsi:type="esdl:InPort" connectedTo="044ef084-2a9e-4356-bac2-207f5361d4ce" id="2c3c73cb-d282-4c97-a060-922c91c50180" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="In_ret"/>
        <port xsi:type="esdl:OutPort" id="c0a27794-98e2-4119-a363-cec4f0b525cd" connectedTo="4d6c18cd-cc52-443d-8e53-96cd188dd1a8" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="Out_ret">
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" field="HeatIn.Q" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="a02bed77-0739-44b4-92d4-9f88beb7b0b3" measurement="Pipe1_ret" endDate="2019-12-31T23:00:00.000000+0000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="CUBIC_METRE" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" field="Heat_flow" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="07bf9dc0-446a-483f-a419-45bd59fbccde" measurement="Pipe1_ret" endDate="2019-12-31T23:00:00.000000+0000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="WATT" physicalQuantity="POWER"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" field="PostProc.Velocity" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="20fff7c5-4a9a-4d11-9a99-ff8a0a00b9af" measurement="Pipe1_ret" endDate="2019-12-31T23:00:00.000000+0000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="METRE" perTimeUnit="SECOND" physicalQuantity="SPEED"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" lat="52.000059268817886" lon="4.3663488762941665" CRS="WGS84"/>
          <point xsi:type="esdl:Point" lat="52.00219934638504" lon="4.365092860885141" CRS="WGS84"/>
          <point xsi:type="esdl:Point" lat="52.004762020697164" lon="4.372228431895539" CRS="WGS84"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:Pipe" related="Pipe2" name="Pipe2_ret" id="Pipe2_ret" outerDiameter="0.56" diameter="DN400" innerDiameter="0.3938" length="517.54">
        <port xsi:type="esdl:InPort" connectedTo="5a47482f-6cdf-41b3-91b0-014578ee8143" id="da70a1aa-53c4-496e-ba63-2c04674b8c84" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="In_ret"/>
        <port xsi:type="esdl:OutPort" id="c5df4e61-6603-4315-a45a-196903690d9e" connectedTo="1ba08c64-4c54-4f23-93bf-2b2f6c04229d" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="Out_ret">
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" field="HeatIn.Q" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="e98b3b9b-3fc2-434b-bb38-0017b4ff6713" measurement="Pipe2_ret" endDate="2019-12-31T23:00:00.000000+0000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="CUBIC_METRE" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" field="Heat_flow" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="308cfcad-2edf-4312-89ba-af8a2e9ab43c" measurement="Pipe2_ret" endDate="2019-12-31T23:00:00.000000+0000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="WATT" physicalQuantity="POWER"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" field="PostProc.Velocity" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="137ae97c-b403-4197-a8a2-168380c84da9" measurement="Pipe2_ret" endDate="2019-12-31T23:00:00.000000+0000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="METRE" perTimeUnit="SECOND" physicalQuantity="SPEED"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" lat="51.99571274701101" lon="4.369031429215318" CRS="WGS84"/>
          <point xsi:type="esdl:Point" lat="52.000059268817886" lon="4.3663488762941665" CRS="WGS84"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:Pipe" related="Pipe3" name="Pipe3_ret" id="Pipe3_ret" outerDiameter="0.56" diameter="DN400" innerDiameter="0.3938" length="1182.23">
        <port xsi:type="esdl:InPort" connectedTo="0fd050fa-15ff-4f1e-b0bd-ef1823365eaa" id="6d1edc18-1962-4d3d-9882-ef27ae1702e8" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="In_ret"/>
        <port xsi:type="esdl:OutPort" id="59b53a77-a253-4a96-81ef-84e719a1f518" connectedTo="6b4d9bba-484b-46aa-bfe6-895d491b6747" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="Out_ret">
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" field="HeatIn.Q" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="53553dfc-cdcb-417b-8d80-81ba62eb55fa" measurement="Pipe3_ret" endDate="2019-12-31T23:00:00.000000+0000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="CUBIC_METRE" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" field="Heat_flow" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="26ce3cf5-fc7e-449c-b571-2431c1c08957" measurement="Pipe3_ret" endDate="2019-12-31T23:00:00.000000+0000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="WATT" physicalQuantity="POWER"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" field="PostProc.Velocity" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="e2737109-8f84-4e1b-b21e-1dd8c071d49a" measurement="Pipe3_ret" endDate="2019-12-31T23:00:00.000000+0000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="METRE" perTimeUnit="SECOND" physicalQuantity="SPEED"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" lat="51.990784417008705" lon="4.378211386257638" CRS="WGS84"/>
          <point xsi:type="esdl:Point" lat="51.98911949663501" lon="4.37305259776345" CRS="WGS84"/>
          <point xsi:type="esdl:Point" lat="51.99571274701101" lon="4.369031429215318" CRS="WGS84"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:Pipe" related="Pipe4" name="Pipe4_ret" id="Pipe4_ret" outerDiameter="0.45" diameter="DN300" innerDiameter="0.3127" length="455.4">
        <port xsi:type="esdl:InPort" connectedTo="d7eb3623-7481-41bb-911d-2dd9bd67db39" id="5e2f4591-43f2-489f-8eb2-63105dbd0355" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="In_ret"/>
        <port xsi:type="esdl:OutPort" id="23d8b6bb-9480-4f02-ba7c-d00de8ff206e" connectedTo="1ba08c64-4c54-4f23-93bf-2b2f6c04229d" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="Out_ret">
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" field="HeatIn.Q" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="92efee94-ea6f-4e9b-a84f-8db3944c5a88" measurement="Pipe4_ret" endDate="2019-12-31T23:00:00.000000+0000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="CUBIC_METRE" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" field="Heat_flow" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="debf38c3-9038-46b4-80c8-a3d0629ac736" measurement="Pipe4_ret" endDate="2019-12-31T23:00:00.000000+0000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="WATT" physicalQuantity="POWER"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" field="PostProc.Velocity" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="673a0bd9-f329-4c91-b3a0-3ed4ef4917da" measurement="Pipe4_ret" endDate="2019-12-31T23:00:00.000000+0000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="METRE" perTimeUnit="SECOND" physicalQuantity="SPEED"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" lat="52.00114253074436" lon="4.372769808163894" CRS="WGS84"/>
          <point xsi:type="esdl:Point" lat="52.000059268817886" lon="4.3663488762941665" CRS="WGS84"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:Pipe" related="Pipe5" name="Pipe5_ret" id="Pipe5_ret" outerDiameter="0.45" diameter="DN300" innerDiameter="0.3127" length="252.3">
        <port xsi:type="esdl:InPort" connectedTo="ca90e0a5-f866-4ec2-9b3b-07f054f1c2b2" id="35ddd90a-e45c-4afd-95b4-80ce6c927071" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="In_ret"/>
        <port xsi:type="esdl:OutPort" id="6f9268a0-1fd9-42f6-8821-2d7d4a6e5618" connectedTo="6b4d9bba-484b-46aa-bfe6-895d491b6747" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="Out_ret">
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" field="HeatIn.Q" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="aa589bda-c7d6-489f-90cb-f9908baf1e4f" measurement="Pipe5_ret" endDate="2019-12-31T23:00:00.000000+0000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="CUBIC_METRE" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" field="Heat_flow" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="c88b7b98-0a8c-4b11-970f-b1357af36c4f" measurement="Pipe5_ret" endDate="2019-12-31T23:00:00.000000+0000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="WATT" physicalQuantity="POWER"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" field="PostProc.Velocity" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="22fdfb92-d0a8-4cc7-9ac1-f81b0eceedca" measurement="Pipe5_ret" endDate="2019-12-31T23:00:00.000000+0000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="METRE" perTimeUnit="SECOND" physicalQuantity="SPEED"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" lat="51.99657151577376" lon="4.372447461880088" CRS="WGS84"/>
          <point xsi:type="esdl:Point" lat="51.99571274701101" lon="4.369031429215318" CRS="WGS84"/>
        </geometry>
      </asset>
      <area xsi:type="esdl:Area" name="Area_76a7" id="76a75122-8ea6-472d-8059-374830275d72">
        <KPIs xsi:type="esdl:KPIs" id="5557e4eb-714d-4f55-86bc-9a2bf122ae28">
          <kpi xsi:type="esdl:DoubleKPI" value="15.0" name="Investment">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="EURO" multiplier="MEGA" physicalQuantity="COST"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="1.0" name="Installation">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="EURO" multiplier="MEGA" physicalQuantity="COST"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Variable OPEX">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="EURO" multiplier="MEGA" physicalQuantity="COST"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Fixed OPEX">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="EURO" multiplier="MEGA" physicalQuantity="COST"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Estimated energy from local source(s) [%]">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PERCENT"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="100.0" name="Estimated energy from regional source(s) [%]">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PERCENT"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="3.7" name="Total energy consumed [GWh]">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="WATTHOUR" multiplier="GIGA" physicalQuantity="ENERGY"/>
          </kpi>
        </KPIs>
        <asset xsi:type="esdl:HeatingDemand" id="b0ff0df6-4a47-43a5-a0a5-aa10975c0a5c" power="15000000.0" name="HeatingDemand_b0ff">
          <costInformation xsi:type="esdl:CostInformation" id="cd676c1c-6224-406f-a864-3e7ff55265e0">
            <investmentCosts xsi:type="esdl:SingleValue" value="1000000.0" id="08f06cd1-471b-404a-8894-27b315775b59">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perUnit="WATT" physicalQuantity="COST" unit="EURO" id="f8e5bc00-6eae-47d6-b7ad-b9699879b14c" description="Cost in EUR/MW" perMultiplier="MEGA"/>
            </investmentCosts>
            <installationCosts xsi:type="esdl:SingleValue" value="1000000.0" id="829c1c62-4266-4560-ac77-b961b7a722cf">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="EURO" description="Cost in EUR" id="1c0a9d42-bb5a-44c1-9ed6-824d7c82e932" physicalQuantity="COST"/>
            </installationCosts>
          </costInformation>
          <port xsi:type="esdl:InPort" connectedTo="5169316d-ae93-4f04-9a34-7c776444b651" id="2c5a109b-0d98-47b6-acc1-05e1708f8b85" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="In">
            <profile xsi:type="esdl:InfluxDBProfile" port="443" field="demand4_MW" database="energy_profiles" startDate="2018-12-31T23:00:00.000000+0000" host="profiles.warmingup.info" id="b8150ac7-ea23-4be6-b5a3-b6974b8df58d" measurement="WarmingUp default profiles" endDate="2019-12-31T22:00:00.000000+0000" filters="">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="e9405fc8-5e57-4df5-8584-4babee7cdf1b"/>
            </profile>
          </port>
          <port xsi:type="esdl:OutPort" id="d7eb3623-7481-41bb-911d-2dd9bd67db39" connectedTo="5e2f4591-43f2-489f-8eb2-63105dbd0355" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="Out">
            <profile xsi:type="esdl:InfluxDBProfile" port="8096" field="HeatIn.Q" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="504ff092-1329-4b46-958e-9a39d8fa8f50" measurement="HeatingDemand_b0ff" endDate="2019-12-31T23:00:00.000000+0000">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="CUBIC_METRE" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
            </profile>
            <profile xsi:type="esdl:InfluxDBProfile" port="8096" field="Heat_flow" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="1ad8e60b-76d6-446d-8ce1-e1b0be6bd919" measurement="HeatingDemand_b0ff" endDate="2019-12-31T23:00:00.000000+0000">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="WATT" physicalQuantity="POWER"/>
            </profile>
          </port>
          <geometry xsi:type="esdl:Point" lat="52.00105253065436" lon="4.373545646667481" CRS="WGS84"/>
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
      </area>
      <area xsi:type="esdl:Area" name="Area_9d0f" id="9d0fd9ed-662c-42ec-a417-7e789737084c">
        <KPIs xsi:type="esdl:KPIs" id="7b13d03b-ab71-435e-9970-94fa1100c905">
          <kpi xsi:type="esdl:DoubleKPI" value="15.0" name="Investment">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="EURO" multiplier="MEGA" physicalQuantity="COST"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="1.0" name="Installation">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="EURO" multiplier="MEGA" physicalQuantity="COST"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Variable OPEX">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="EURO" multiplier="MEGA" physicalQuantity="COST"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Fixed OPEX">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="EURO" multiplier="MEGA" physicalQuantity="COST"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Estimated energy from local source(s) [%]">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PERCENT"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="100.0" name="Estimated energy from regional source(s) [%]">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PERCENT"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="3.7" name="Total energy consumed [GWh]">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="WATTHOUR" multiplier="GIGA" physicalQuantity="ENERGY"/>
          </kpi>
        </KPIs>
        <asset xsi:type="esdl:HeatingDemand" id="08fd3385-681a-4211-a083-51775cc99daa" power="15000000.0" name="HeatingDemand_08fd">
          <costInformation xsi:type="esdl:CostInformation" id="7eac6b5e-ba11-4ef1-b90e-599dd2690d20">
            <investmentCosts xsi:type="esdl:SingleValue" value="1000000.0" id="26aba0b6-a1a0-4610-97b3-be763548c669">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perUnit="WATT" physicalQuantity="COST" unit="EURO" id="424508c6-24aa-4a35-81e9-7ae198cbaeb8" description="Cost in EUR/MW" perMultiplier="MEGA"/>
            </investmentCosts>
            <installationCosts xsi:type="esdl:SingleValue" value="1000000.0" id="3b93383a-2ec4-4b35-9335-ebd91f0de600">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="EURO" description="Cost in EUR" id="318840e0-6f48-46f4-b9c9-91315d7b45fd" physicalQuantity="COST"/>
            </installationCosts>
          </costInformation>
          <port xsi:type="esdl:InPort" connectedTo="787c6ae3-96da-41e1-af86-6e68a1e28cb1" id="01caa60f-1549-4f3f-817e-e4e6807b2398" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="In">
            <profile xsi:type="esdl:InfluxDBProfile" port="443" field="demand4_MW" database="energy_profiles" startDate="2018-12-31T23:00:00.000000+0000" host="profiles.warmingup.info" id="ddd73fb0-d96f-4127-8d39-869455c77930" measurement="WarmingUp default profiles" endDate="2019-12-31T22:00:00.000000+0000" filters="">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="e9405fc8-5e57-4df5-8584-4babee7cdf1b"/>
            </profile>
          </port>
          <port xsi:type="esdl:OutPort" id="ca90e0a5-f866-4ec2-9b3b-07f054f1c2b2" connectedTo="35ddd90a-e45c-4afd-95b4-80ce6c927071" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="Out">
            <profile xsi:type="esdl:InfluxDBProfile" port="8096" field="HeatIn.Q" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="9d36f952-20da-4558-ab7b-d8d2787e5dc0" measurement="HeatingDemand_08fd" endDate="2019-12-31T23:00:00.000000+0000">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="CUBIC_METRE" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
            </profile>
            <profile xsi:type="esdl:InfluxDBProfile" port="8096" field="Heat_flow" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="ad4fa6d5-c4ba-4b51-b5a1-56199a028f45" measurement="HeatingDemand_08fd" endDate="2019-12-31T23:00:00.000000+0000">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="WATT" physicalQuantity="POWER"/>
            </profile>
          </port>
          <geometry xsi:type="esdl:Point" lat="51.99648151568376" lon="4.373245239257813" CRS="WGS84"/>
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
      </area>
      <area xsi:type="esdl:Area" name="Area_a58a" id="a58a988c-95c1-492b-bc63-b125d25f5108">
        <KPIs xsi:type="esdl:KPIs" id="e759c879-af1a-4b3c-bf90-0196bd21e688">
          <kpi xsi:type="esdl:DoubleKPI" value="15.0" name="Investment">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="EURO" multiplier="MEGA" physicalQuantity="COST"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="1.0" name="Installation">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="EURO" multiplier="MEGA" physicalQuantity="COST"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Variable OPEX">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="EURO" multiplier="MEGA" physicalQuantity="COST"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Fixed OPEX">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="EURO" multiplier="MEGA" physicalQuantity="COST"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Estimated energy from local source(s) [%]">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PERCENT"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="100.0" name="Estimated energy from regional source(s) [%]">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PERCENT"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="3.3" name="Total energy consumed [GWh]">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="WATTHOUR" multiplier="GIGA" physicalQuantity="ENERGY"/>
          </kpi>
        </KPIs>
        <asset xsi:type="esdl:HeatingDemand" id="8fbe3d4e-5d5b-4489-9271-9969c2b9e589" power="15000000.0" name="HeatingDemand_8fbe">
          <costInformation xsi:type="esdl:CostInformation" id="32e59a3e-fe5e-4201-bbd6-4f26dc4c961e">
            <investmentCosts xsi:type="esdl:SingleValue" value="1000000.0" id="3971c64d-50e4-47ec-a769-1f91935065d9">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perUnit="WATT" physicalQuantity="COST" unit="EURO" id="5a0e43e1-b141-4626-87eb-487cdb70e60e" description="Cost in EUR/MW" perMultiplier="MEGA"/>
            </investmentCosts>
            <installationCosts xsi:type="esdl:SingleValue" value="1000000.0" id="850701a9-ec9a-40c5-ab3e-e0dbe6165cb6">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="EURO" description="Cost in EUR" id="b18cdc99-6303-404c-958a-1a4c079f842d" physicalQuantity="COST"/>
            </installationCosts>
          </costInformation>
          <port xsi:type="esdl:InPort" connectedTo="13edd58c-4a04-4770-8aac-c6e8689acbba" id="23cdb929-5cfc-4b8d-963e-06b6e6cf3a5c" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="In">
            <profile xsi:type="esdl:InfluxDBProfile" port="443" field="demand3_MW" database="energy_profiles" startDate="2018-12-31T23:00:00.000000+0000" host="profiles.warmingup.info" id="5ae97047-619a-4119-84f3-848b36743e5d" measurement="WarmingUp default profiles" endDate="2019-12-31T22:00:00.000000+0000" filters="">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="e9405fc8-5e57-4df5-8584-4babee7cdf1b"/>
            </profile>
          </port>
          <port xsi:type="esdl:OutPort" id="0fd050fa-15ff-4f1e-b0bd-ef1823365eaa" connectedTo="6d1edc18-1962-4d3d-9882-ef27ae1702e8" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="Out">
            <profile xsi:type="esdl:InfluxDBProfile" port="8096" field="HeatIn.Q" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="9a1bb34b-712d-4596-84eb-2b6f2c50c298" measurement="HeatingDemand_8fbe" endDate="2019-12-31T23:00:00.000000+0000">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="CUBIC_METRE" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
            </profile>
            <profile xsi:type="esdl:InfluxDBProfile" port="8096" field="Heat_flow" database="15174819-d1af-4ba6-9f1d-2cd07991f14a" startDate="2018-12-31T23:00:00.000000+0000" host="omotes_influxdb" id="923086b2-59fa-4376-9227-805accc1f1af" measurement="HeatingDemand_8fbe" endDate="2019-12-31T23:00:00.000000+0000">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="WATT" physicalQuantity="POWER"/>
            </profile>
          </port>
          <geometry xsi:type="esdl:Point" lat="51.99069441691871" lon="4.379038810729981" CRS="WGS84"/>
        </asset>
        <geometry xsi:type="esdl:Polygon" CRS="WGS84">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.992279997820766" lon="4.372987747192384"/>
            <point xsi:type="esdl:Point" lat="51.994235470276436" lon="4.382214546203614"/>
            <point xsi:type="esdl:Point" lat="51.989333415199866" lon="4.38581943511963"/>
            <point xsi:type="esdl:Point" lat="51.98688879367896" lon="4.37633514404297"/>
          </exterior>
        </geometry>
      </area>
    </area>
  </instance>
</esdl:EnergySystem>
