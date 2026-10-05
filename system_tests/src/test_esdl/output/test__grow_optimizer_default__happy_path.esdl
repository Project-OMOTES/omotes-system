<?xml version='1.0' encoding='UTF-8'?>
<esdl:EnergySystem xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:esdl="http://www.tno.nl/esdl" name="PoC Tutorial_SmartControlOptimized_test__grow_optimizer_default__happy_path" id="26f349f2-b369-43ff-b9fd-6a30a96d4f9a" description="" esdlVersion="v2207" version="13">
  <energySystemInformation xsi:type="esdl:EnergySystemInformation" id="5fa7e6e3-5701-48a7-bbbd-cad59a46f6c5">
    <carriers xsi:type="esdl:Carriers" id="42a694c6-9a1b-4cc7-bbae-0b44725f9434">
      <carrier xsi:type="esdl:HeatCommodity" id="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="Primary" supplyTemperature="80.0"/>
      <carrier xsi:type="esdl:HeatCommodity" id="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" returnTemperature="40.0" name="Primary_ret"/>
    </carriers>
    <quantityAndUnits xsi:type="esdl:QuantityAndUnits" id="38f7850a-2090-411e-a15a-84b1d7b78362">
      <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="e9405fc8-5e57-4df5-8584-4babee7cdf1b" description="Power in MW" physicalQuantity="POWER" multiplier="MEGA" unit="WATT"/>
      <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND" id="2ea8fcf3-89ef-4a48-8906-4828289edbd0"/>
      <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT" id="bf2f4b24-d4c5-4ec8-9320-ba05e7c0ea06"/>
      <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="SPEED" unit="METRE" perTimeUnit="SECOND" id="ad7a1965-669c-46e7-a15f-be02358d69b7"/>
    </quantityAndUnits>
    <dataconfigurations xsi:type="esdl:DataConfigurations" id="a60b361c-3201-4b1c-9e28-afb83b0966db">
      <configurations xsi:type="esdl:DatabaseConfiguration" id="18ab6545-0e0c-45f8-8a8a-c8b801579165" database="omotes_timeseries" type="POSTGRESQL" host="omotes_postgres" port="6432"/>
    </dataconfigurations>
  </energySystemInformation>
  <instance xsi:type="esdl:Instance" id="9af52a01-24e2-4bbe-a7b8-f868161e6ca3" name="Untitled instance">
    <area xsi:type="esdl:Area" name="Untitled area" id="9edf5aa3-3855-4dac-b6f5-01c2edf1a43a">
      <asset xsi:type="esdl:ResidualHeatSource" power="7977980.627695086" name="ResidualHeatSource_72d7" id="72d74fb5-134f-4bfb-829e-220ab76a8a7b">
        <geometry xsi:type="esdl:Point" lon="4.372987747192384" lat="52.00467202060717" CRS="WGS84"/>
        <port xsi:type="esdl:OutPort" id="d890f8aa-9b94-493d-b017-bd7cebaf8c77" name="Out" connectedTo="07c2f88e-85be-4b8b-a72e-14364a3810c9" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6">
          <profile xsi:type="esdl:DataTableProfile" id="643d83c4-8ee0-4351-acb7-8a22559a0d66" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="HeatIn.Q" filter="&quot;assetId&quot;='72d74fb5-134f-4bfb-829e-220ab76a8a7b'" schema="26f349f2-b369-43ff-b9fd-6a30a96d4f9a" profileType="OUTPUT" configuration="18ab6545-0e0c-45f8-8a8a-c8b801579165">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="2ea8fcf3-89ef-4a48-8906-4828289edbd0"/>
            <dataSource xsi:type="esdl:DataSource" id="3d34434a-f273-4ef1-a811-177fedb3ce3a" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:DataTableProfile" id="90faf114-996d-49fb-9e9f-f313c7357a57" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="Heat_flow" filter="&quot;assetId&quot;='72d74fb5-134f-4bfb-829e-220ab76a8a7b'" schema="26f349f2-b369-43ff-b9fd-6a30a96d4f9a" profileType="OUTPUT" configuration="18ab6545-0e0c-45f8-8a8a-c8b801579165">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="bf2f4b24-d4c5-4ec8-9320-ba05e7c0ea06"/>
            <dataSource xsi:type="esdl:DataSource" id="71c73594-3157-40f7-bf58-15bf02dfac13" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
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
      <asset xsi:type="esdl:Pipe" diameter="DN200" name="Pipe1" outerDiameter="0.315" length="818.07" innerDiameter="0.2101" id="Pipe1" related="Pipe1_ret">
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" lon="4.372987747192384" lat="52.00467202060717"/>
          <point xsi:type="esdl:Point" lon="4.365863800048829" lat="52.00210934629504"/>
          <point xsi:type="esdl:Point" lon="4.367129802703858" lat="51.99996926872789"/>
        </geometry>
        <material xsi:type="esdl:CompoundMatter" compoundType="LAYERED">
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.0045">
            <matter xsi:type="esdl:Material" id="930aa5cf-b76e-4049-afa7-ea79445faf55" name="steel" thermalConductivity="52.15"/>
          </component>
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.04385">
            <matter xsi:type="esdl:Material" id="f6bd7242-b1a3-4b24-9edd-ad58a830444b" name="PUR" thermalConductivity="0.027"/>
          </component>
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.0041">
            <matter xsi:type="esdl:Material" id="81df81a9-ac8b-4c9d-8d71-dd2bbee92fa3" name="HDPE" thermalConductivity="0.4"/>
          </component>
        </material>
        <port xsi:type="esdl:InPort" id="07c2f88e-85be-4b8b-a72e-14364a3810c9" name="In" connectedTo="d890f8aa-9b94-493d-b017-bd7cebaf8c77" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6"/>
        <port xsi:type="esdl:OutPort" id="fc2801d0-215b-4d2b-9846-ee4918b87e21" name="Out" connectedTo="d149871b-d76a-4cc3-8922-c8d99205f47e" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6">
          <profile xsi:type="esdl:DataTableProfile" id="1111cec5-29ce-4c38-b469-d955ff53723d" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="HeatIn.Q" filter="&quot;assetId&quot;='Pipe1'" schema="26f349f2-b369-43ff-b9fd-6a30a96d4f9a" profileType="OUTPUT" configuration="18ab6545-0e0c-45f8-8a8a-c8b801579165">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="2ea8fcf3-89ef-4a48-8906-4828289edbd0"/>
            <dataSource xsi:type="esdl:DataSource" id="c6be3137-496d-45c7-8f5e-c4bfa0c43f7a" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:DataTableProfile" id="042ea920-71a1-4f92-b93a-58585103a660" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="Heat_flow" filter="&quot;assetId&quot;='Pipe1'" schema="26f349f2-b369-43ff-b9fd-6a30a96d4f9a" profileType="OUTPUT" configuration="18ab6545-0e0c-45f8-8a8a-c8b801579165">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="bf2f4b24-d4c5-4ec8-9320-ba05e7c0ea06"/>
            <dataSource xsi:type="esdl:DataSource" id="6e1a865c-3478-4a18-b236-d085cf541e3d" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:DataTableProfile" id="9ea3ea54-22a1-436e-8632-adc577ac2852" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="PostProc.Velocity" filter="&quot;assetId&quot;='Pipe1'" schema="26f349f2-b369-43ff-b9fd-6a30a96d4f9a" profileType="OUTPUT" configuration="18ab6545-0e0c-45f8-8a8a-c8b801579165">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="ad7a1965-669c-46e7-a15f-be02358d69b7"/>
            <dataSource xsi:type="esdl:DataSource" id="06ab9b9c-8b65-4bd9-bd8d-8de3516f838d" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
        </port>
        <dataSource xsi:type="esdl:DataSource" attribution="https://www.logstor.com/media/6506/product-catalogue-uk-202003.pdf" name="Logstor Product Catalogue Version 2020.03"/>
        <costInformation xsi:type="esdl:CostInformation" id="4a3d48d9-74bb-4407-b249-9e2af4d1037c">
          <investmentCosts xsi:type="esdl:SingleValue" value="1355.3" name="Combined investment and installation costs" id="2ab2214c-8d42-4b74-877f-7fb97f6eab86">
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
          <profile xsi:type="esdl:DataTableProfile" id="40d5ea63-f854-4e9c-b411-d151f0bcfa20" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="HeatIn.Q" filter="&quot;assetId&quot;='Pipe2'" schema="26f349f2-b369-43ff-b9fd-6a30a96d4f9a" profileType="OUTPUT" configuration="18ab6545-0e0c-45f8-8a8a-c8b801579165">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="2ea8fcf3-89ef-4a48-8906-4828289edbd0"/>
            <dataSource xsi:type="esdl:DataSource" id="a2eaf301-0bf9-4096-8f39-ce9656a20088" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:DataTableProfile" id="4a2c0fa0-0d34-4a1a-b19a-a4b537ca160b" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="Heat_flow" filter="&quot;assetId&quot;='Pipe2'" schema="26f349f2-b369-43ff-b9fd-6a30a96d4f9a" profileType="OUTPUT" configuration="18ab6545-0e0c-45f8-8a8a-c8b801579165">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="bf2f4b24-d4c5-4ec8-9320-ba05e7c0ea06"/>
            <dataSource xsi:type="esdl:DataSource" id="6794dd64-6855-4042-a2d9-c8f1b905834b" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:DataTableProfile" id="d9014ec4-3c8b-46ff-aa97-3d8bafb4540d" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="PostProc.Velocity" filter="&quot;assetId&quot;='Pipe2'" schema="26f349f2-b369-43ff-b9fd-6a30a96d4f9a" profileType="OUTPUT" configuration="18ab6545-0e0c-45f8-8a8a-c8b801579165">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="ad7a1965-669c-46e7-a15f-be02358d69b7"/>
            <dataSource xsi:type="esdl:DataSource" id="bc443952-5dd7-4f30-a55e-2a684f580be3" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
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
          <profile xsi:type="esdl:DataTableProfile" id="a086ec60-4c73-4c4a-a3b2-eb6098c6e84e" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="HeatIn.Q" filter="&quot;assetId&quot;='Pipe3'" schema="26f349f2-b369-43ff-b9fd-6a30a96d4f9a" profileType="OUTPUT" configuration="18ab6545-0e0c-45f8-8a8a-c8b801579165">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="2ea8fcf3-89ef-4a48-8906-4828289edbd0"/>
            <dataSource xsi:type="esdl:DataSource" id="518421fe-afab-4bb0-8a90-2a91a3145caf" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:DataTableProfile" id="586a5346-aab6-4b85-873f-e87236be38c7" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="Heat_flow" filter="&quot;assetId&quot;='Pipe3'" schema="26f349f2-b369-43ff-b9fd-6a30a96d4f9a" profileType="OUTPUT" configuration="18ab6545-0e0c-45f8-8a8a-c8b801579165">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="bf2f4b24-d4c5-4ec8-9320-ba05e7c0ea06"/>
            <dataSource xsi:type="esdl:DataSource" id="f5d1eaf8-5b46-4d7b-8e50-f8beab684498" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:DataTableProfile" id="3d83e40d-ceb0-472b-a12b-fb9ed75a0e71" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="PostProc.Velocity" filter="&quot;assetId&quot;='Pipe3'" schema="26f349f2-b369-43ff-b9fd-6a30a96d4f9a" profileType="OUTPUT" configuration="18ab6545-0e0c-45f8-8a8a-c8b801579165">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="ad7a1965-669c-46e7-a15f-be02358d69b7"/>
            <dataSource xsi:type="esdl:DataSource" id="877aa3c7-ae06-4781-ba1f-4389b19aca32" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
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
          <profile xsi:type="esdl:DataTableProfile" id="a8c4942b-4704-4593-a72e-32d9ccf4fb21" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="HeatIn.Q" filter="&quot;assetId&quot;='Pipe4'" schema="26f349f2-b369-43ff-b9fd-6a30a96d4f9a" profileType="OUTPUT" configuration="18ab6545-0e0c-45f8-8a8a-c8b801579165">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="2ea8fcf3-89ef-4a48-8906-4828289edbd0"/>
            <dataSource xsi:type="esdl:DataSource" id="e8953917-1734-44ce-b77d-b05da441f09d" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:DataTableProfile" id="40e8d791-a26f-49ea-ad13-2cdeae796cb9" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="Heat_flow" filter="&quot;assetId&quot;='Pipe4'" schema="26f349f2-b369-43ff-b9fd-6a30a96d4f9a" profileType="OUTPUT" configuration="18ab6545-0e0c-45f8-8a8a-c8b801579165">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="bf2f4b24-d4c5-4ec8-9320-ba05e7c0ea06"/>
            <dataSource xsi:type="esdl:DataSource" id="d2a04221-dc56-4419-b0cd-9bf85b718806" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:DataTableProfile" id="d5630d18-8074-4193-9b1c-01ad2d71c1b6" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="PostProc.Velocity" filter="&quot;assetId&quot;='Pipe4'" schema="26f349f2-b369-43ff-b9fd-6a30a96d4f9a" profileType="OUTPUT" configuration="18ab6545-0e0c-45f8-8a8a-c8b801579165">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="ad7a1965-669c-46e7-a15f-be02358d69b7"/>
            <dataSource xsi:type="esdl:DataSource" id="34ac0916-9145-478a-a078-7df1944d75f3" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
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
          <profile xsi:type="esdl:DataTableProfile" id="94398a7d-a241-4770-9623-fdd4be3f4c3e" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="HeatIn.Q" filter="&quot;assetId&quot;='Pipe5'" schema="26f349f2-b369-43ff-b9fd-6a30a96d4f9a" profileType="OUTPUT" configuration="18ab6545-0e0c-45f8-8a8a-c8b801579165">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="2ea8fcf3-89ef-4a48-8906-4828289edbd0"/>
            <dataSource xsi:type="esdl:DataSource" id="4b6e03a8-2b3a-4a84-86dd-3239cb026876" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:DataTableProfile" id="e82f252d-cbe6-4f70-824a-237907591938" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="Heat_flow" filter="&quot;assetId&quot;='Pipe5'" schema="26f349f2-b369-43ff-b9fd-6a30a96d4f9a" profileType="OUTPUT" configuration="18ab6545-0e0c-45f8-8a8a-c8b801579165">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="bf2f4b24-d4c5-4ec8-9320-ba05e7c0ea06"/>
            <dataSource xsi:type="esdl:DataSource" id="9cf02ff9-5431-450c-8342-d4ec00b88f74" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:DataTableProfile" id="0893b1d1-2c4d-46ee-9301-5a91efb11e4b" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="PostProc.Velocity" filter="&quot;assetId&quot;='Pipe5'" schema="26f349f2-b369-43ff-b9fd-6a30a96d4f9a" profileType="OUTPUT" configuration="18ab6545-0e0c-45f8-8a8a-c8b801579165">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="ad7a1965-669c-46e7-a15f-be02358d69b7"/>
            <dataSource xsi:type="esdl:DataSource" id="80d97f2b-4c09-4f75-9746-a932425bc3d8" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
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
      <asset xsi:type="esdl:Pipe" diameter="DN200" name="Pipe1_ret" outerDiameter="0.315" id="Pipe1_ret" length="818.07" innerDiameter="0.2101" related="Pipe1">
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" lon="4.3663488762941665" lat="52.000059268817886" CRS="WGS84"/>
          <point xsi:type="esdl:Point" lon="4.365092860885141" lat="52.00219934638504" CRS="WGS84"/>
          <point xsi:type="esdl:Point" lon="4.372228431895539" lat="52.004762020697164" CRS="WGS84"/>
        </geometry>
        <port xsi:type="esdl:InPort" id="2c3c73cb-d282-4c97-a060-922c91c50180" name="In_ret" connectedTo="044ef084-2a9e-4356-bac2-207f5361d4ce" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret"/>
        <port xsi:type="esdl:OutPort" id="c0a27794-98e2-4119-a363-cec4f0b525cd" name="Out_ret" connectedTo="4d6c18cd-cc52-443d-8e53-96cd188dd1a8" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret">
          <profile xsi:type="esdl:DataTableProfile" id="4e962044-49a3-447f-ad6a-75a194ec48c3" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" columnName="HeatIn.Q" filter="&quot;assetId&quot;='Pipe1_ret'" schema="26f349f2-b369-43ff-b9fd-6a30a96d4f9a" profileType="OUTPUT" configuration="18ab6545-0e0c-45f8-8a8a-c8b801579165">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="2ea8fcf3-89ef-4a48-8906-4828289edbd0"/>
            <dataSource xsi:type="esdl:DataSource" id="ae8f5083-8930-4bc8-8c30-47c52251f847" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:DataTableProfile" id="e52dd6b9-3106-4b9d-82d9-960b76dbfabd" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" columnName="Heat_flow" filter="&quot;assetId&quot;='Pipe1_ret'" schema="26f349f2-b369-43ff-b9fd-6a30a96d4f9a" profileType="OUTPUT" configuration="18ab6545-0e0c-45f8-8a8a-c8b801579165">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="bf2f4b24-d4c5-4ec8-9320-ba05e7c0ea06"/>
            <dataSource xsi:type="esdl:DataSource" id="75912970-f027-4f00-80b2-5cfe6d1f2550" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:DataTableProfile" id="180954ed-37b0-46a5-84dc-aa97f96b468a" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" columnName="PostProc.Velocity" filter="&quot;assetId&quot;='Pipe1_ret'" schema="26f349f2-b369-43ff-b9fd-6a30a96d4f9a" profileType="OUTPUT" configuration="18ab6545-0e0c-45f8-8a8a-c8b801579165">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="ad7a1965-669c-46e7-a15f-be02358d69b7"/>
            <dataSource xsi:type="esdl:DataSource" id="caa9712c-55ae-4d1d-b9ce-daf97d5804a7" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
        </port>
        <material xsi:type="esdl:CompoundMatter" compoundType="LAYERED">
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.0045">
            <matter xsi:type="esdl:Material" id="930aa5cf-b76e-4049-afa7-ea79445faf55" name="steel" thermalConductivity="52.15"/>
          </component>
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.04385">
            <matter xsi:type="esdl:Material" id="f6bd7242-b1a3-4b24-9edd-ad58a830444b" name="PUR" thermalConductivity="0.027"/>
          </component>
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.0041">
            <matter xsi:type="esdl:Material" id="81df81a9-ac8b-4c9d-8d71-dd2bbee92fa3" name="HDPE" thermalConductivity="0.4"/>
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
          <profile xsi:type="esdl:DataTableProfile" id="21749498-9e0b-4073-afce-b3b15c49c292" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" columnName="HeatIn.Q" filter="&quot;assetId&quot;='Pipe2_ret'" schema="26f349f2-b369-43ff-b9fd-6a30a96d4f9a" profileType="OUTPUT" configuration="18ab6545-0e0c-45f8-8a8a-c8b801579165">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="2ea8fcf3-89ef-4a48-8906-4828289edbd0"/>
            <dataSource xsi:type="esdl:DataSource" id="12c5e4fa-2667-420c-a3b3-b45fd0aab0ef" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:DataTableProfile" id="77a4539f-ba23-4e97-8bb1-d1bd740b569e" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" columnName="Heat_flow" filter="&quot;assetId&quot;='Pipe2_ret'" schema="26f349f2-b369-43ff-b9fd-6a30a96d4f9a" profileType="OUTPUT" configuration="18ab6545-0e0c-45f8-8a8a-c8b801579165">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="bf2f4b24-d4c5-4ec8-9320-ba05e7c0ea06"/>
            <dataSource xsi:type="esdl:DataSource" id="bed60910-5719-44f1-b9ad-35d1982c64d1" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:DataTableProfile" id="c5897663-0044-4ec2-bd2c-4f82ab9601bc" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" columnName="PostProc.Velocity" filter="&quot;assetId&quot;='Pipe2_ret'" schema="26f349f2-b369-43ff-b9fd-6a30a96d4f9a" profileType="OUTPUT" configuration="18ab6545-0e0c-45f8-8a8a-c8b801579165">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="ad7a1965-669c-46e7-a15f-be02358d69b7"/>
            <dataSource xsi:type="esdl:DataSource" id="4c3c712f-ba7f-4d51-a7b2-38446fc1c4a8" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
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
          <profile xsi:type="esdl:DataTableProfile" id="e85f46dc-fa04-404e-b25b-ddb278a4a012" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" columnName="HeatIn.Q" filter="&quot;assetId&quot;='Pipe3_ret'" schema="26f349f2-b369-43ff-b9fd-6a30a96d4f9a" profileType="OUTPUT" configuration="18ab6545-0e0c-45f8-8a8a-c8b801579165">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="2ea8fcf3-89ef-4a48-8906-4828289edbd0"/>
            <dataSource xsi:type="esdl:DataSource" id="9c7a4163-e845-46b6-9b3c-4b1ec7719c7e" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:DataTableProfile" id="709f69b8-ffd8-4c7d-8644-72f08549352e" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" columnName="Heat_flow" filter="&quot;assetId&quot;='Pipe3_ret'" schema="26f349f2-b369-43ff-b9fd-6a30a96d4f9a" profileType="OUTPUT" configuration="18ab6545-0e0c-45f8-8a8a-c8b801579165">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="bf2f4b24-d4c5-4ec8-9320-ba05e7c0ea06"/>
            <dataSource xsi:type="esdl:DataSource" id="06b7b7e4-114b-4554-a600-74ffdfbf8d9d" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:DataTableProfile" id="dfd062d3-1496-4e0f-99bc-7b7088b1616e" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" columnName="PostProc.Velocity" filter="&quot;assetId&quot;='Pipe3_ret'" schema="26f349f2-b369-43ff-b9fd-6a30a96d4f9a" profileType="OUTPUT" configuration="18ab6545-0e0c-45f8-8a8a-c8b801579165">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="ad7a1965-669c-46e7-a15f-be02358d69b7"/>
            <dataSource xsi:type="esdl:DataSource" id="77a6765e-da64-4f66-944a-a4223e1bae64" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
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
          <profile xsi:type="esdl:DataTableProfile" id="3ca60507-fd9c-4285-8d67-25c8f2a33d23" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" columnName="HeatIn.Q" filter="&quot;assetId&quot;='Pipe4_ret'" schema="26f349f2-b369-43ff-b9fd-6a30a96d4f9a" profileType="OUTPUT" configuration="18ab6545-0e0c-45f8-8a8a-c8b801579165">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="2ea8fcf3-89ef-4a48-8906-4828289edbd0"/>
            <dataSource xsi:type="esdl:DataSource" id="2f4361d5-0fde-4924-8dbc-6222da4729e0" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:DataTableProfile" id="6bde0b47-e431-439c-a90f-fb988f652785" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" columnName="Heat_flow" filter="&quot;assetId&quot;='Pipe4_ret'" schema="26f349f2-b369-43ff-b9fd-6a30a96d4f9a" profileType="OUTPUT" configuration="18ab6545-0e0c-45f8-8a8a-c8b801579165">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="bf2f4b24-d4c5-4ec8-9320-ba05e7c0ea06"/>
            <dataSource xsi:type="esdl:DataSource" id="30920313-db33-41ac-a464-87660a460947" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:DataTableProfile" id="04b9a299-a25b-4f6f-8f1c-dd09febd51b6" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" columnName="PostProc.Velocity" filter="&quot;assetId&quot;='Pipe4_ret'" schema="26f349f2-b369-43ff-b9fd-6a30a96d4f9a" profileType="OUTPUT" configuration="18ab6545-0e0c-45f8-8a8a-c8b801579165">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="ad7a1965-669c-46e7-a15f-be02358d69b7"/>
            <dataSource xsi:type="esdl:DataSource" id="725b79f8-8ba7-4895-ad2e-6d7569a525b1" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
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
          <profile xsi:type="esdl:DataTableProfile" id="c2ce528d-b1f2-48c9-9004-2946d3f15278" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" columnName="HeatIn.Q" filter="&quot;assetId&quot;='Pipe5_ret'" schema="26f349f2-b369-43ff-b9fd-6a30a96d4f9a" profileType="OUTPUT" configuration="18ab6545-0e0c-45f8-8a8a-c8b801579165">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="2ea8fcf3-89ef-4a48-8906-4828289edbd0"/>
            <dataSource xsi:type="esdl:DataSource" id="0e974b75-647b-4b14-b7c1-b4a919d1cf98" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:DataTableProfile" id="817aa304-c9b7-4c54-a27b-3193a4b4d1ab" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" columnName="Heat_flow" filter="&quot;assetId&quot;='Pipe5_ret'" schema="26f349f2-b369-43ff-b9fd-6a30a96d4f9a" profileType="OUTPUT" configuration="18ab6545-0e0c-45f8-8a8a-c8b801579165">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="bf2f4b24-d4c5-4ec8-9320-ba05e7c0ea06"/>
            <dataSource xsi:type="esdl:DataSource" id="fadf8515-5f7e-4fea-b983-b639af049ea8" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:DataTableProfile" id="d470e1a7-399a-42ca-acf2-7cd700a1ea32" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" columnName="PostProc.Velocity" filter="&quot;assetId&quot;='Pipe5_ret'" schema="26f349f2-b369-43ff-b9fd-6a30a96d4f9a" profileType="OUTPUT" configuration="18ab6545-0e0c-45f8-8a8a-c8b801579165">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="ad7a1965-669c-46e7-a15f-be02358d69b7"/>
            <dataSource xsi:type="esdl:DataSource" id="f499b7e5-1437-4c76-8118-9a5027b316b5" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
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
            <profile xsi:type="esdl:DataTableProfile" id="495da101-05dc-4add-9ede-1a72c547f2ea" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="HeatIn.Q" filter="&quot;assetId&quot;='b0ff0df6-4a47-43a5-a0a5-aa10975c0a5c'" schema="26f349f2-b369-43ff-b9fd-6a30a96d4f9a" profileType="OUTPUT" configuration="18ab6545-0e0c-45f8-8a8a-c8b801579165">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="2ea8fcf3-89ef-4a48-8906-4828289edbd0"/>
              <dataSource xsi:type="esdl:DataSource" id="e57ae660-d222-471f-b687-426e815bb404" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
            </profile>
            <profile xsi:type="esdl:DataTableProfile" id="72428da7-0aef-4d26-9f74-fa79241506c8" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="Heat_flow" filter="&quot;assetId&quot;='b0ff0df6-4a47-43a5-a0a5-aa10975c0a5c'" schema="26f349f2-b369-43ff-b9fd-6a30a96d4f9a" profileType="OUTPUT" configuration="18ab6545-0e0c-45f8-8a8a-c8b801579165">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="bf2f4b24-d4c5-4ec8-9320-ba05e7c0ea06"/>
              <dataSource xsi:type="esdl:DataSource" id="1d8891d0-b517-4741-abcf-83752e9a4d0b" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
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
        <KPIs xsi:type="esdl:KPIs" id="160fc24a-2420-4030-9ff7-0956062c8d83">
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
          <kpi xsi:type="esdl:DoubleKPI" name="Estimated energy from local source(s)">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PERCENT"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Estimated energy from regional source(s)">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PERCENT"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Total energy consumed" value="7.4">
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
            <profile xsi:type="esdl:DataTableProfile" id="1fcf0ef0-8e45-4cfd-9eb9-dd630b180e47" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="HeatIn.Q" filter="&quot;assetId&quot;='08fd3385-681a-4211-a083-51775cc99daa'" schema="26f349f2-b369-43ff-b9fd-6a30a96d4f9a" profileType="OUTPUT" configuration="18ab6545-0e0c-45f8-8a8a-c8b801579165">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="2ea8fcf3-89ef-4a48-8906-4828289edbd0"/>
              <dataSource xsi:type="esdl:DataSource" id="fe0f254d-5f68-4860-8927-0a8e99982d93" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
            </profile>
            <profile xsi:type="esdl:DataTableProfile" id="717feef5-98bd-4f01-a57e-4e0be56ccccd" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="Heat_flow" filter="&quot;assetId&quot;='08fd3385-681a-4211-a083-51775cc99daa'" schema="26f349f2-b369-43ff-b9fd-6a30a96d4f9a" profileType="OUTPUT" configuration="18ab6545-0e0c-45f8-8a8a-c8b801579165">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="bf2f4b24-d4c5-4ec8-9320-ba05e7c0ea06"/>
              <dataSource xsi:type="esdl:DataSource" id="2140d5fb-d4cd-48cb-9eb1-aa8260fb75ae" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
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
        <KPIs xsi:type="esdl:KPIs" id="8a34ac9d-e61f-464e-9fcb-f410d8c46a97">
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
          <kpi xsi:type="esdl:DoubleKPI" name="Estimated energy from local source(s)">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PERCENT"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Estimated energy from regional source(s)">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PERCENT"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Total energy consumed" value="7.4">
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
            <profile xsi:type="esdl:DataTableProfile" id="3a419f99-7e20-4cb8-a9bb-d164b6764ced" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="HeatIn.Q" filter="&quot;assetId&quot;='8fbe3d4e-5d5b-4489-9271-9969c2b9e589'" schema="26f349f2-b369-43ff-b9fd-6a30a96d4f9a" profileType="OUTPUT" configuration="18ab6545-0e0c-45f8-8a8a-c8b801579165">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="2ea8fcf3-89ef-4a48-8906-4828289edbd0"/>
              <dataSource xsi:type="esdl:DataSource" id="2fe244dc-2505-40cc-b18c-f25530f50a26" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
            </profile>
            <profile xsi:type="esdl:DataTableProfile" id="e0a7017e-3020-4f27-a641-618514986efc" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="Heat_flow" filter="&quot;assetId&quot;='8fbe3d4e-5d5b-4489-9271-9969c2b9e589'" schema="26f349f2-b369-43ff-b9fd-6a30a96d4f9a" profileType="OUTPUT" configuration="18ab6545-0e0c-45f8-8a8a-c8b801579165">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="bf2f4b24-d4c5-4ec8-9320-ba05e7c0ea06"/>
              <dataSource xsi:type="esdl:DataSource" id="3752874e-224f-4afe-b8a4-bae2515d780e" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
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
        <KPIs xsi:type="esdl:KPIs" id="c7a0ff74-9906-483c-bc5b-655ba096a48e">
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
          <kpi xsi:type="esdl:DoubleKPI" name="Estimated energy from local source(s)">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PERCENT"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Estimated energy from regional source(s)">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PERCENT"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Total energy consumed" value="6.6">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="ENERGY" multiplier="GIGA" unit="WATTHOUR"/>
          </kpi>
        </KPIs>
      </area>
      <KPIs xsi:type="esdl:KPIs" id="a56733ad-54eb-40c5-a494-320a96408543">
        <kpi xsi:type="esdl:DistributionKPI" name="High level cost breakdown (yearly averaged)">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO"/>
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" label="CAPEX" value="2576421.534818088"/>
            <stringItem xsi:type="esdl:StringItem" label="OPEX" value="7050549.960443946"/>
          </distribution>
        </kpi>
        <kpi xsi:type="esdl:DistributionKPI" name="High level cost breakdown (30.0 year period)">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO"/>
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" label="CAPEX" value="77292646.04454264"/>
            <stringItem xsi:type="esdl:StringItem" label="OPEX" value="211516498.81331837"/>
          </distribution>
        </kpi>
        <kpi xsi:type="esdl:DistributionKPI" name="Overall cost breakdown (yearly averaged)">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO"/>
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" label="Installation" value="433333.3333333333"/>
            <stringItem xsi:type="esdl:StringItem" label="Investment" value="2143088.201484754"/>
            <stringItem xsi:type="esdl:StringItem" label="Variable OPEX" value="2263761.583826894"/>
            <stringItem xsi:type="esdl:StringItem" label="Fixed OPEX" value="4786788.376617052"/>
          </distribution>
        </kpi>
        <kpi xsi:type="esdl:DistributionKPI" name="Overall cost breakdown (30.0 year period)">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO"/>
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" label="Installation" value="13000000.0"/>
            <stringItem xsi:type="esdl:StringItem" label="Investment" value="64292646.04454263"/>
            <stringItem xsi:type="esdl:StringItem" label="Variable OPEX" value="67912847.51480682"/>
            <stringItem xsi:type="esdl:StringItem" label="Fixed OPEX" value="143603651.29851156"/>
          </distribution>
        </kpi>
        <kpi xsi:type="esdl:DistributionKPI" name="CAPEX breakdown (30.0 year period)">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO"/>
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" label="ResidualHeatSource" value="21966970.94154263"/>
            <stringItem xsi:type="esdl:StringItem" label="Pipe" value="7325675.103"/>
            <stringItem xsi:type="esdl:StringItem" label="HeatingDemand" value="48000000.0"/>
          </distribution>
        </kpi>
        <kpi xsi:type="esdl:DistributionKPI" name="OPEX breakdown (yearly averaged)">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO"/>
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" label="ResidualHeatSource" value="7050549.960443946"/>
          </distribution>
        </kpi>
        <kpi xsi:type="esdl:DistributionKPI" name="OPEX breakdown (30.0 year period)">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO"/>
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" label="ResidualHeatSource" value="211516498.81331837"/>
          </distribution>
        </kpi>
        <kpi xsi:type="esdl:DistributionKPI" name="Energy production (yearly averaged)">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="ENERGY" unit="WATTHOUR"/>
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" label="ResidualHeatSource_72d7" value="22637615838.268948"/>
          </distribution>
        </kpi>
        <kpi xsi:type="esdl:DistributionKPI" name="Area_76a7: Asset cost breakdown">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO"/>
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" label="Installation" value="1000000.0"/>
            <stringItem xsi:type="esdl:StringItem" label="Investment" value="15000000.0"/>
          </distribution>
        </kpi>
        <kpi xsi:type="esdl:DistributionKPI" name="Area_9d0f: Asset cost breakdown">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO"/>
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" label="Installation" value="1000000.0"/>
            <stringItem xsi:type="esdl:StringItem" label="Investment" value="15000000.0"/>
          </distribution>
        </kpi>
        <kpi xsi:type="esdl:DistributionKPI" name="Area_a58a: Asset cost breakdown">
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
