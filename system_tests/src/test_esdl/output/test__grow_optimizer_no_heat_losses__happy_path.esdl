<?xml version='1.0' encoding='UTF-8'?>
<esdl:EnergySystem xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:esdl="http://www.tno.nl/esdl" version="13" description="" esdlVersion="v2207" name="PoC Tutorial_SmartControlOptimized_grow_optimizer_no_heat_losses" id="73eb2eb6-8b24-4063-a20e-c1077ceca996">
  <instance xsi:type="esdl:Instance" id="9af52a01-24e2-4bbe-a7b8-f868161e6ca3" name="Untitled instance">
    <area xsi:type="esdl:Area" name="Untitled area" id="9edf5aa3-3855-4dac-b6f5-01c2edf1a43a">
      <KPIs xsi:type="esdl:KPIs" id="1620255f-6b04-4e06-86ed-6eb65c9d4490">
        <kpi xsi:type="esdl:DistributionKPI" name="High level cost breakdown [EUR] (yearly averaged)">
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" value="2593118.247333333" label="CAPEX"/>
            <stringItem xsi:type="esdl:StringItem" value="6820966.574094009" label="OPEX"/>
          </distribution>
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="EURO" physicalQuantity="COST"/>
        </kpi>
        <kpi xsi:type="esdl:DistributionKPI" name="High level cost breakdown [EUR] (30.0 year period)">
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" value="77793547.41999999" label="CAPEX"/>
            <stringItem xsi:type="esdl:StringItem" value="204628997.22282025" label="OPEX"/>
          </distribution>
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="EURO" physicalQuantity="COST"/>
        </kpi>
        <kpi xsi:type="esdl:DistributionKPI" name="Overall cost breakdown [EUR] (yearly averaged)">
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" value="433333.3333333327" label="Installation"/>
            <stringItem xsi:type="esdl:StringItem" value="2159784.914" label="Investment"/>
            <stringItem xsi:type="esdl:StringItem" value="2127504.7772940076" label="Variable OPEX"/>
            <stringItem xsi:type="esdl:StringItem" value="4693461.796800001" label="Fixed OPEX"/>
          </distribution>
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="EURO" physicalQuantity="COST"/>
        </kpi>
        <kpi xsi:type="esdl:DistributionKPI" name="Overall cost breakdown [EUR] (30.0 year period)">
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" value="12999999.99999998" label="Installation"/>
            <stringItem xsi:type="esdl:StringItem" value="64793547.42" label="Investment"/>
            <stringItem xsi:type="esdl:StringItem" value="63825143.31882023" label="Variable OPEX"/>
            <stringItem xsi:type="esdl:StringItem" value="140803853.904" label="Fixed OPEX"/>
          </distribution>
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="EURO" physicalQuantity="COST"/>
        </kpi>
        <kpi xsi:type="esdl:DistributionKPI" name="CAPEX breakdown [EUR] (30.0 year period)">
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" value="21733654.491999984" label="ResidualHeatSource"/>
            <stringItem xsi:type="esdl:StringItem" value="8059892.928000001" label="Pipe"/>
            <stringItem xsi:type="esdl:StringItem" value="48000000.0" label="HeatingDemand"/>
          </distribution>
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="EURO" physicalQuantity="COST"/>
        </kpi>
        <kpi xsi:type="esdl:DistributionKPI" name="OPEX breakdown [EUR] (yearly averaged)">
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" value="6820966.574094009" label="ResidualHeatSource"/>
          </distribution>
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="EURO" physicalQuantity="COST"/>
        </kpi>
        <kpi xsi:type="esdl:DistributionKPI" name="OPEX breakdown [EUR] (30.0 year period)">
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" value="204628997.22282025" label="ResidualHeatSource"/>
          </distribution>
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="EURO" physicalQuantity="COST"/>
        </kpi>
        <kpi xsi:type="esdl:DistributionKPI" name="Energy production [Wh] (yearly averaged)">
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" value="21275047772.940075" label="ResidualHeatSource_72d7"/>
          </distribution>
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="WATTHOUR" physicalQuantity="ENERGY"/>
        </kpi>
        <kpi xsi:type="esdl:DistributionKPI" name="Area_76a7: Asset cost breakdown [EUR]">
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" value="1000000.0" label="Installation"/>
            <stringItem xsi:type="esdl:StringItem" value="15000000.0" label="Investment"/>
          </distribution>
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="EURO" physicalQuantity="COST"/>
        </kpi>
        <kpi xsi:type="esdl:DistributionKPI" name="Area_9d0f: Asset cost breakdown [EUR]">
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" value="1000000.0" label="Installation"/>
            <stringItem xsi:type="esdl:StringItem" value="15000000.0" label="Investment"/>
          </distribution>
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="EURO" physicalQuantity="COST"/>
        </kpi>
        <kpi xsi:type="esdl:DistributionKPI" name="Area_a58a: Asset cost breakdown [EUR]">
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" value="1000000.0" label="Installation"/>
            <stringItem xsi:type="esdl:StringItem" value="15000000.0" label="Investment"/>
          </distribution>
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="EURO" physicalQuantity="COST"/>
        </kpi>
      </KPIs>
      <asset xsi:type="esdl:ResidualHeatSource" name="ResidualHeatSource_72d7" power="7822436.328000002" id="72d74fb5-134f-4bfb-829e-220ab76a8a7b">
        <costInformation xsi:type="esdl:CostInformation" id="123cc46e-f8ef-42f9-842f-08e77dd06899">
          <fixedOperationalCosts xsi:type="esdl:SingleValue" value="600000.0" id="8ee43904-745d-4f5c-8b15-5a2adcde7e5f">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" description="Cost in EUR/MW" perMultiplier="MEGA" perUnit="WATT" unit="EURO" physicalQuantity="COST" id="4c3a445d-d13f-4f61-8d75-22280135830f"/>
          </fixedOperationalCosts>
          <variableOperationalCosts xsi:type="esdl:SingleValue" value="100.0" id="e5bc1b5e-23b1-4985-94f2-bea25c12da14">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" description="Cost in EUR/MWh" perMultiplier="MEGA" perUnit="WATTHOUR" unit="EURO" physicalQuantity="COST" id="de56cc5d-2baa-451c-b38c-47abea1393c2"/>
          </variableOperationalCosts>
          <investmentCosts xsi:type="esdl:SingleValue" value="1500000.0" id="3102215e-50a4-4332-b16e-2fd6522df31b">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" description="Cost in EUR/MW" perMultiplier="MEGA" perUnit="WATT" unit="EURO" physicalQuantity="COST" id="69673880-fe81-4f34-8fd9-558cc693a251"/>
          </investmentCosts>
          <marginalCosts xsi:type="esdl:SingleValue" value="1.0" id="e52de449-7340-4878-b582-d20711d9fb14">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="EURO" physicalQuantity="COST" description="Cost in EUR" id="4fccbb6b-2e41-46d9-a92c-f94da7c3aca7"/>
          </marginalCosts>
          <installationCosts xsi:type="esdl:SingleValue" value="10000000.0" id="12c24715-08dc-4b61-ae15-76541704c83a">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="EURO" physicalQuantity="COST" description="Cost in EUR" id="89b04c83-eb32-49a3-adc4-492a719221d3"/>
          </installationCosts>
        </costInformation>
        <port xsi:type="esdl:OutPort" name="Out" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" id="d890f8aa-9b94-493d-b017-bd7cebaf8c77" connectedTo="07c2f88e-85be-4b8b-a72e-14364a3810c9">
          <profile xsi:type="esdl:InfluxDBProfile" database="73eb2eb6-8b24-4063-a20e-c1077ceca996" endDate="2019-12-31T23:00:00.000000+0000" host="omotes_influxdb" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" filters="&quot;assetId&quot;='72d74fb5-134f-4bfb-829e-220ab76a8a7b'" startDate="2018-12-31T23:00:00.000000+0000" port="8096" field="HeatIn.Q" id="511ee3e1-59e8-48ff-b399-346cdb71c56b">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="CUBIC_METRE" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" database="73eb2eb6-8b24-4063-a20e-c1077ceca996" endDate="2019-12-31T23:00:00.000000+0000" host="omotes_influxdb" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" filters="&quot;assetId&quot;='72d74fb5-134f-4bfb-829e-220ab76a8a7b'" startDate="2018-12-31T23:00:00.000000+0000" port="8096" field="Heat_flow" id="2cca7753-a435-4ab2-b9ed-069b46ab5e0b">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="WATT" physicalQuantity="POWER"/>
          </profile>
        </port>
        <port xsi:type="esdl:InPort" name="In" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" connectedTo="c0a27794-98e2-4119-a363-cec4f0b525cd" id="4d6c18cd-cc52-443d-8e53-96cd188dd1a8"/>
        <geometry xsi:type="esdl:Point" lon="4.372987747192384" CRS="WGS84" lat="52.00467202060717"/>
      </asset>
      <asset xsi:type="esdl:Pipe" name="Pipe1" diameter="DN150" innerDiameter="0.1603" length="818.07" id="Pipe1" related="Pipe1_ret" outerDiameter="0.25">
        <costInformation xsi:type="esdl:CostInformation" id="4a3d48d9-74bb-4407-b249-9e2af4d1037c">
          <investmentCosts xsi:type="esdl:SingleValue" value="1126.4" id="2ab2214c-8d42-4b74-877f-7fb97f6eab86" name="Combined investment and installation costs">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" description="Costs in EUR/m" perUnit="METRE" unit="EURO" physicalQuantity="COST" id="9169bd50-197f-4d6b-aaac-b383a59c815d"/>
          </investmentCosts>
        </costInformation>
        <port xsi:type="esdl:InPort" name="In" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" connectedTo="d890f8aa-9b94-493d-b017-bd7cebaf8c77" id="07c2f88e-85be-4b8b-a72e-14364a3810c9"/>
        <port xsi:type="esdl:OutPort" name="Out" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" id="fc2801d0-215b-4d2b-9846-ee4918b87e21" connectedTo="d149871b-d76a-4cc3-8922-c8d99205f47e">
          <profile xsi:type="esdl:InfluxDBProfile" database="73eb2eb6-8b24-4063-a20e-c1077ceca996" endDate="2019-12-31T23:00:00.000000+0000" host="omotes_influxdb" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" filters="&quot;assetId&quot;='Pipe1'" startDate="2018-12-31T23:00:00.000000+0000" port="8096" field="HeatIn.Q" id="e2e84097-feb5-439b-89b1-e070d188aea9">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="CUBIC_METRE" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" database="73eb2eb6-8b24-4063-a20e-c1077ceca996" endDate="2019-12-31T23:00:00.000000+0000" host="omotes_influxdb" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" filters="&quot;assetId&quot;='Pipe1'" startDate="2018-12-31T23:00:00.000000+0000" port="8096" field="Heat_flow" id="1b1f3dad-a4f8-4a39-86dd-afb5ca6b1831">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="WATT" physicalQuantity="POWER"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" database="73eb2eb6-8b24-4063-a20e-c1077ceca996" endDate="2019-12-31T23:00:00.000000+0000" host="omotes_influxdb" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" filters="&quot;assetId&quot;='Pipe1'" startDate="2018-12-31T23:00:00.000000+0000" port="8096" field="PostProc.Velocity" id="d8355c04-1a11-4610-8424-ce038a863049">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="METRE" perTimeUnit="SECOND" physicalQuantity="SPEED"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" lon="4.372987747192384" lat="52.00467202060717"/>
          <point xsi:type="esdl:Point" lon="4.365863800048829" lat="52.00210934629504"/>
          <point xsi:type="esdl:Point" lon="4.367129802703858" lat="51.99996926872789"/>
        </geometry>
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
        <dataSource xsi:type="esdl:DataSource" name="Logstor Product Catalogue Version 2020.03" attribution="https://www.logstor.com/media/6506/product-catalogue-uk-202003.pdf"/>
      </asset>
      <asset xsi:type="esdl:Joint" name="Joint_a04c" id="a04cb927-426d-4016-a084-356002a85d6c">
        <port xsi:type="esdl:InPort" name="In" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" connectedTo="fc2801d0-215b-4d2b-9846-ee4918b87e21" id="d149871b-d76a-4cc3-8922-c8d99205f47e"/>
        <port xsi:type="esdl:OutPort" name="Out" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" id="3535f436-1270-4b1b-a326-41d69cd6e330" connectedTo="863d2ff2-7a68-4bfb-8aa5-dab741b72b25 7f18f0b7-fcf3-4d83-8a65-79cbd3273ea7"/>
        <geometry xsi:type="esdl:Point" lon="4.367129802703858" lat="51.99996926872789"/>
      </asset>
      <asset xsi:type="esdl:Pipe" name="Pipe2" diameter="DN400" innerDiameter="0.3938" length="517.54" id="Pipe2" related="Pipe2_ret" outerDiameter="0.56">
        <costInformation xsi:type="esdl:CostInformation" id="4a3d48d9-74bb-4407-b249-9e2af4d1037c">
          <investmentCosts xsi:type="esdl:SingleValue" value="2840.6" id="2ab2214c-8d42-4b74-877f-7fb97f6eab86" name="Combined investment and installation costs">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" description="Costs in EUR/m" perUnit="METRE" unit="EURO" physicalQuantity="COST" id="9169bd50-197f-4d6b-aaac-b383a59c815d"/>
          </investmentCosts>
        </costInformation>
        <port xsi:type="esdl:InPort" name="In" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" connectedTo="3535f436-1270-4b1b-a326-41d69cd6e330" id="863d2ff2-7a68-4bfb-8aa5-dab741b72b25"/>
        <port xsi:type="esdl:OutPort" name="Out" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" id="8c38fc93-ed85-42ef-9be6-87d47c416e90" connectedTo="4d629e6e-5db4-4a8f-9945-934a24ede11a">
          <profile xsi:type="esdl:InfluxDBProfile" database="73eb2eb6-8b24-4063-a20e-c1077ceca996" endDate="2019-12-31T23:00:00.000000+0000" host="omotes_influxdb" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" filters="&quot;assetId&quot;='Pipe2'" startDate="2018-12-31T23:00:00.000000+0000" port="8096" field="HeatIn.Q" id="8148f873-985c-4a8a-8814-d3378f62f55a">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="CUBIC_METRE" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" database="73eb2eb6-8b24-4063-a20e-c1077ceca996" endDate="2019-12-31T23:00:00.000000+0000" host="omotes_influxdb" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" filters="&quot;assetId&quot;='Pipe2'" startDate="2018-12-31T23:00:00.000000+0000" port="8096" field="Heat_flow" id="471c2236-6041-4bd9-b5ee-56a951da749a">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="WATT" physicalQuantity="POWER"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" database="73eb2eb6-8b24-4063-a20e-c1077ceca996" endDate="2019-12-31T23:00:00.000000+0000" host="omotes_influxdb" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" filters="&quot;assetId&quot;='Pipe2'" startDate="2018-12-31T23:00:00.000000+0000" port="8096" field="PostProc.Velocity" id="347e56e7-0a6e-4496-aabf-ecdbc8cbcf8e">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="METRE" perTimeUnit="SECOND" physicalQuantity="SPEED"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" lon="4.367129802703858" lat="51.99996926872789"/>
          <point xsi:type="esdl:Point" lon="4.36983346939087" lat="51.995622746921015"/>
        </geometry>
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
        <dataSource xsi:type="esdl:DataSource" name="Logstor Product Catalogue Version 2020.03" attribution="https://www.logstor.com/media/6506/product-catalogue-uk-202003.pdf"/>
      </asset>
      <asset xsi:type="esdl:Pipe" name="Pipe3" diameter="DN400" innerDiameter="0.3938" length="1182.23" id="Pipe3" related="Pipe3_ret" outerDiameter="0.56">
        <costInformation xsi:type="esdl:CostInformation" id="4a3d48d9-74bb-4407-b249-9e2af4d1037c">
          <investmentCosts xsi:type="esdl:SingleValue" value="2840.6" id="2ab2214c-8d42-4b74-877f-7fb97f6eab86" name="Combined investment and installation costs">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" description="Costs in EUR/m" perUnit="METRE" unit="EURO" physicalQuantity="COST" id="9169bd50-197f-4d6b-aaac-b383a59c815d"/>
          </investmentCosts>
        </costInformation>
        <port xsi:type="esdl:InPort" name="In" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" connectedTo="a42acf83-361d-4d4d-8001-8617daad939a" id="e44060e9-8b0e-41e5-ae46-ce074c891c15"/>
        <port xsi:type="esdl:OutPort" name="Out" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" id="13edd58c-4a04-4770-8aac-c6e8689acbba" connectedTo="23cdb929-5cfc-4b8d-963e-06b6e6cf3a5c">
          <profile xsi:type="esdl:InfluxDBProfile" database="73eb2eb6-8b24-4063-a20e-c1077ceca996" endDate="2019-12-31T23:00:00.000000+0000" host="omotes_influxdb" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" filters="&quot;assetId&quot;='Pipe3'" startDate="2018-12-31T23:00:00.000000+0000" port="8096" field="HeatIn.Q" id="6552976e-55bd-4173-bff5-1eb9f014b2c1">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="CUBIC_METRE" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" database="73eb2eb6-8b24-4063-a20e-c1077ceca996" endDate="2019-12-31T23:00:00.000000+0000" host="omotes_influxdb" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" filters="&quot;assetId&quot;='Pipe3'" startDate="2018-12-31T23:00:00.000000+0000" port="8096" field="Heat_flow" id="668a07ba-0331-4fa0-8e4c-c2509d5bcad8">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="WATT" physicalQuantity="POWER"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" database="73eb2eb6-8b24-4063-a20e-c1077ceca996" endDate="2019-12-31T23:00:00.000000+0000" host="omotes_influxdb" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" filters="&quot;assetId&quot;='Pipe3'" startDate="2018-12-31T23:00:00.000000+0000" port="8096" field="PostProc.Velocity" id="d61bbe8f-3770-4880-a959-327b8e595a16">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="METRE" perTimeUnit="SECOND" physicalQuantity="SPEED"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" lon="4.36983346939087" lat="51.995622746921015"/>
          <point xsi:type="esdl:Point" lon="4.373888969421388" lat="51.989029496545015"/>
          <point xsi:type="esdl:Point" lon="4.379038810729981" lat="51.99069441691871"/>
        </geometry>
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
        <dataSource xsi:type="esdl:DataSource" name="Logstor Product Catalogue Version 2020.03" attribution="https://www.logstor.com/media/6506/product-catalogue-uk-202003.pdf"/>
      </asset>
      <asset xsi:type="esdl:Joint" name="Joint_95ca" id="95caf7c7-e89f-4378-96f2-f904f9255c83">
        <port xsi:type="esdl:InPort" name="In" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" connectedTo="8c38fc93-ed85-42ef-9be6-87d47c416e90" id="4d629e6e-5db4-4a8f-9945-934a24ede11a"/>
        <port xsi:type="esdl:OutPort" name="Out" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" id="a42acf83-361d-4d4d-8001-8617daad939a" connectedTo="e44060e9-8b0e-41e5-ae46-ce074c891c15 20165ec3-cf86-41e4-976f-079ba0ca5be4"/>
        <geometry xsi:type="esdl:Point" lon="4.36983346939087" lat="51.995622746921015"/>
      </asset>
      <asset xsi:type="esdl:Pipe" name="Pipe4" diameter="DN300" innerDiameter="0.3127" length="455.4" id="Pipe4" related="Pipe4_ret" outerDiameter="0.45">
        <costInformation xsi:type="esdl:CostInformation" id="384df56d-e3f0-4794-a0e2-bc0c71482e45">
          <investmentCosts xsi:type="esdl:SingleValue" value="1962.1" id="1e93bdda-8a74-42d5-960d-d64e4dff2025" name="Combined investment and installation costs">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" description="Costs in EUR/m" perUnit="METRE" unit="EURO" physicalQuantity="COST" id="983f0959-8566-43ce-a380-782d29406ed3"/>
          </investmentCosts>
        </costInformation>
        <port xsi:type="esdl:InPort" name="In" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" connectedTo="3535f436-1270-4b1b-a326-41d69cd6e330" id="7f18f0b7-fcf3-4d83-8a65-79cbd3273ea7"/>
        <port xsi:type="esdl:OutPort" name="Out" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" id="5169316d-ae93-4f04-9a34-7c776444b651" connectedTo="2c5a109b-0d98-47b6-acc1-05e1708f8b85">
          <profile xsi:type="esdl:InfluxDBProfile" database="73eb2eb6-8b24-4063-a20e-c1077ceca996" endDate="2019-12-31T23:00:00.000000+0000" host="omotes_influxdb" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" filters="&quot;assetId&quot;='Pipe4'" startDate="2018-12-31T23:00:00.000000+0000" port="8096" field="HeatIn.Q" id="976d36cd-0873-4f81-991f-7b224da3614b">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="CUBIC_METRE" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" database="73eb2eb6-8b24-4063-a20e-c1077ceca996" endDate="2019-12-31T23:00:00.000000+0000" host="omotes_influxdb" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" filters="&quot;assetId&quot;='Pipe4'" startDate="2018-12-31T23:00:00.000000+0000" port="8096" field="Heat_flow" id="7277af32-34d8-4fef-b046-ac4e7f36218c">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="WATT" physicalQuantity="POWER"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" database="73eb2eb6-8b24-4063-a20e-c1077ceca996" endDate="2019-12-31T23:00:00.000000+0000" host="omotes_influxdb" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" filters="&quot;assetId&quot;='Pipe4'" startDate="2018-12-31T23:00:00.000000+0000" port="8096" field="PostProc.Velocity" id="07e068cd-3d68-41c0-b8fa-230f674aecb4">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="METRE" perTimeUnit="SECOND" physicalQuantity="SPEED"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lon="4.367129802703858" lat="51.99996926872789"/>
          <point xsi:type="esdl:Point" lon="4.373545646667481" lat="52.00105253065436"/>
        </geometry>
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
        <dataSource xsi:type="esdl:DataSource" name="Logstor Product Catalogue Version 2020.03" attribution="https://www.logstor.com/media/6506/product-catalogue-uk-202003.pdf"/>
      </asset>
      <asset xsi:type="esdl:Pipe" name="Pipe5" diameter="DN300" innerDiameter="0.3127" length="252.3" id="Pipe5" related="Pipe5_ret" outerDiameter="0.45">
        <costInformation xsi:type="esdl:CostInformation" id="4c8d9c8f-7e99-4402-8f66-d413e73db121">
          <investmentCosts xsi:type="esdl:SingleValue" value="1962.1" id="1e93bdda-8a74-42d5-960d-d64e4dff2025" name="Combined investment and installation costs">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" description="Costs in EUR/m" perUnit="METRE" unit="EURO" physicalQuantity="COST" id="983f0959-8566-43ce-a380-782d29406ed3"/>
          </investmentCosts>
        </costInformation>
        <port xsi:type="esdl:InPort" name="In" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" connectedTo="a42acf83-361d-4d4d-8001-8617daad939a" id="20165ec3-cf86-41e4-976f-079ba0ca5be4"/>
        <port xsi:type="esdl:OutPort" name="Out" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" id="787c6ae3-96da-41e1-af86-6e68a1e28cb1" connectedTo="01caa60f-1549-4f3f-817e-e4e6807b2398">
          <profile xsi:type="esdl:InfluxDBProfile" database="73eb2eb6-8b24-4063-a20e-c1077ceca996" endDate="2019-12-31T23:00:00.000000+0000" host="omotes_influxdb" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" filters="&quot;assetId&quot;='Pipe5'" startDate="2018-12-31T23:00:00.000000+0000" port="8096" field="HeatIn.Q" id="1249f150-980b-4677-bb5b-0ab5c6b15e66">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="CUBIC_METRE" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" database="73eb2eb6-8b24-4063-a20e-c1077ceca996" endDate="2019-12-31T23:00:00.000000+0000" host="omotes_influxdb" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" filters="&quot;assetId&quot;='Pipe5'" startDate="2018-12-31T23:00:00.000000+0000" port="8096" field="Heat_flow" id="a4d8b6c9-e120-4af0-927f-bf421c24b2ea">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="WATT" physicalQuantity="POWER"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" database="73eb2eb6-8b24-4063-a20e-c1077ceca996" endDate="2019-12-31T23:00:00.000000+0000" host="omotes_influxdb" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" filters="&quot;assetId&quot;='Pipe5'" startDate="2018-12-31T23:00:00.000000+0000" port="8096" field="PostProc.Velocity" id="5bbe9491-7839-4581-b513-475dc8978420">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="METRE" perTimeUnit="SECOND" physicalQuantity="SPEED"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lon="4.36983346939087" lat="51.995622746921015"/>
          <point xsi:type="esdl:Point" lon="4.373245239257813" lat="51.99648151568376"/>
        </geometry>
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
        <dataSource xsi:type="esdl:DataSource" name="Logstor Product Catalogue Version 2020.03" attribution="https://www.logstor.com/media/6506/product-catalogue-uk-202003.pdf"/>
      </asset>
      <asset xsi:type="esdl:Joint" name="Joint_a04c_ret" id="076ba789-3040-4952-9b2b-fbf9ed05e6bd">
        <port xsi:type="esdl:InPort" name="ret_port" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" connectedTo="c5df4e61-6603-4315-a45a-196903690d9e 23d8b6bb-9480-4f02-ba7c-d00de8ff206e" id="1ba08c64-4c54-4f23-93bf-2b2f6c04229d"/>
        <port xsi:type="esdl:OutPort" name="ret_port" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" id="044ef084-2a9e-4356-bac2-207f5361d4ce" connectedTo="2c3c73cb-d282-4c97-a060-922c91c50180"/>
        <geometry xsi:type="esdl:Point" lon="4.3663488762941665" CRS="WGS84" lat="52.000059268817886"/>
      </asset>
      <asset xsi:type="esdl:Joint" name="Joint_95ca_ret" id="b4a5be45-3352-4837-94d6-b110aa842da6">
        <port xsi:type="esdl:InPort" name="ret_port" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" connectedTo="59b53a77-a253-4a96-81ef-84e719a1f518 6f9268a0-1fd9-42f6-8821-2d7d4a6e5618" id="6b4d9bba-484b-46aa-bfe6-895d491b6747"/>
        <port xsi:type="esdl:OutPort" name="ret_port" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" id="5a47482f-6cdf-41b3-91b0-014578ee8143" connectedTo="da70a1aa-53c4-496e-ba63-2c04674b8c84"/>
        <geometry xsi:type="esdl:Point" lon="4.369031429215318" CRS="WGS84" lat="51.99571274701101"/>
      </asset>
      <asset xsi:type="esdl:Pipe" name="Pipe1_ret" diameter="DN150" innerDiameter="0.1603" length="818.07" id="Pipe1_ret" related="Pipe1" outerDiameter="0.25">
        <port xsi:type="esdl:InPort" name="In_ret" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" connectedTo="044ef084-2a9e-4356-bac2-207f5361d4ce" id="2c3c73cb-d282-4c97-a060-922c91c50180"/>
        <port xsi:type="esdl:OutPort" name="Out_ret" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" id="c0a27794-98e2-4119-a363-cec4f0b525cd" connectedTo="4d6c18cd-cc52-443d-8e53-96cd188dd1a8">
          <profile xsi:type="esdl:InfluxDBProfile" database="73eb2eb6-8b24-4063-a20e-c1077ceca996" endDate="2019-12-31T23:00:00.000000+0000" host="omotes_influxdb" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" filters="&quot;assetId&quot;='Pipe1_ret'" startDate="2018-12-31T23:00:00.000000+0000" port="8096" field="HeatIn.Q" id="e19f9991-6c2b-47be-9db0-bf096a81031b">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="CUBIC_METRE" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" database="73eb2eb6-8b24-4063-a20e-c1077ceca996" endDate="2019-12-31T23:00:00.000000+0000" host="omotes_influxdb" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" filters="&quot;assetId&quot;='Pipe1_ret'" startDate="2018-12-31T23:00:00.000000+0000" port="8096" field="Heat_flow" id="892f6dae-68aa-420d-bb8d-b484d36498de">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="WATT" physicalQuantity="POWER"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" database="73eb2eb6-8b24-4063-a20e-c1077ceca996" endDate="2019-12-31T23:00:00.000000+0000" host="omotes_influxdb" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" filters="&quot;assetId&quot;='Pipe1_ret'" startDate="2018-12-31T23:00:00.000000+0000" port="8096" field="PostProc.Velocity" id="f75b0fd2-5f91-4d11-b8b1-86768d8f2028">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="METRE" perTimeUnit="SECOND" physicalQuantity="SPEED"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" lon="4.3663488762941665" CRS="WGS84" lat="52.000059268817886"/>
          <point xsi:type="esdl:Point" lon="4.365092860885141" CRS="WGS84" lat="52.00219934638504"/>
          <point xsi:type="esdl:Point" lon="4.372228431895539" CRS="WGS84" lat="52.004762020697164"/>
        </geometry>
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
      </asset>
      <asset xsi:type="esdl:Pipe" name="Pipe2_ret" diameter="DN400" innerDiameter="0.3938" length="517.54" id="Pipe2_ret" related="Pipe2" outerDiameter="0.56">
        <port xsi:type="esdl:InPort" name="In_ret" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" connectedTo="5a47482f-6cdf-41b3-91b0-014578ee8143" id="da70a1aa-53c4-496e-ba63-2c04674b8c84"/>
        <port xsi:type="esdl:OutPort" name="Out_ret" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" id="c5df4e61-6603-4315-a45a-196903690d9e" connectedTo="1ba08c64-4c54-4f23-93bf-2b2f6c04229d">
          <profile xsi:type="esdl:InfluxDBProfile" database="73eb2eb6-8b24-4063-a20e-c1077ceca996" endDate="2019-12-31T23:00:00.000000+0000" host="omotes_influxdb" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" filters="&quot;assetId&quot;='Pipe2_ret'" startDate="2018-12-31T23:00:00.000000+0000" port="8096" field="HeatIn.Q" id="6ec3fb02-5859-48c8-a444-dad9dc73508c">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="CUBIC_METRE" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" database="73eb2eb6-8b24-4063-a20e-c1077ceca996" endDate="2019-12-31T23:00:00.000000+0000" host="omotes_influxdb" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" filters="&quot;assetId&quot;='Pipe2_ret'" startDate="2018-12-31T23:00:00.000000+0000" port="8096" field="Heat_flow" id="bdffccbc-5f59-4bab-9d98-3f39967a0cea">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="WATT" physicalQuantity="POWER"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" database="73eb2eb6-8b24-4063-a20e-c1077ceca996" endDate="2019-12-31T23:00:00.000000+0000" host="omotes_influxdb" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" filters="&quot;assetId&quot;='Pipe2_ret'" startDate="2018-12-31T23:00:00.000000+0000" port="8096" field="PostProc.Velocity" id="f7459e35-5a4f-463a-abd0-15cb0708bae5">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="METRE" perTimeUnit="SECOND" physicalQuantity="SPEED"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" lon="4.369031429215318" CRS="WGS84" lat="51.99571274701101"/>
          <point xsi:type="esdl:Point" lon="4.3663488762941665" CRS="WGS84" lat="52.000059268817886"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:Pipe" name="Pipe3_ret" diameter="DN400" innerDiameter="0.3938" length="1182.23" id="Pipe3_ret" related="Pipe3" outerDiameter="0.56">
        <port xsi:type="esdl:InPort" name="In_ret" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" connectedTo="0fd050fa-15ff-4f1e-b0bd-ef1823365eaa" id="6d1edc18-1962-4d3d-9882-ef27ae1702e8"/>
        <port xsi:type="esdl:OutPort" name="Out_ret" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" id="59b53a77-a253-4a96-81ef-84e719a1f518" connectedTo="6b4d9bba-484b-46aa-bfe6-895d491b6747">
          <profile xsi:type="esdl:InfluxDBProfile" database="73eb2eb6-8b24-4063-a20e-c1077ceca996" endDate="2019-12-31T23:00:00.000000+0000" host="omotes_influxdb" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" filters="&quot;assetId&quot;='Pipe3_ret'" startDate="2018-12-31T23:00:00.000000+0000" port="8096" field="HeatIn.Q" id="0d46c989-9846-4a18-8ba4-90c01675e79f">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="CUBIC_METRE" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" database="73eb2eb6-8b24-4063-a20e-c1077ceca996" endDate="2019-12-31T23:00:00.000000+0000" host="omotes_influxdb" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" filters="&quot;assetId&quot;='Pipe3_ret'" startDate="2018-12-31T23:00:00.000000+0000" port="8096" field="Heat_flow" id="0a41fb7b-1688-4035-860b-6e350059e51c">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="WATT" physicalQuantity="POWER"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" database="73eb2eb6-8b24-4063-a20e-c1077ceca996" endDate="2019-12-31T23:00:00.000000+0000" host="omotes_influxdb" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" filters="&quot;assetId&quot;='Pipe3_ret'" startDate="2018-12-31T23:00:00.000000+0000" port="8096" field="PostProc.Velocity" id="5aaf5764-64ab-42c2-929e-4c2a85fb1311">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="METRE" perTimeUnit="SECOND" physicalQuantity="SPEED"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" lon="4.378211386257638" CRS="WGS84" lat="51.990784417008705"/>
          <point xsi:type="esdl:Point" lon="4.37305259776345" CRS="WGS84" lat="51.98911949663501"/>
          <point xsi:type="esdl:Point" lon="4.369031429215318" CRS="WGS84" lat="51.99571274701101"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:Pipe" name="Pipe4_ret" diameter="DN300" innerDiameter="0.3127" length="455.4" id="Pipe4_ret" related="Pipe4" outerDiameter="0.45">
        <port xsi:type="esdl:InPort" name="In_ret" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" connectedTo="d7eb3623-7481-41bb-911d-2dd9bd67db39" id="5e2f4591-43f2-489f-8eb2-63105dbd0355"/>
        <port xsi:type="esdl:OutPort" name="Out_ret" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" id="23d8b6bb-9480-4f02-ba7c-d00de8ff206e" connectedTo="1ba08c64-4c54-4f23-93bf-2b2f6c04229d">
          <profile xsi:type="esdl:InfluxDBProfile" database="73eb2eb6-8b24-4063-a20e-c1077ceca996" endDate="2019-12-31T23:00:00.000000+0000" host="omotes_influxdb" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" filters="&quot;assetId&quot;='Pipe4_ret'" startDate="2018-12-31T23:00:00.000000+0000" port="8096" field="HeatIn.Q" id="a570551d-fe62-43f2-9f9e-b3330db32462">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="CUBIC_METRE" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" database="73eb2eb6-8b24-4063-a20e-c1077ceca996" endDate="2019-12-31T23:00:00.000000+0000" host="omotes_influxdb" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" filters="&quot;assetId&quot;='Pipe4_ret'" startDate="2018-12-31T23:00:00.000000+0000" port="8096" field="Heat_flow" id="17416503-1407-43eb-bf45-f116950ca8a4">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="WATT" physicalQuantity="POWER"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" database="73eb2eb6-8b24-4063-a20e-c1077ceca996" endDate="2019-12-31T23:00:00.000000+0000" host="omotes_influxdb" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" filters="&quot;assetId&quot;='Pipe4_ret'" startDate="2018-12-31T23:00:00.000000+0000" port="8096" field="PostProc.Velocity" id="a9457e3c-397c-4a31-a968-708cb42c6b2b">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="METRE" perTimeUnit="SECOND" physicalQuantity="SPEED"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" lon="4.372769808163894" CRS="WGS84" lat="52.00114253074436"/>
          <point xsi:type="esdl:Point" lon="4.3663488762941665" CRS="WGS84" lat="52.000059268817886"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:Pipe" name="Pipe5_ret" diameter="DN300" innerDiameter="0.3127" length="252.3" id="Pipe5_ret" related="Pipe5" outerDiameter="0.45">
        <port xsi:type="esdl:InPort" name="In_ret" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" connectedTo="ca90e0a5-f866-4ec2-9b3b-07f054f1c2b2" id="35ddd90a-e45c-4afd-95b4-80ce6c927071"/>
        <port xsi:type="esdl:OutPort" name="Out_ret" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" id="6f9268a0-1fd9-42f6-8821-2d7d4a6e5618" connectedTo="6b4d9bba-484b-46aa-bfe6-895d491b6747">
          <profile xsi:type="esdl:InfluxDBProfile" database="73eb2eb6-8b24-4063-a20e-c1077ceca996" endDate="2019-12-31T23:00:00.000000+0000" host="omotes_influxdb" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" filters="&quot;assetId&quot;='Pipe5_ret'" startDate="2018-12-31T23:00:00.000000+0000" port="8096" field="HeatIn.Q" id="d2f9f0bc-0a47-4ebc-8ed0-a791d5e9a365">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="CUBIC_METRE" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" database="73eb2eb6-8b24-4063-a20e-c1077ceca996" endDate="2019-12-31T23:00:00.000000+0000" host="omotes_influxdb" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" filters="&quot;assetId&quot;='Pipe5_ret'" startDate="2018-12-31T23:00:00.000000+0000" port="8096" field="Heat_flow" id="ea82f6f4-24e9-4e62-8766-6b74a29df2d6">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="WATT" physicalQuantity="POWER"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" database="73eb2eb6-8b24-4063-a20e-c1077ceca996" endDate="2019-12-31T23:00:00.000000+0000" host="omotes_influxdb" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" filters="&quot;assetId&quot;='Pipe5_ret'" startDate="2018-12-31T23:00:00.000000+0000" port="8096" field="PostProc.Velocity" id="88ac9fbe-0e05-42f2-abaa-8ebb5df06a75">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="METRE" perTimeUnit="SECOND" physicalQuantity="SPEED"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" lon="4.372447461880088" CRS="WGS84" lat="51.99657151577376"/>
          <point xsi:type="esdl:Point" lon="4.369031429215318" CRS="WGS84" lat="51.99571274701101"/>
        </geometry>
      </asset>
      <area xsi:type="esdl:Area" name="Area_76a7" id="76a75122-8ea6-472d-8059-374830275d72">
        <KPIs xsi:type="esdl:KPIs" id="4ffb9301-2004-4405-8cd6-b1981fcf3d10">
          <kpi xsi:type="esdl:DoubleKPI" value="15.0" name="Investment">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="EURO" multiplier="MEGA" physicalQuantity="COST"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="1.0" name="Installation">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="EURO" multiplier="MEGA" physicalQuantity="COST"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Variable OPEX (year 1)">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="EURO" multiplier="MEGA" physicalQuantity="COST"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Fixed OPEX (year 1)">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="EURO" multiplier="MEGA" physicalQuantity="COST"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Estimated energy from local source(s) [%]">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PERCENT"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Estimated energy from regional source(s) [%]">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PERCENT"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="7.4" name="Total energy consumed [GWh]">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="WATTHOUR" multiplier="GIGA" physicalQuantity="ENERGY"/>
          </kpi>
        </KPIs>
        <asset xsi:type="esdl:HeatingDemand" name="HeatingDemand_b0ff" power="15000000.0" id="b0ff0df6-4a47-43a5-a0a5-aa10975c0a5c">
          <costInformation xsi:type="esdl:CostInformation" id="cd676c1c-6224-406f-a864-3e7ff55265e0">
            <investmentCosts xsi:type="esdl:SingleValue" value="1000000.0" id="08f06cd1-471b-404a-8894-27b315775b59">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" description="Cost in EUR/MW" perMultiplier="MEGA" perUnit="WATT" unit="EURO" physicalQuantity="COST" id="f8e5bc00-6eae-47d6-b7ad-b9699879b14c"/>
            </investmentCosts>
            <installationCosts xsi:type="esdl:SingleValue" value="1000000.0" id="829c1c62-4266-4560-ac77-b961b7a722cf">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="EURO" physicalQuantity="COST" description="Cost in EUR" id="1c0a9d42-bb5a-44c1-9ed6-824d7c82e932"/>
            </installationCosts>
          </costInformation>
          <port xsi:type="esdl:InPort" name="In" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" connectedTo="5169316d-ae93-4f04-9a34-7c776444b651" id="2c5a109b-0d98-47b6-acc1-05e1708f8b85">
            <profile xsi:type="esdl:InfluxDBProfile" multiplier="2.0" database="energy_profiles" endDate="2019-12-31T22:00:00.000000+0000" host="profiles.warmingup.info" measurement="WarmingUp default profiles" filters="" startDate="2018-12-31T23:00:00.000000+0000" port="443" field="demand4_MW" id="b8150ac7-ea23-4be6-b5a3-b6974b8df58d">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="e9405fc8-5e57-4df5-8584-4babee7cdf1b"/>
            </profile>
          </port>
          <port xsi:type="esdl:OutPort" name="Out" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" id="d7eb3623-7481-41bb-911d-2dd9bd67db39" connectedTo="5e2f4591-43f2-489f-8eb2-63105dbd0355">
            <profile xsi:type="esdl:InfluxDBProfile" database="73eb2eb6-8b24-4063-a20e-c1077ceca996" endDate="2019-12-31T23:00:00.000000+0000" host="omotes_influxdb" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" filters="&quot;assetId&quot;='b0ff0df6-4a47-43a5-a0a5-aa10975c0a5c'" startDate="2018-12-31T23:00:00.000000+0000" port="8096" field="HeatIn.Q" id="6538826a-738f-44a3-a501-f6ceabff2ca4">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="CUBIC_METRE" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
            </profile>
            <profile xsi:type="esdl:InfluxDBProfile" database="73eb2eb6-8b24-4063-a20e-c1077ceca996" endDate="2019-12-31T23:00:00.000000+0000" host="omotes_influxdb" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" filters="&quot;assetId&quot;='b0ff0df6-4a47-43a5-a0a5-aa10975c0a5c'" startDate="2018-12-31T23:00:00.000000+0000" port="8096" field="Heat_flow" id="3085ceae-2e2e-4a35-983b-278279e2c4c7">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="WATT" physicalQuantity="POWER"/>
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
        <KPIs xsi:type="esdl:KPIs" id="6693c814-ab67-461e-b93a-03f8df0ea559">
          <kpi xsi:type="esdl:DoubleKPI" value="15.0" name="Investment">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="EURO" multiplier="MEGA" physicalQuantity="COST"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="1.0" name="Installation">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="EURO" multiplier="MEGA" physicalQuantity="COST"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Variable OPEX (year 1)">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="EURO" multiplier="MEGA" physicalQuantity="COST"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Fixed OPEX (year 1)">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="EURO" multiplier="MEGA" physicalQuantity="COST"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Estimated energy from local source(s) [%]">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PERCENT"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Estimated energy from regional source(s) [%]">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PERCENT"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="7.4" name="Total energy consumed [GWh]">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="WATTHOUR" multiplier="GIGA" physicalQuantity="ENERGY"/>
          </kpi>
        </KPIs>
        <asset xsi:type="esdl:HeatingDemand" name="HeatingDemand_08fd" power="15000000.0" id="08fd3385-681a-4211-a083-51775cc99daa">
          <costInformation xsi:type="esdl:CostInformation" id="7eac6b5e-ba11-4ef1-b90e-599dd2690d20">
            <investmentCosts xsi:type="esdl:SingleValue" value="1000000.0" id="26aba0b6-a1a0-4610-97b3-be763548c669">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" description="Cost in EUR/MW" perMultiplier="MEGA" perUnit="WATT" unit="EURO" physicalQuantity="COST" id="424508c6-24aa-4a35-81e9-7ae198cbaeb8"/>
            </investmentCosts>
            <installationCosts xsi:type="esdl:SingleValue" value="1000000.0" id="3b93383a-2ec4-4b35-9335-ebd91f0de600">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="EURO" physicalQuantity="COST" description="Cost in EUR" id="318840e0-6f48-46f4-b9c9-91315d7b45fd"/>
            </installationCosts>
          </costInformation>
          <port xsi:type="esdl:InPort" name="In" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" connectedTo="787c6ae3-96da-41e1-af86-6e68a1e28cb1" id="01caa60f-1549-4f3f-817e-e4e6807b2398">
            <profile xsi:type="esdl:InfluxDBProfile" multiplier="2.0" database="energy_profiles" endDate="2019-12-31T22:00:00.000000+0000" host="profiles.warmingup.info" measurement="WarmingUp default profiles" filters="" startDate="2018-12-31T23:00:00.000000+0000" port="443" field="demand4_MW" id="ddd73fb0-d96f-4127-8d39-869455c77930">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="e9405fc8-5e57-4df5-8584-4babee7cdf1b"/>
            </profile>
          </port>
          <port xsi:type="esdl:OutPort" name="Out" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" id="ca90e0a5-f866-4ec2-9b3b-07f054f1c2b2" connectedTo="35ddd90a-e45c-4afd-95b4-80ce6c927071">
            <profile xsi:type="esdl:InfluxDBProfile" database="73eb2eb6-8b24-4063-a20e-c1077ceca996" endDate="2019-12-31T23:00:00.000000+0000" host="omotes_influxdb" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" filters="&quot;assetId&quot;='08fd3385-681a-4211-a083-51775cc99daa'" startDate="2018-12-31T23:00:00.000000+0000" port="8096" field="HeatIn.Q" id="e924b663-f6b2-4d0b-8cd5-88b0542add98">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="CUBIC_METRE" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
            </profile>
            <profile xsi:type="esdl:InfluxDBProfile" database="73eb2eb6-8b24-4063-a20e-c1077ceca996" endDate="2019-12-31T23:00:00.000000+0000" host="omotes_influxdb" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" filters="&quot;assetId&quot;='08fd3385-681a-4211-a083-51775cc99daa'" startDate="2018-12-31T23:00:00.000000+0000" port="8096" field="Heat_flow" id="98732d66-ba09-4af2-9202-f42c202719e9">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="WATT" physicalQuantity="POWER"/>
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
        <KPIs xsi:type="esdl:KPIs" id="32d70ba6-72d6-491b-af06-d3312845a541">
          <kpi xsi:type="esdl:DoubleKPI" value="15.0" name="Investment">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="EURO" multiplier="MEGA" physicalQuantity="COST"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="1.0" name="Installation">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="EURO" multiplier="MEGA" physicalQuantity="COST"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Variable OPEX (year 1)">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="EURO" multiplier="MEGA" physicalQuantity="COST"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Fixed OPEX (year 1)">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="EURO" multiplier="MEGA" physicalQuantity="COST"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Estimated energy from local source(s) [%]">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PERCENT"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Estimated energy from regional source(s) [%]">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PERCENT"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="6.6" name="Total energy consumed [GWh]">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="WATTHOUR" multiplier="GIGA" physicalQuantity="ENERGY"/>
          </kpi>
        </KPIs>
        <asset xsi:type="esdl:HeatingDemand" name="HeatingDemand_8fbe" power="15000000.0" id="8fbe3d4e-5d5b-4489-9271-9969c2b9e589">
          <costInformation xsi:type="esdl:CostInformation" id="32e59a3e-fe5e-4201-bbd6-4f26dc4c961e">
            <investmentCosts xsi:type="esdl:SingleValue" value="1000000.0" id="3971c64d-50e4-47ec-a769-1f91935065d9">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" description="Cost in EUR/MW" perMultiplier="MEGA" perUnit="WATT" unit="EURO" physicalQuantity="COST" id="5a0e43e1-b141-4626-87eb-487cdb70e60e"/>
            </investmentCosts>
            <installationCosts xsi:type="esdl:SingleValue" value="1000000.0" id="850701a9-ec9a-40c5-ab3e-e0dbe6165cb6">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="EURO" physicalQuantity="COST" description="Cost in EUR" id="b18cdc99-6303-404c-958a-1a4c079f842d"/>
            </installationCosts>
          </costInformation>
          <port xsi:type="esdl:InPort" name="In" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" connectedTo="13edd58c-4a04-4770-8aac-c6e8689acbba" id="23cdb929-5cfc-4b8d-963e-06b6e6cf3a5c">
            <profile xsi:type="esdl:InfluxDBProfile" multiplier="2.0" database="energy_profiles" endDate="2019-12-31T22:00:00.000000+0000" host="profiles.warmingup.info" measurement="WarmingUp default profiles" filters="" startDate="2018-12-31T23:00:00.000000+0000" port="443" field="demand3_MW" id="5ae97047-619a-4119-84f3-848b36743e5d">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="e9405fc8-5e57-4df5-8584-4babee7cdf1b"/>
            </profile>
          </port>
          <port xsi:type="esdl:OutPort" name="Out" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" id="0fd050fa-15ff-4f1e-b0bd-ef1823365eaa" connectedTo="6d1edc18-1962-4d3d-9882-ef27ae1702e8">
            <profile xsi:type="esdl:InfluxDBProfile" database="73eb2eb6-8b24-4063-a20e-c1077ceca996" endDate="2019-12-31T23:00:00.000000+0000" host="omotes_influxdb" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" filters="&quot;assetId&quot;='8fbe3d4e-5d5b-4489-9271-9969c2b9e589'" startDate="2018-12-31T23:00:00.000000+0000" port="8096" field="HeatIn.Q" id="86b31254-defb-455e-9f5e-6fd3793f24fa">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="CUBIC_METRE" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
            </profile>
            <profile xsi:type="esdl:InfluxDBProfile" database="73eb2eb6-8b24-4063-a20e-c1077ceca996" endDate="2019-12-31T23:00:00.000000+0000" host="omotes_influxdb" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" filters="&quot;assetId&quot;='8fbe3d4e-5d5b-4489-9271-9969c2b9e589'" startDate="2018-12-31T23:00:00.000000+0000" port="8096" field="Heat_flow" id="0949d791-947a-4fc1-90e3-c40e32286836">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="WATT" physicalQuantity="POWER"/>
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
    <carriers xsi:type="esdl:Carriers" id="42a694c6-9a1b-4cc7-bbae-0b44725f9434">
      <carrier xsi:type="esdl:HeatCommodity" id="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="Primary" supplyTemperature="80.0"/>
      <carrier xsi:type="esdl:HeatCommodity" id="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="Primary_ret" returnTemperature="40.0"/>
    </carriers>
    <quantityAndUnits xsi:type="esdl:QuantityAndUnits" id="38f7850a-2090-411e-a15a-84b1d7b78362">
      <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" description="Power in MW" multiplier="MEGA" unit="WATT" physicalQuantity="POWER" id="e9405fc8-5e57-4df5-8584-4babee7cdf1b"/>
    </quantityAndUnits>
  </energySystemInformation>
</esdl:EnergySystem>
