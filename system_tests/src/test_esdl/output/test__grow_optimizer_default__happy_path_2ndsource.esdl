<?xml version='1.0' encoding='UTF-8'?>
<esdl:EnergySystem xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:esdl="http://www.tno.nl/esdl" version="13" description="" esdlVersion="v2207" name="PoC Tutorial_SmartControlOptimized_grow_optimizer_default" id="596430ff-3f53-435a-98b2-a87f7a68e905">
  <instance xsi:type="esdl:Instance" name="Untitled instance" id="9af52a01-24e2-4bbe-a7b8-f868161e6ca3">
    <area xsi:type="esdl:Area" name="Untitled area" id="9edf5aa3-3855-4dac-b6f5-01c2edf1a43a">
      <KPIs xsi:type="esdl:KPIs" id="d207faf5-5693-4103-99fa-563e717fc89d">
        <kpi xsi:type="esdl:DistributionKPI" name="High level cost breakdown [EUR] (yearly averaged)">
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" value="2405187.921575875" label="CAPEX"/>
            <stringItem xsi:type="esdl:StringItem" value="3635738.0807508267" label="OPEX"/>
          </distribution>
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO"/>
        </kpi>
        <kpi xsi:type="esdl:DistributionKPI" name="High level cost breakdown [EUR] (30.0 year period)">
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" value="72155637.64727625" label="CAPEX"/>
            <stringItem xsi:type="esdl:StringItem" value="109072142.42252481" label="OPEX"/>
          </distribution>
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO"/>
        </kpi>
        <kpi xsi:type="esdl:DistributionKPI" name="Overall cost breakdown [EUR] (yearly averaged)">
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" value="433333.3333333333" label="Installation"/>
            <stringItem xsi:type="esdl:StringItem" value="1971854.5882425418" label="Investment"/>
            <stringItem xsi:type="esdl:StringItem" value="1197440.1930403279" label="Variable OPEX"/>
            <stringItem xsi:type="esdl:StringItem" value="2438297.887710499" label="Fixed OPEX"/>
          </distribution>
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO"/>
        </kpi>
        <kpi xsi:type="esdl:DistributionKPI" name="Overall cost breakdown [EUR] (30.0 year period)">
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" value="13000000.0" label="Installation"/>
            <stringItem xsi:type="esdl:StringItem" value="59155637.64727625" label="Investment"/>
            <stringItem xsi:type="esdl:StringItem" value="35923205.79120984" label="Variable OPEX"/>
            <stringItem xsi:type="esdl:StringItem" value="73148936.63131498" label="Fixed OPEX"/>
          </distribution>
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO"/>
        </kpi>
        <kpi xsi:type="esdl:DistributionKPI" name="CAPEX breakdown [EUR] (30.0 year period)">
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" value="16095744.719276248" label="ResidualHeatSource"/>
            <stringItem xsi:type="esdl:StringItem" value="8059892.928000001" label="Pipe"/>
            <stringItem xsi:type="esdl:StringItem" value="48000000.0" label="HeatingDemand"/>
          </distribution>
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO"/>
        </kpi>
        <kpi xsi:type="esdl:DistributionKPI" name="OPEX breakdown [EUR] (yearly averaged)">
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" value="3635738.0807508267" label="ResidualHeatSource"/>
          </distribution>
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO"/>
        </kpi>
        <kpi xsi:type="esdl:DistributionKPI" name="OPEX breakdown [EUR] (30.0 year period)">
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" value="109072142.42252481" label="ResidualHeatSource"/>
          </distribution>
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO"/>
        </kpi>
        <kpi xsi:type="esdl:DistributionKPI" name="Energy production [Wh] (yearly averaged)">
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" value="11974401930.403278" label="ResidualHeatSource_72d7"/>
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
      <asset xsi:type="esdl:ResidualHeatSource" name="ResidualHeatSource_72d7" id="72d74fb5-134f-4bfb-829e-220ab76a8a7b" power="4063829.812850832">
        <costInformation xsi:type="esdl:CostInformation" id="123cc46e-f8ef-42f9-842f-08e77dd06899">
          <fixedOperationalCosts xsi:type="esdl:SingleValue" id="8ee43904-745d-4f5c-8b15-5a2adcde7e5f" value="600000.0">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perUnit="WATT" unit="EURO" physicalQuantity="COST" id="4c3a445d-d13f-4f61-8d75-22280135830f" description="Cost in EUR/MW" perMultiplier="MEGA"/>
          </fixedOperationalCosts>
          <marginalCosts xsi:type="esdl:SingleValue" id="e52de449-7340-4878-b582-d20711d9fb14" value="1.0">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" description="Cost in EUR" physicalQuantity="COST" id="4fccbb6b-2e41-46d9-a92c-f94da7c3aca7" unit="EURO"/>
          </marginalCosts>
          <variableOperationalCosts xsi:type="esdl:SingleValue" id="e5bc1b5e-23b1-4985-94f2-bea25c12da14" value="100.0">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perUnit="WATTHOUR" unit="EURO" physicalQuantity="COST" id="de56cc5d-2baa-451c-b38c-47abea1393c2" description="Cost in EUR/MWh" perMultiplier="MEGA"/>
          </variableOperationalCosts>
          <investmentCosts xsi:type="esdl:SingleValue" id="3102215e-50a4-4332-b16e-2fd6522df31b" value="1500000.0">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perUnit="WATT" unit="EURO" physicalQuantity="COST" id="69673880-fe81-4f34-8fd9-558cc693a251" description="Cost in EUR/MW" perMultiplier="MEGA"/>
          </investmentCosts>
          <installationCosts xsi:type="esdl:SingleValue" id="12c24715-08dc-4b61-ae15-76541704c83a" value="10000000.0">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" description="Cost in EUR" physicalQuantity="COST" id="89b04c83-eb32-49a3-adc4-492a719221d3" unit="EURO"/>
          </installationCosts>
        </costInformation>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lat="52.00467202060717" lon="4.372987747192384"/>
        <port xsi:type="esdl:OutPort" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="Out" id="d890f8aa-9b94-493d-b017-bd7cebaf8c77" connectedTo="07c2f88e-85be-4b8b-a72e-14364a3810c9">
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" filters="&quot;assetId&quot;='72d74fb5-134f-4bfb-829e-220ab76a8a7b'" port="8096" field="HeatIn.Q" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" startDate="2018-12-31T23:00:00.000000+0000" database="596430ff-3f53-435a-98b2-a87f7a68e905" host="omotes_influxdb" id="8b23dde0-43f2-4314-9bef-357ee153ce3f">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="CUBIC_METRE" physicalQuantity="FLOW" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" filters="&quot;assetId&quot;='72d74fb5-134f-4bfb-829e-220ab76a8a7b'" port="8096" field="Heat_flow" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" startDate="2018-12-31T23:00:00.000000+0000" database="596430ff-3f53-435a-98b2-a87f7a68e905" host="omotes_influxdb" id="a656c67e-b68e-4be0-a335-e074a0a8d446">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="WATT" physicalQuantity="POWER"/>
          </profile>
        </port>
        <port xsi:type="esdl:InPort" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="In" connectedTo="c0a27794-98e2-4119-a363-cec4f0b525cd" id="4d6c18cd-cc52-443d-8e53-96cd188dd1a8"/>
      </asset>
      <asset xsi:type="esdl:Pipe" length="818.07" innerDiameter="0.1603" name="Pipe1" related="Pipe1_ret" id="Pipe1" outerDiameter="0.25" diameter="DN150">
        <costInformation xsi:type="esdl:CostInformation" id="4a3d48d9-74bb-4407-b249-9e2af4d1037c">
          <investmentCosts xsi:type="esdl:SingleValue" id="2ab2214c-8d42-4b74-877f-7fb97f6eab86" name="Combined investment and installation costs" value="1126.4">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perUnit="METRE" unit="EURO" physicalQuantity="COST" id="9169bd50-197f-4d6b-aaac-b383a59c815d" description="Costs in EUR/m"/>
          </investmentCosts>
        </costInformation>
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" lat="52.00467202060717" lon="4.372987747192384"/>
          <point xsi:type="esdl:Point" lat="52.00210934629504" lon="4.365863800048829"/>
          <point xsi:type="esdl:Point" lat="51.99996926872789" lon="4.367129802703858"/>
        </geometry>
        <material xsi:type="esdl:CompoundMatter" compoundType="LAYERED">
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.004">
            <matter xsi:type="esdl:Material" name="steel" id="fa85538e-ebfa-4bce-8386-04980e793e18" thermalConductivity="52.15"/>
          </component>
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.03725">
            <matter xsi:type="esdl:Material" name="PUR" id="3bafa031-f40f-42fc-b409-e35fffe5f457" thermalConductivity="0.027"/>
          </component>
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.0036">
            <matter xsi:type="esdl:Material" name="HDPE" id="893337e3-58f1-4fb4-8c25-68d71b11fb71" thermalConductivity="0.4"/>
          </component>
        </material>
        <dataSource xsi:type="esdl:DataSource" name="Logstor Product Catalogue Version 2020.03" attribution="https://www.logstor.com/media/6506/product-catalogue-uk-202003.pdf"/>
        <port xsi:type="esdl:InPort" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="In" connectedTo="d890f8aa-9b94-493d-b017-bd7cebaf8c77" id="07c2f88e-85be-4b8b-a72e-14364a3810c9"/>
        <port xsi:type="esdl:OutPort" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="Out" id="fc2801d0-215b-4d2b-9846-ee4918b87e21" connectedTo="d149871b-d76a-4cc3-8922-c8d99205f47e">
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" filters="&quot;assetId&quot;='Pipe1'" port="8096" field="HeatIn.Q" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" startDate="2018-12-31T23:00:00.000000+0000" database="596430ff-3f53-435a-98b2-a87f7a68e905" host="omotes_influxdb" id="e805c969-4bde-4554-997b-a718d5a253ca">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="CUBIC_METRE" physicalQuantity="FLOW" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" filters="&quot;assetId&quot;='Pipe1'" port="8096" field="Heat_flow" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" startDate="2018-12-31T23:00:00.000000+0000" database="596430ff-3f53-435a-98b2-a87f7a68e905" host="omotes_influxdb" id="ea7c6a18-dec4-48f3-939f-09904d06c22c">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="WATT" physicalQuantity="POWER"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" filters="&quot;assetId&quot;='Pipe1'" port="8096" field="PostProc.Velocity" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" startDate="2018-12-31T23:00:00.000000+0000" database="596430ff-3f53-435a-98b2-a87f7a68e905" host="omotes_influxdb" id="59ea70de-63ab-4267-84a8-9f2207438995">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="METRE" physicalQuantity="SPEED" perTimeUnit="SECOND"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Joint" name="Joint_a04c" id="a04cb927-426d-4016-a084-356002a85d6c">
        <geometry xsi:type="esdl:Point" lat="51.99996926872789" lon="4.367129802703858"/>
        <port xsi:type="esdl:InPort" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="In" connectedTo="fc2801d0-215b-4d2b-9846-ee4918b87e21" id="d149871b-d76a-4cc3-8922-c8d99205f47e"/>
        <port xsi:type="esdl:OutPort" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="Out" id="3535f436-1270-4b1b-a326-41d69cd6e330" connectedTo="863d2ff2-7a68-4bfb-8aa5-dab741b72b25 7f18f0b7-fcf3-4d83-8a65-79cbd3273ea7"/>
      </asset>
      <asset xsi:type="esdl:Pipe" length="517.54" innerDiameter="0.3938" name="Pipe2" related="Pipe2_ret" id="Pipe2" outerDiameter="0.56" diameter="DN400">
        <costInformation xsi:type="esdl:CostInformation" id="4a3d48d9-74bb-4407-b249-9e2af4d1037c">
          <investmentCosts xsi:type="esdl:SingleValue" id="2ab2214c-8d42-4b74-877f-7fb97f6eab86" name="Combined investment and installation costs" value="2840.6">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perUnit="METRE" unit="EURO" physicalQuantity="COST" id="9169bd50-197f-4d6b-aaac-b383a59c815d" description="Costs in EUR/m"/>
          </investmentCosts>
        </costInformation>
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
        <dataSource xsi:type="esdl:DataSource" name="Logstor Product Catalogue Version 2020.03" attribution="https://www.logstor.com/media/6506/product-catalogue-uk-202003.pdf"/>
        <port xsi:type="esdl:InPort" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="In" connectedTo="3535f436-1270-4b1b-a326-41d69cd6e330" id="863d2ff2-7a68-4bfb-8aa5-dab741b72b25"/>
        <port xsi:type="esdl:OutPort" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="Out" id="8c38fc93-ed85-42ef-9be6-87d47c416e90" connectedTo="4d629e6e-5db4-4a8f-9945-934a24ede11a">
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" filters="&quot;assetId&quot;='Pipe2'" port="8096" field="HeatIn.Q" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" startDate="2018-12-31T23:00:00.000000+0000" database="596430ff-3f53-435a-98b2-a87f7a68e905" host="omotes_influxdb" id="b6f61578-9430-41b7-81c7-8284973f9771">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="CUBIC_METRE" physicalQuantity="FLOW" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" filters="&quot;assetId&quot;='Pipe2'" port="8096" field="Heat_flow" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" startDate="2018-12-31T23:00:00.000000+0000" database="596430ff-3f53-435a-98b2-a87f7a68e905" host="omotes_influxdb" id="5ccc90d8-922c-4f16-b096-fe87eaaa9e28">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="WATT" physicalQuantity="POWER"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" filters="&quot;assetId&quot;='Pipe2'" port="8096" field="PostProc.Velocity" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" startDate="2018-12-31T23:00:00.000000+0000" database="596430ff-3f53-435a-98b2-a87f7a68e905" host="omotes_influxdb" id="cb70dae3-f88c-4096-ab8e-c82ca24a0b38">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="METRE" physicalQuantity="SPEED" perTimeUnit="SECOND"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Pipe" length="1182.23" innerDiameter="0.3938" name="Pipe3" related="Pipe3_ret" id="Pipe3" outerDiameter="0.56" diameter="DN400">
        <costInformation xsi:type="esdl:CostInformation" id="4a3d48d9-74bb-4407-b249-9e2af4d1037c">
          <investmentCosts xsi:type="esdl:SingleValue" id="2ab2214c-8d42-4b74-877f-7fb97f6eab86" name="Combined investment and installation costs" value="2840.6">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perUnit="METRE" unit="EURO" physicalQuantity="COST" id="9169bd50-197f-4d6b-aaac-b383a59c815d" description="Costs in EUR/m"/>
          </investmentCosts>
        </costInformation>
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
        <dataSource xsi:type="esdl:DataSource" name="Logstor Product Catalogue Version 2020.03" attribution="https://www.logstor.com/media/6506/product-catalogue-uk-202003.pdf"/>
        <port xsi:type="esdl:InPort" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="In" connectedTo="a42acf83-361d-4d4d-8001-8617daad939a" id="e44060e9-8b0e-41e5-ae46-ce074c891c15"/>
        <port xsi:type="esdl:OutPort" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="Out" id="13edd58c-4a04-4770-8aac-c6e8689acbba" connectedTo="23cdb929-5cfc-4b8d-963e-06b6e6cf3a5c">
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" filters="&quot;assetId&quot;='Pipe3'" port="8096" field="HeatIn.Q" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" startDate="2018-12-31T23:00:00.000000+0000" database="596430ff-3f53-435a-98b2-a87f7a68e905" host="omotes_influxdb" id="22654ebe-cfa5-4f46-a955-c5f4a7a5d840">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="CUBIC_METRE" physicalQuantity="FLOW" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" filters="&quot;assetId&quot;='Pipe3'" port="8096" field="Heat_flow" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" startDate="2018-12-31T23:00:00.000000+0000" database="596430ff-3f53-435a-98b2-a87f7a68e905" host="omotes_influxdb" id="acf84efc-2c73-4e9b-a16b-6779ba27248d">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="WATT" physicalQuantity="POWER"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" filters="&quot;assetId&quot;='Pipe3'" port="8096" field="PostProc.Velocity" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" startDate="2018-12-31T23:00:00.000000+0000" database="596430ff-3f53-435a-98b2-a87f7a68e905" host="omotes_influxdb" id="dacdcb20-c1d6-4783-93ca-097c46810d2a">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="METRE" physicalQuantity="SPEED" perTimeUnit="SECOND"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Joint" name="Joint_95ca" id="95caf7c7-e89f-4378-96f2-f904f9255c83">
        <geometry xsi:type="esdl:Point" lat="51.995622746921015" lon="4.36983346939087"/>
        <port xsi:type="esdl:InPort" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="In" connectedTo="8c38fc93-ed85-42ef-9be6-87d47c416e90" id="4d629e6e-5db4-4a8f-9945-934a24ede11a"/>
        <port xsi:type="esdl:OutPort" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="Out" id="a42acf83-361d-4d4d-8001-8617daad939a" connectedTo="e44060e9-8b0e-41e5-ae46-ce074c891c15 20165ec3-cf86-41e4-976f-079ba0ca5be4"/>
      </asset>
      <asset xsi:type="esdl:Pipe" length="455.4" innerDiameter="0.3127" name="Pipe4" related="Pipe4_ret" id="Pipe4" outerDiameter="0.45" diameter="DN300">
        <costInformation xsi:type="esdl:CostInformation" id="384df56d-e3f0-4794-a0e2-bc0c71482e45">
          <investmentCosts xsi:type="esdl:SingleValue" id="1e93bdda-8a74-42d5-960d-d64e4dff2025" name="Combined investment and installation costs" value="1962.1">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perUnit="METRE" unit="EURO" physicalQuantity="COST" id="983f0959-8566-43ce-a380-782d29406ed3" description="Costs in EUR/m"/>
          </investmentCosts>
        </costInformation>
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
        <dataSource xsi:type="esdl:DataSource" name="Logstor Product Catalogue Version 2020.03" attribution="https://www.logstor.com/media/6506/product-catalogue-uk-202003.pdf"/>
        <port xsi:type="esdl:InPort" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="In" connectedTo="3535f436-1270-4b1b-a326-41d69cd6e330" id="7f18f0b7-fcf3-4d83-8a65-79cbd3273ea7"/>
        <port xsi:type="esdl:OutPort" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="Out" id="5169316d-ae93-4f04-9a34-7c776444b651" connectedTo="2c5a109b-0d98-47b6-acc1-05e1708f8b85">
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" filters="&quot;assetId&quot;='Pipe4'" port="8096" field="HeatIn.Q" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" startDate="2018-12-31T23:00:00.000000+0000" database="596430ff-3f53-435a-98b2-a87f7a68e905" host="omotes_influxdb" id="fb32c9ce-4d4c-499e-bf8d-68bfbb115f69">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="CUBIC_METRE" physicalQuantity="FLOW" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" filters="&quot;assetId&quot;='Pipe4'" port="8096" field="Heat_flow" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" startDate="2018-12-31T23:00:00.000000+0000" database="596430ff-3f53-435a-98b2-a87f7a68e905" host="omotes_influxdb" id="425e9cc6-7d62-4880-b3af-c8b80a150614">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="WATT" physicalQuantity="POWER"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" filters="&quot;assetId&quot;='Pipe4'" port="8096" field="PostProc.Velocity" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" startDate="2018-12-31T23:00:00.000000+0000" database="596430ff-3f53-435a-98b2-a87f7a68e905" host="omotes_influxdb" id="0beb1e1d-d8d5-4707-9166-9ca34b419cb9">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="METRE" physicalQuantity="SPEED" perTimeUnit="SECOND"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Pipe" length="252.3" innerDiameter="0.3127" name="Pipe5" related="Pipe5_ret" id="Pipe5" outerDiameter="0.45" diameter="DN300">
        <costInformation xsi:type="esdl:CostInformation" id="4c8d9c8f-7e99-4402-8f66-d413e73db121">
          <investmentCosts xsi:type="esdl:SingleValue" id="1e93bdda-8a74-42d5-960d-d64e4dff2025" name="Combined investment and installation costs" value="1962.1">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perUnit="METRE" unit="EURO" physicalQuantity="COST" id="983f0959-8566-43ce-a380-782d29406ed3" description="Costs in EUR/m"/>
          </investmentCosts>
        </costInformation>
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
        <dataSource xsi:type="esdl:DataSource" name="Logstor Product Catalogue Version 2020.03" attribution="https://www.logstor.com/media/6506/product-catalogue-uk-202003.pdf"/>
        <port xsi:type="esdl:InPort" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="In" connectedTo="a42acf83-361d-4d4d-8001-8617daad939a" id="20165ec3-cf86-41e4-976f-079ba0ca5be4"/>
        <port xsi:type="esdl:OutPort" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="Out" id="787c6ae3-96da-41e1-af86-6e68a1e28cb1" connectedTo="01caa60f-1549-4f3f-817e-e4e6807b2398">
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" filters="&quot;assetId&quot;='Pipe5'" port="8096" field="HeatIn.Q" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" startDate="2018-12-31T23:00:00.000000+0000" database="596430ff-3f53-435a-98b2-a87f7a68e905" host="omotes_influxdb" id="bc9fb946-95d5-4483-b9b0-6f32c6ade4f8">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="CUBIC_METRE" physicalQuantity="FLOW" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" filters="&quot;assetId&quot;='Pipe5'" port="8096" field="Heat_flow" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" startDate="2018-12-31T23:00:00.000000+0000" database="596430ff-3f53-435a-98b2-a87f7a68e905" host="omotes_influxdb" id="7f40736c-2330-4372-88a6-22f0642eda61">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="WATT" physicalQuantity="POWER"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" filters="&quot;assetId&quot;='Pipe5'" port="8096" field="PostProc.Velocity" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" startDate="2018-12-31T23:00:00.000000+0000" database="596430ff-3f53-435a-98b2-a87f7a68e905" host="omotes_influxdb" id="1d78ff18-325f-44f5-a349-e7e6528cfa8a">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="METRE" physicalQuantity="SPEED" perTimeUnit="SECOND"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Joint" name="Joint_a04c_ret" id="076ba789-3040-4952-9b2b-fbf9ed05e6bd">
        <geometry xsi:type="esdl:Point" CRS="WGS84" lat="52.000059268817886" lon="4.3663488762941665"/>
        <port xsi:type="esdl:InPort" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="ret_port" connectedTo="c5df4e61-6603-4315-a45a-196903690d9e 23d8b6bb-9480-4f02-ba7c-d00de8ff206e" id="1ba08c64-4c54-4f23-93bf-2b2f6c04229d"/>
        <port xsi:type="esdl:OutPort" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="ret_port" id="044ef084-2a9e-4356-bac2-207f5361d4ce" connectedTo="2c3c73cb-d282-4c97-a060-922c91c50180"/>
      </asset>
      <asset xsi:type="esdl:Joint" name="Joint_95ca_ret" id="b4a5be45-3352-4837-94d6-b110aa842da6">
        <geometry xsi:type="esdl:Point" CRS="WGS84" lat="51.99571274701101" lon="4.369031429215318"/>
        <port xsi:type="esdl:InPort" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="ret_port" connectedTo="59b53a77-a253-4a96-81ef-84e719a1f518 6f9268a0-1fd9-42f6-8821-2d7d4a6e5618" id="6b4d9bba-484b-46aa-bfe6-895d491b6747"/>
        <port xsi:type="esdl:OutPort" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="ret_port" id="5a47482f-6cdf-41b3-91b0-014578ee8143" connectedTo="da70a1aa-53c4-496e-ba63-2c04674b8c84"/>
      </asset>
      <asset xsi:type="esdl:Pipe" length="818.07" innerDiameter="0.1603" name="Pipe1_ret" related="Pipe1" id="Pipe1_ret" outerDiameter="0.25" diameter="DN150">
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" CRS="WGS84" lat="52.000059268817886" lon="4.3663488762941665"/>
          <point xsi:type="esdl:Point" CRS="WGS84" lat="52.00219934638504" lon="4.365092860885141"/>
          <point xsi:type="esdl:Point" CRS="WGS84" lat="52.004762020697164" lon="4.372228431895539"/>
        </geometry>
        <port xsi:type="esdl:InPort" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="In_ret" connectedTo="044ef084-2a9e-4356-bac2-207f5361d4ce" id="2c3c73cb-d282-4c97-a060-922c91c50180"/>
        <port xsi:type="esdl:OutPort" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="Out_ret" id="c0a27794-98e2-4119-a363-cec4f0b525cd" connectedTo="4d6c18cd-cc52-443d-8e53-96cd188dd1a8">
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" filters="&quot;assetId&quot;='Pipe1_ret'" port="8096" field="HeatIn.Q" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" startDate="2018-12-31T23:00:00.000000+0000" database="596430ff-3f53-435a-98b2-a87f7a68e905" host="omotes_influxdb" id="92d8e284-4c79-4d1b-9601-f0a9a929c443">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="CUBIC_METRE" physicalQuantity="FLOW" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" filters="&quot;assetId&quot;='Pipe1_ret'" port="8096" field="Heat_flow" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" startDate="2018-12-31T23:00:00.000000+0000" database="596430ff-3f53-435a-98b2-a87f7a68e905" host="omotes_influxdb" id="17330d34-8ade-43e9-9f27-47083834c1e6">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="WATT" physicalQuantity="POWER"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" filters="&quot;assetId&quot;='Pipe1_ret'" port="8096" field="PostProc.Velocity" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" startDate="2018-12-31T23:00:00.000000+0000" database="596430ff-3f53-435a-98b2-a87f7a68e905" host="omotes_influxdb" id="252928cb-4b38-402b-9807-e6a92a88c490">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="METRE" physicalQuantity="SPEED" perTimeUnit="SECOND"/>
          </profile>
        </port>
        <material xsi:type="esdl:CompoundMatter" compoundType="LAYERED">
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.004">
            <matter xsi:type="esdl:Material" name="steel" id="fa85538e-ebfa-4bce-8386-04980e793e18" thermalConductivity="52.15"/>
          </component>
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.03725">
            <matter xsi:type="esdl:Material" name="PUR" id="3bafa031-f40f-42fc-b409-e35fffe5f457" thermalConductivity="0.027"/>
          </component>
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.0036">
            <matter xsi:type="esdl:Material" name="HDPE" id="893337e3-58f1-4fb4-8c25-68d71b11fb71" thermalConductivity="0.4"/>
          </component>
        </material>
      </asset>
      <asset xsi:type="esdl:Pipe" length="517.54" innerDiameter="0.3938" name="Pipe2_ret" related="Pipe2" id="Pipe2_ret" outerDiameter="0.56" diameter="DN400">
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" CRS="WGS84" lat="51.99571274701101" lon="4.369031429215318"/>
          <point xsi:type="esdl:Point" CRS="WGS84" lat="52.000059268817886" lon="4.3663488762941665"/>
        </geometry>
        <port xsi:type="esdl:InPort" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="In_ret" connectedTo="5a47482f-6cdf-41b3-91b0-014578ee8143" id="da70a1aa-53c4-496e-ba63-2c04674b8c84"/>
        <port xsi:type="esdl:OutPort" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="Out_ret" id="c5df4e61-6603-4315-a45a-196903690d9e" connectedTo="1ba08c64-4c54-4f23-93bf-2b2f6c04229d">
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" filters="&quot;assetId&quot;='Pipe2_ret'" port="8096" field="HeatIn.Q" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" startDate="2018-12-31T23:00:00.000000+0000" database="596430ff-3f53-435a-98b2-a87f7a68e905" host="omotes_influxdb" id="946ce081-2bc3-4f38-afcc-e1dfc8a724fe">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="CUBIC_METRE" physicalQuantity="FLOW" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" filters="&quot;assetId&quot;='Pipe2_ret'" port="8096" field="Heat_flow" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" startDate="2018-12-31T23:00:00.000000+0000" database="596430ff-3f53-435a-98b2-a87f7a68e905" host="omotes_influxdb" id="38d437e2-bd4d-4e1f-9a37-b2a2c830b092">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="WATT" physicalQuantity="POWER"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" filters="&quot;assetId&quot;='Pipe2_ret'" port="8096" field="PostProc.Velocity" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" startDate="2018-12-31T23:00:00.000000+0000" database="596430ff-3f53-435a-98b2-a87f7a68e905" host="omotes_influxdb" id="57b5d679-8c23-483b-a263-40243bbf0c6b">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="METRE" physicalQuantity="SPEED" perTimeUnit="SECOND"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Pipe" length="1182.23" innerDiameter="0.3938" name="Pipe3_ret" related="Pipe3" id="Pipe3_ret" outerDiameter="0.56" diameter="DN400">
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" CRS="WGS84" lat="51.990784417008705" lon="4.378211386257638"/>
          <point xsi:type="esdl:Point" CRS="WGS84" lat="51.98911949663501" lon="4.37305259776345"/>
          <point xsi:type="esdl:Point" CRS="WGS84" lat="51.99571274701101" lon="4.369031429215318"/>
        </geometry>
        <port xsi:type="esdl:InPort" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="In_ret" connectedTo="0fd050fa-15ff-4f1e-b0bd-ef1823365eaa" id="6d1edc18-1962-4d3d-9882-ef27ae1702e8"/>
        <port xsi:type="esdl:OutPort" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="Out_ret" id="59b53a77-a253-4a96-81ef-84e719a1f518" connectedTo="6b4d9bba-484b-46aa-bfe6-895d491b6747">
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" filters="&quot;assetId&quot;='Pipe3_ret'" port="8096" field="HeatIn.Q" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" startDate="2018-12-31T23:00:00.000000+0000" database="596430ff-3f53-435a-98b2-a87f7a68e905" host="omotes_influxdb" id="f4ae0572-4f5a-4043-87ac-4e011361b1b2">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="CUBIC_METRE" physicalQuantity="FLOW" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" filters="&quot;assetId&quot;='Pipe3_ret'" port="8096" field="Heat_flow" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" startDate="2018-12-31T23:00:00.000000+0000" database="596430ff-3f53-435a-98b2-a87f7a68e905" host="omotes_influxdb" id="6da6b6bd-798f-45eb-a481-f6c846cab3c8">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="WATT" physicalQuantity="POWER"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" filters="&quot;assetId&quot;='Pipe3_ret'" port="8096" field="PostProc.Velocity" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" startDate="2018-12-31T23:00:00.000000+0000" database="596430ff-3f53-435a-98b2-a87f7a68e905" host="omotes_influxdb" id="edc08449-7d25-472d-828c-01457dac88e1">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="METRE" physicalQuantity="SPEED" perTimeUnit="SECOND"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Pipe" length="455.4" innerDiameter="0.3127" name="Pipe4_ret" related="Pipe4" id="Pipe4_ret" outerDiameter="0.45" diameter="DN300">
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" CRS="WGS84" lat="52.00114253074436" lon="4.372769808163894"/>
          <point xsi:type="esdl:Point" CRS="WGS84" lat="52.000059268817886" lon="4.3663488762941665"/>
        </geometry>
        <port xsi:type="esdl:InPort" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="In_ret" connectedTo="d7eb3623-7481-41bb-911d-2dd9bd67db39" id="5e2f4591-43f2-489f-8eb2-63105dbd0355"/>
        <port xsi:type="esdl:OutPort" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="Out_ret" id="23d8b6bb-9480-4f02-ba7c-d00de8ff206e" connectedTo="1ba08c64-4c54-4f23-93bf-2b2f6c04229d">
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" filters="&quot;assetId&quot;='Pipe4_ret'" port="8096" field="HeatIn.Q" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" startDate="2018-12-31T23:00:00.000000+0000" database="596430ff-3f53-435a-98b2-a87f7a68e905" host="omotes_influxdb" id="76fcd250-d651-43c9-a935-747a3557298e">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="CUBIC_METRE" physicalQuantity="FLOW" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" filters="&quot;assetId&quot;='Pipe4_ret'" port="8096" field="Heat_flow" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" startDate="2018-12-31T23:00:00.000000+0000" database="596430ff-3f53-435a-98b2-a87f7a68e905" host="omotes_influxdb" id="8f13132a-ab24-4106-85d7-dafceba63838">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="WATT" physicalQuantity="POWER"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" filters="&quot;assetId&quot;='Pipe4_ret'" port="8096" field="PostProc.Velocity" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" startDate="2018-12-31T23:00:00.000000+0000" database="596430ff-3f53-435a-98b2-a87f7a68e905" host="omotes_influxdb" id="75241328-d14d-451f-aa77-95819009a37f">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="METRE" physicalQuantity="SPEED" perTimeUnit="SECOND"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Pipe" length="252.3" innerDiameter="0.3127" name="Pipe5_ret" related="Pipe5" id="Pipe5_ret" outerDiameter="0.45" diameter="DN300">
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" CRS="WGS84" lat="51.99657151577376" lon="4.372447461880088"/>
          <point xsi:type="esdl:Point" CRS="WGS84" lat="51.99571274701101" lon="4.369031429215318"/>
        </geometry>
        <port xsi:type="esdl:InPort" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="In_ret" connectedTo="ca90e0a5-f866-4ec2-9b3b-07f054f1c2b2" id="35ddd90a-e45c-4afd-95b4-80ce6c927071"/>
        <port xsi:type="esdl:OutPort" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="Out_ret" id="6f9268a0-1fd9-42f6-8821-2d7d4a6e5618" connectedTo="6b4d9bba-484b-46aa-bfe6-895d491b6747">
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" filters="&quot;assetId&quot;='Pipe5_ret'" port="8096" field="HeatIn.Q" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" startDate="2018-12-31T23:00:00.000000+0000" database="596430ff-3f53-435a-98b2-a87f7a68e905" host="omotes_influxdb" id="c847367a-64ea-40c5-b752-b380cee04b1e">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="CUBIC_METRE" physicalQuantity="FLOW" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" filters="&quot;assetId&quot;='Pipe5_ret'" port="8096" field="Heat_flow" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" startDate="2018-12-31T23:00:00.000000+0000" database="596430ff-3f53-435a-98b2-a87f7a68e905" host="omotes_influxdb" id="ba2efb13-cf8e-4f27-bbd1-005752202c89">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="WATT" physicalQuantity="POWER"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" filters="&quot;assetId&quot;='Pipe5_ret'" port="8096" field="PostProc.Velocity" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" startDate="2018-12-31T23:00:00.000000+0000" database="596430ff-3f53-435a-98b2-a87f7a68e905" host="omotes_influxdb" id="e3c9048d-151a-40d4-aec7-0a3472711d3a">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="METRE" physicalQuantity="SPEED" perTimeUnit="SECOND"/>
          </profile>
        </port>
      </asset>
      <area xsi:type="esdl:Area" name="Area_76a7" id="76a75122-8ea6-472d-8059-374830275d72">
        <KPIs xsi:type="esdl:KPIs" id="2c69dd36-9495-4a7c-88df-d77352beba1c">
          <kpi xsi:type="esdl:DoubleKPI" value="15.0" name="Investment">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="EURO" physicalQuantity="COST" multiplier="MEGA"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="1.0" name="Installation">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="EURO" physicalQuantity="COST" multiplier="MEGA"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Variable OPEX (year 1)">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="EURO" physicalQuantity="COST" multiplier="MEGA"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Fixed OPEX (year 1)">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="EURO" physicalQuantity="COST" multiplier="MEGA"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Estimated energy from local source(s) [%]">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PERCENT"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Estimated energy from regional source(s) [%]">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PERCENT"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="3.7" name="Total energy consumed [GWh]">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="WATTHOUR" physicalQuantity="ENERGY" multiplier="GIGA"/>
          </kpi>
        </KPIs>
        <asset xsi:type="esdl:HeatingDemand" name="HeatingDemand_b0ff" id="b0ff0df6-4a47-43a5-a0a5-aa10975c0a5c" power="15000000.0">
          <costInformation xsi:type="esdl:CostInformation" id="cd676c1c-6224-406f-a864-3e7ff55265e0">
            <investmentCosts xsi:type="esdl:SingleValue" id="08f06cd1-471b-404a-8894-27b315775b59" value="1000000.0">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perUnit="WATT" unit="EURO" physicalQuantity="COST" id="f8e5bc00-6eae-47d6-b7ad-b9699879b14c" description="Cost in EUR/MW" perMultiplier="MEGA"/>
            </investmentCosts>
            <installationCosts xsi:type="esdl:SingleValue" id="829c1c62-4266-4560-ac77-b961b7a722cf" value="1000000.0">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" description="Cost in EUR" physicalQuantity="COST" id="1c0a9d42-bb5a-44c1-9ed6-824d7c82e932" unit="EURO"/>
            </installationCosts>
          </costInformation>
          <geometry xsi:type="esdl:Point" CRS="WGS84" lat="52.00105253065436" lon="4.373545646667481"/>
          <port xsi:type="esdl:InPort" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="In" connectedTo="5169316d-ae93-4f04-9a34-7c776444b651" id="2c5a109b-0d98-47b6-acc1-05e1708f8b85">
            <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T22:00:00.000000+0000" filters="" port="443" field="demand4_MW" startDate="2018-12-31T23:00:00.000000+0000" database="energy_profiles" measurement="WarmingUp default profiles" host="profiles.warmingup.info" id="b8150ac7-ea23-4be6-b5a3-b6974b8df58d">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="e9405fc8-5e57-4df5-8584-4babee7cdf1b"/>
            </profile>
          </port>
          <port xsi:type="esdl:OutPort" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="Out" id="d7eb3623-7481-41bb-911d-2dd9bd67db39" connectedTo="5e2f4591-43f2-489f-8eb2-63105dbd0355">
            <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" filters="&quot;assetId&quot;='b0ff0df6-4a47-43a5-a0a5-aa10975c0a5c'" port="8096" field="HeatIn.Q" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" startDate="2018-12-31T23:00:00.000000+0000" database="596430ff-3f53-435a-98b2-a87f7a68e905" host="omotes_influxdb" id="f86ed5bf-5258-48c9-a2c7-02113997c041">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="CUBIC_METRE" physicalQuantity="FLOW" perTimeUnit="SECOND"/>
            </profile>
            <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" filters="&quot;assetId&quot;='b0ff0df6-4a47-43a5-a0a5-aa10975c0a5c'" port="8096" field="Heat_flow" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" startDate="2018-12-31T23:00:00.000000+0000" database="596430ff-3f53-435a-98b2-a87f7a68e905" host="omotes_influxdb" id="5fdce148-6b80-4c5c-afbe-57f8ca14a818">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="WATT" physicalQuantity="POWER"/>
            </profile>
          </port>
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
        <KPIs xsi:type="esdl:KPIs" id="a602323f-ec8d-4e60-9432-ab31aaa47ca7">
          <kpi xsi:type="esdl:DoubleKPI" value="15.0" name="Investment">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="EURO" physicalQuantity="COST" multiplier="MEGA"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="1.0" name="Installation">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="EURO" physicalQuantity="COST" multiplier="MEGA"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Variable OPEX (year 1)">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="EURO" physicalQuantity="COST" multiplier="MEGA"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Fixed OPEX (year 1)">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="EURO" physicalQuantity="COST" multiplier="MEGA"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Estimated energy from local source(s) [%]">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PERCENT"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Estimated energy from regional source(s) [%]">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PERCENT"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="3.7" name="Total energy consumed [GWh]">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="WATTHOUR" physicalQuantity="ENERGY" multiplier="GIGA"/>
          </kpi>
        </KPIs>
        <asset xsi:type="esdl:HeatingDemand" name="HeatingDemand_08fd" id="08fd3385-681a-4211-a083-51775cc99daa" power="15000000.0">
          <costInformation xsi:type="esdl:CostInformation" id="7eac6b5e-ba11-4ef1-b90e-599dd2690d20">
            <investmentCosts xsi:type="esdl:SingleValue" id="26aba0b6-a1a0-4610-97b3-be763548c669" value="1000000.0">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perUnit="WATT" unit="EURO" physicalQuantity="COST" id="424508c6-24aa-4a35-81e9-7ae198cbaeb8" description="Cost in EUR/MW" perMultiplier="MEGA"/>
            </investmentCosts>
            <installationCosts xsi:type="esdl:SingleValue" id="3b93383a-2ec4-4b35-9335-ebd91f0de600" value="1000000.0">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" description="Cost in EUR" physicalQuantity="COST" id="318840e0-6f48-46f4-b9c9-91315d7b45fd" unit="EURO"/>
            </installationCosts>
          </costInformation>
          <geometry xsi:type="esdl:Point" CRS="WGS84" lat="51.99648151568376" lon="4.373245239257813"/>
          <port xsi:type="esdl:InPort" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="In" connectedTo="787c6ae3-96da-41e1-af86-6e68a1e28cb1" id="01caa60f-1549-4f3f-817e-e4e6807b2398">
            <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T22:00:00.000000+0000" filters="" port="443" field="demand4_MW" startDate="2018-12-31T23:00:00.000000+0000" database="energy_profiles" measurement="WarmingUp default profiles" host="profiles.warmingup.info" id="ddd73fb0-d96f-4127-8d39-869455c77930">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="e9405fc8-5e57-4df5-8584-4babee7cdf1b"/>
            </profile>
          </port>
          <port xsi:type="esdl:OutPort" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="Out" id="ca90e0a5-f866-4ec2-9b3b-07f054f1c2b2" connectedTo="35ddd90a-e45c-4afd-95b4-80ce6c927071">
            <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" filters="&quot;assetId&quot;='08fd3385-681a-4211-a083-51775cc99daa'" port="8096" field="HeatIn.Q" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" startDate="2018-12-31T23:00:00.000000+0000" database="596430ff-3f53-435a-98b2-a87f7a68e905" host="omotes_influxdb" id="512e40ec-1938-48fa-a10c-19024f2c5ebb">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="CUBIC_METRE" physicalQuantity="FLOW" perTimeUnit="SECOND"/>
            </profile>
            <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" filters="&quot;assetId&quot;='08fd3385-681a-4211-a083-51775cc99daa'" port="8096" field="Heat_flow" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" startDate="2018-12-31T23:00:00.000000+0000" database="596430ff-3f53-435a-98b2-a87f7a68e905" host="omotes_influxdb" id="2a1b85d7-7158-46b6-9d32-310ed632c940">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="WATT" physicalQuantity="POWER"/>
            </profile>
          </port>
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
        <KPIs xsi:type="esdl:KPIs" id="ea1448fa-1ddf-43ae-b345-e855571365ae">
          <kpi xsi:type="esdl:DoubleKPI" value="15.0" name="Investment">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="EURO" physicalQuantity="COST" multiplier="MEGA"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="1.0" name="Installation">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="EURO" physicalQuantity="COST" multiplier="MEGA"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Variable OPEX (year 1)">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="EURO" physicalQuantity="COST" multiplier="MEGA"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Fixed OPEX (year 1)">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="EURO" physicalQuantity="COST" multiplier="MEGA"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Estimated energy from local source(s) [%]">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PERCENT"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Estimated energy from regional source(s) [%]">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PERCENT"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="3.3" name="Total energy consumed [GWh]">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="WATTHOUR" physicalQuantity="ENERGY" multiplier="GIGA"/>
          </kpi>
        </KPIs>
        <asset xsi:type="esdl:HeatingDemand" name="HeatingDemand_8fbe" id="8fbe3d4e-5d5b-4489-9271-9969c2b9e589" power="15000000.0">
          <costInformation xsi:type="esdl:CostInformation" id="32e59a3e-fe5e-4201-bbd6-4f26dc4c961e">
            <investmentCosts xsi:type="esdl:SingleValue" id="3971c64d-50e4-47ec-a769-1f91935065d9" value="1000000.0">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perUnit="WATT" unit="EURO" physicalQuantity="COST" id="5a0e43e1-b141-4626-87eb-487cdb70e60e" description="Cost in EUR/MW" perMultiplier="MEGA"/>
            </investmentCosts>
            <installationCosts xsi:type="esdl:SingleValue" id="850701a9-ec9a-40c5-ab3e-e0dbe6165cb6" value="1000000.0">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" description="Cost in EUR" physicalQuantity="COST" id="b18cdc99-6303-404c-958a-1a4c079f842d" unit="EURO"/>
            </installationCosts>
          </costInformation>
          <geometry xsi:type="esdl:Point" CRS="WGS84" lat="51.99069441691871" lon="4.379038810729981"/>
          <port xsi:type="esdl:InPort" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="In" connectedTo="13edd58c-4a04-4770-8aac-c6e8689acbba" id="23cdb929-5cfc-4b8d-963e-06b6e6cf3a5c">
            <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T22:00:00.000000+0000" filters="" port="443" field="demand3_MW" startDate="2018-12-31T23:00:00.000000+0000" database="energy_profiles" measurement="WarmingUp default profiles" host="profiles.warmingup.info" id="5ae97047-619a-4119-84f3-848b36743e5d">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="e9405fc8-5e57-4df5-8584-4babee7cdf1b"/>
            </profile>
          </port>
          <port xsi:type="esdl:OutPort" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="Out" id="0fd050fa-15ff-4f1e-b0bd-ef1823365eaa" connectedTo="6d1edc18-1962-4d3d-9882-ef27ae1702e8">
            <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" filters="&quot;assetId&quot;='8fbe3d4e-5d5b-4489-9271-9969c2b9e589'" port="8096" field="HeatIn.Q" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" startDate="2018-12-31T23:00:00.000000+0000" database="596430ff-3f53-435a-98b2-a87f7a68e905" host="omotes_influxdb" id="2801ad98-c4d5-474b-a658-6a7087422156">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="CUBIC_METRE" physicalQuantity="FLOW" perTimeUnit="SECOND"/>
            </profile>
            <profile xsi:type="esdl:InfluxDBProfile" endDate="2019-12-31T23:00:00.000000+0000" filters="&quot;assetId&quot;='8fbe3d4e-5d5b-4489-9271-9969c2b9e589'" port="8096" field="Heat_flow" measurement="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" startDate="2018-12-31T23:00:00.000000+0000" database="596430ff-3f53-435a-98b2-a87f7a68e905" host="omotes_influxdb" id="a6781023-9856-49df-8a87-16616adbecdf">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="WATT" physicalQuantity="POWER"/>
            </profile>
          </port>
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
  <energySystemInformation xsi:type="esdl:EnergySystemInformation" id="5fa7e6e3-5701-48a7-bbbd-cad59a46f6c5">
    <quantityAndUnits xsi:type="esdl:QuantityAndUnits" id="38f7850a-2090-411e-a15a-84b1d7b78362">
      <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" multiplier="MEGA" unit="WATT" physicalQuantity="POWER" id="e9405fc8-5e57-4df5-8584-4babee7cdf1b" description="Power in MW"/>
    </quantityAndUnits>
    <carriers xsi:type="esdl:Carriers" id="42a694c6-9a1b-4cc7-bbae-0b44725f9434">
      <carrier xsi:type="esdl:HeatCommodity" name="Primary" id="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" supplyTemperature="80.0"/>
      <carrier xsi:type="esdl:HeatCommodity" name="Primary_ret" id="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" returnTemperature="40.0"/>
    </carriers>
  </energySystemInformation>
</esdl:EnergySystem>
