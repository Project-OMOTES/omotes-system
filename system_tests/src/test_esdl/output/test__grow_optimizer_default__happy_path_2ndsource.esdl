<?xml version='1.0' encoding='UTF-8'?>
<esdl:EnergySystem xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:esdl="http://www.tno.nl/esdl" name="PoC Tutorial_SmartControlOptimized_test__grow_optimizer_default__happy_path_2ndsource" id="68647ef8-46bf-4315-9065-ecc51a9b0324" description="" esdlVersion="v2207" version="13">
  <energySystemInformation xsi:type="esdl:EnergySystemInformation" id="5fa7e6e3-5701-48a7-bbbd-cad59a46f6c5">
    <carriers xsi:type="esdl:Carriers" id="42a694c6-9a1b-4cc7-bbae-0b44725f9434">
      <carrier xsi:type="esdl:HeatCommodity" id="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="Primary" supplyTemperature="80.0"/>
      <carrier xsi:type="esdl:HeatCommodity" id="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" returnTemperature="40.0" name="Primary_ret"/>
    </carriers>
    <quantityAndUnits xsi:type="esdl:QuantityAndUnits" id="38f7850a-2090-411e-a15a-84b1d7b78362">
      <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="e9405fc8-5e57-4df5-8584-4babee7cdf1b" description="Power in MW" physicalQuantity="POWER" multiplier="MEGA" unit="WATT"/>
      <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND" id="8ca2bb2e-9048-415d-8282-06a15992f059"/>
      <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT" id="6254e03e-e46d-4372-845c-4dfc817ec88a"/>
      <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="SPEED" unit="METRE" perTimeUnit="SECOND" id="426157dc-664c-4bee-a3be-1c261f9cfe4f"/>
    </quantityAndUnits>
    <dataconfigurations xsi:type="esdl:DataConfigurations" id="6e61458f-e3ed-477b-9051-3caabebd50a2">
      <configurations xsi:type="esdl:DatabaseConfiguration" id="37b4c560-ffc9-4bf6-a71c-7eff0bcc53d8" database="omotes_timeseries" type="POSTGRESQL" host="omotes_postgres" port="6432"/>
    </dataconfigurations>
  </energySystemInformation>
  <instance xsi:type="esdl:Instance" id="9af52a01-24e2-4bbe-a7b8-f868161e6ca3" name="Untitled instance">
    <area xsi:type="esdl:Area" name="Untitled area" id="9edf5aa3-3855-4dac-b6f5-01c2edf1a43a">
      <asset xsi:type="esdl:ResidualHeatSource" power="4066762.4636950865" name="ResidualHeatSource_72d7" id="72d74fb5-134f-4bfb-829e-220ab76a8a7b">
        <geometry xsi:type="esdl:Point" lon="4.372987747192384" lat="52.00467202060717" CRS="WGS84"/>
        <port xsi:type="esdl:OutPort" id="d890f8aa-9b94-493d-b017-bd7cebaf8c77" name="Out" connectedTo="07c2f88e-85be-4b8b-a72e-14364a3810c9" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6">
          <profile xsi:type="esdl:DataTableProfile" id="e831945b-ed1a-4ec4-89a2-627e5ca7a89d" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="HeatIn.Q" filter="&quot;assetId&quot;='72d74fb5-134f-4bfb-829e-220ab76a8a7b'" schema="68647ef8-46bf-4315-9065-ecc51a9b0324" profileType="OUTPUT" configuration="37b4c560-ffc9-4bf6-a71c-7eff0bcc53d8">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="8ca2bb2e-9048-415d-8282-06a15992f059"/>
            <dataSource xsi:type="esdl:DataSource" id="8e0b96a0-793d-49f2-bf09-01f267187de8" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:DataTableProfile" id="e6b38fe6-d2b7-4c42-b60e-067443a7995e" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="Heat_flow" filter="&quot;assetId&quot;='72d74fb5-134f-4bfb-829e-220ab76a8a7b'" schema="68647ef8-46bf-4315-9065-ecc51a9b0324" profileType="OUTPUT" configuration="37b4c560-ffc9-4bf6-a71c-7eff0bcc53d8">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="6254e03e-e46d-4372-845c-4dfc817ec88a"/>
            <dataSource xsi:type="esdl:DataSource" id="bd89aefc-f483-4cdd-8a56-593c7cf92a14" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
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
          <profile xsi:type="esdl:DataTableProfile" id="b40bb784-ed06-467c-a636-d9da4d786131" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="HeatIn.Q" filter="&quot;assetId&quot;='Pipe1'" schema="68647ef8-46bf-4315-9065-ecc51a9b0324" profileType="OUTPUT" configuration="37b4c560-ffc9-4bf6-a71c-7eff0bcc53d8">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="8ca2bb2e-9048-415d-8282-06a15992f059"/>
            <dataSource xsi:type="esdl:DataSource" id="3fc20cf0-81be-463e-a172-ae60f4d1ab89" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:DataTableProfile" id="16920ccd-f1c6-42dd-87b5-55c64867f170" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="Heat_flow" filter="&quot;assetId&quot;='Pipe1'" schema="68647ef8-46bf-4315-9065-ecc51a9b0324" profileType="OUTPUT" configuration="37b4c560-ffc9-4bf6-a71c-7eff0bcc53d8">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="6254e03e-e46d-4372-845c-4dfc817ec88a"/>
            <dataSource xsi:type="esdl:DataSource" id="76ae815d-b69c-4bdc-89f1-9a928744cf6e" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:DataTableProfile" id="bde6ec15-12e6-4881-b679-d31116f648a0" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="PostProc.Velocity" filter="&quot;assetId&quot;='Pipe1'" schema="68647ef8-46bf-4315-9065-ecc51a9b0324" profileType="OUTPUT" configuration="37b4c560-ffc9-4bf6-a71c-7eff0bcc53d8">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="426157dc-664c-4bee-a3be-1c261f9cfe4f"/>
            <dataSource xsi:type="esdl:DataSource" id="84b0b42d-d9dd-4fbb-86e1-f51e49b6288f" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
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
          <profile xsi:type="esdl:DataTableProfile" id="651f24dc-5c81-4a23-bce3-c95e96aa97d8" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="HeatIn.Q" filter="&quot;assetId&quot;='Pipe2'" schema="68647ef8-46bf-4315-9065-ecc51a9b0324" profileType="OUTPUT" configuration="37b4c560-ffc9-4bf6-a71c-7eff0bcc53d8">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="8ca2bb2e-9048-415d-8282-06a15992f059"/>
            <dataSource xsi:type="esdl:DataSource" id="ae7434dc-03b4-4914-b81e-cd22b3893d80" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:DataTableProfile" id="384ca208-1d6a-4316-a48f-faf3b96670c2" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="Heat_flow" filter="&quot;assetId&quot;='Pipe2'" schema="68647ef8-46bf-4315-9065-ecc51a9b0324" profileType="OUTPUT" configuration="37b4c560-ffc9-4bf6-a71c-7eff0bcc53d8">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="6254e03e-e46d-4372-845c-4dfc817ec88a"/>
            <dataSource xsi:type="esdl:DataSource" id="e91b31a0-7354-424f-a481-69a905a907a1" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:DataTableProfile" id="16fdedfb-f6b4-4e86-ad67-d1f86b906b2e" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="PostProc.Velocity" filter="&quot;assetId&quot;='Pipe2'" schema="68647ef8-46bf-4315-9065-ecc51a9b0324" profileType="OUTPUT" configuration="37b4c560-ffc9-4bf6-a71c-7eff0bcc53d8">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="426157dc-664c-4bee-a3be-1c261f9cfe4f"/>
            <dataSource xsi:type="esdl:DataSource" id="82f1fc29-9d30-478a-9b6d-67bef4e29dd8" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
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
          <profile xsi:type="esdl:DataTableProfile" id="7220b3e4-87ae-4136-ba60-c9f084d9dcb4" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="HeatIn.Q" filter="&quot;assetId&quot;='Pipe3'" schema="68647ef8-46bf-4315-9065-ecc51a9b0324" profileType="OUTPUT" configuration="37b4c560-ffc9-4bf6-a71c-7eff0bcc53d8">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="8ca2bb2e-9048-415d-8282-06a15992f059"/>
            <dataSource xsi:type="esdl:DataSource" id="eb6ff12f-fbd6-4dac-9501-ec03e1e83e0f" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:DataTableProfile" id="d578f503-739e-425a-930a-403f487ae74a" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="Heat_flow" filter="&quot;assetId&quot;='Pipe3'" schema="68647ef8-46bf-4315-9065-ecc51a9b0324" profileType="OUTPUT" configuration="37b4c560-ffc9-4bf6-a71c-7eff0bcc53d8">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="6254e03e-e46d-4372-845c-4dfc817ec88a"/>
            <dataSource xsi:type="esdl:DataSource" id="c0b53546-d069-479d-84c5-296d51957fa0" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:DataTableProfile" id="5ca520a5-66fb-484f-9fc7-67fcb38a53cb" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="PostProc.Velocity" filter="&quot;assetId&quot;='Pipe3'" schema="68647ef8-46bf-4315-9065-ecc51a9b0324" profileType="OUTPUT" configuration="37b4c560-ffc9-4bf6-a71c-7eff0bcc53d8">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="426157dc-664c-4bee-a3be-1c261f9cfe4f"/>
            <dataSource xsi:type="esdl:DataSource" id="f9ff4d47-8d48-4827-88c1-49d0c3936f58" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
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
          <profile xsi:type="esdl:DataTableProfile" id="d02dc9ac-990f-4eb9-9908-59f3de034781" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="HeatIn.Q" filter="&quot;assetId&quot;='Pipe4'" schema="68647ef8-46bf-4315-9065-ecc51a9b0324" profileType="OUTPUT" configuration="37b4c560-ffc9-4bf6-a71c-7eff0bcc53d8">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="8ca2bb2e-9048-415d-8282-06a15992f059"/>
            <dataSource xsi:type="esdl:DataSource" id="b9e8339d-c39d-4d72-b3a2-5a0d21a19983" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:DataTableProfile" id="cadff1ad-8b2e-4e08-b665-7c106d973ac6" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="Heat_flow" filter="&quot;assetId&quot;='Pipe4'" schema="68647ef8-46bf-4315-9065-ecc51a9b0324" profileType="OUTPUT" configuration="37b4c560-ffc9-4bf6-a71c-7eff0bcc53d8">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="6254e03e-e46d-4372-845c-4dfc817ec88a"/>
            <dataSource xsi:type="esdl:DataSource" id="6c575bad-3bbe-49c0-8271-6f433d88c84a" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:DataTableProfile" id="9dfce28f-3f23-46c5-99f5-c99452bed898" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="PostProc.Velocity" filter="&quot;assetId&quot;='Pipe4'" schema="68647ef8-46bf-4315-9065-ecc51a9b0324" profileType="OUTPUT" configuration="37b4c560-ffc9-4bf6-a71c-7eff0bcc53d8">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="426157dc-664c-4bee-a3be-1c261f9cfe4f"/>
            <dataSource xsi:type="esdl:DataSource" id="60af4404-2432-47d9-a2be-b4d848a786bd" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
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
          <profile xsi:type="esdl:DataTableProfile" id="4f15c9d0-dfd5-4ca3-ac63-385a908f73dc" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="HeatIn.Q" filter="&quot;assetId&quot;='Pipe5'" schema="68647ef8-46bf-4315-9065-ecc51a9b0324" profileType="OUTPUT" configuration="37b4c560-ffc9-4bf6-a71c-7eff0bcc53d8">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="8ca2bb2e-9048-415d-8282-06a15992f059"/>
            <dataSource xsi:type="esdl:DataSource" id="08ab4cc3-8acd-43a3-ba8e-56a516c557eb" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:DataTableProfile" id="85a9420a-25aa-423d-b045-6a8533d97149" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="Heat_flow" filter="&quot;assetId&quot;='Pipe5'" schema="68647ef8-46bf-4315-9065-ecc51a9b0324" profileType="OUTPUT" configuration="37b4c560-ffc9-4bf6-a71c-7eff0bcc53d8">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="6254e03e-e46d-4372-845c-4dfc817ec88a"/>
            <dataSource xsi:type="esdl:DataSource" id="45487bf3-31cf-4caf-bdad-0556805e9acd" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:DataTableProfile" id="85f9ce0b-fb00-4b49-978a-b8491f0a51c4" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="PostProc.Velocity" filter="&quot;assetId&quot;='Pipe5'" schema="68647ef8-46bf-4315-9065-ecc51a9b0324" profileType="OUTPUT" configuration="37b4c560-ffc9-4bf6-a71c-7eff0bcc53d8">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="426157dc-664c-4bee-a3be-1c261f9cfe4f"/>
            <dataSource xsi:type="esdl:DataSource" id="4da92edb-2da9-40ee-875e-62b7d484a4b8" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
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
          <profile xsi:type="esdl:DataTableProfile" id="11333142-accd-47fb-83b4-708e1c3fdbe1" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" columnName="HeatIn.Q" filter="&quot;assetId&quot;='Pipe1_ret'" schema="68647ef8-46bf-4315-9065-ecc51a9b0324" profileType="OUTPUT" configuration="37b4c560-ffc9-4bf6-a71c-7eff0bcc53d8">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="8ca2bb2e-9048-415d-8282-06a15992f059"/>
            <dataSource xsi:type="esdl:DataSource" id="69fff469-3adf-480f-b22d-523f6db60f9a" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:DataTableProfile" id="0e0667b5-8089-4924-8017-36bc328eb1ec" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" columnName="Heat_flow" filter="&quot;assetId&quot;='Pipe1_ret'" schema="68647ef8-46bf-4315-9065-ecc51a9b0324" profileType="OUTPUT" configuration="37b4c560-ffc9-4bf6-a71c-7eff0bcc53d8">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="6254e03e-e46d-4372-845c-4dfc817ec88a"/>
            <dataSource xsi:type="esdl:DataSource" id="30951044-6c34-49ec-9649-d9c82a744f15" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:DataTableProfile" id="10dc2d8d-a6f7-484b-8a67-464b49afe1a2" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" columnName="PostProc.Velocity" filter="&quot;assetId&quot;='Pipe1_ret'" schema="68647ef8-46bf-4315-9065-ecc51a9b0324" profileType="OUTPUT" configuration="37b4c560-ffc9-4bf6-a71c-7eff0bcc53d8">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="426157dc-664c-4bee-a3be-1c261f9cfe4f"/>
            <dataSource xsi:type="esdl:DataSource" id="6eb03373-20c4-4c03-af16-cc8d69b47cf2" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
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
          <profile xsi:type="esdl:DataTableProfile" id="f5fe63bd-a150-493f-9147-8c586cc9eafe" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" columnName="HeatIn.Q" filter="&quot;assetId&quot;='Pipe2_ret'" schema="68647ef8-46bf-4315-9065-ecc51a9b0324" profileType="OUTPUT" configuration="37b4c560-ffc9-4bf6-a71c-7eff0bcc53d8">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="8ca2bb2e-9048-415d-8282-06a15992f059"/>
            <dataSource xsi:type="esdl:DataSource" id="577cc3e3-a622-455c-ab70-e396770701cf" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:DataTableProfile" id="744f260b-6337-444a-84b0-ad0c6c2cfa1e" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" columnName="Heat_flow" filter="&quot;assetId&quot;='Pipe2_ret'" schema="68647ef8-46bf-4315-9065-ecc51a9b0324" profileType="OUTPUT" configuration="37b4c560-ffc9-4bf6-a71c-7eff0bcc53d8">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="6254e03e-e46d-4372-845c-4dfc817ec88a"/>
            <dataSource xsi:type="esdl:DataSource" id="41e65b77-7050-49a1-8f80-a93990f8b40e" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:DataTableProfile" id="664eefe3-6758-472d-97a8-91ff06c9f6d8" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" columnName="PostProc.Velocity" filter="&quot;assetId&quot;='Pipe2_ret'" schema="68647ef8-46bf-4315-9065-ecc51a9b0324" profileType="OUTPUT" configuration="37b4c560-ffc9-4bf6-a71c-7eff0bcc53d8">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="426157dc-664c-4bee-a3be-1c261f9cfe4f"/>
            <dataSource xsi:type="esdl:DataSource" id="e7bd68d2-0345-4068-ace5-f16019e7626a" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
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
          <profile xsi:type="esdl:DataTableProfile" id="5e8a041b-d2b6-4a65-ad91-c42c8f79e94b" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" columnName="HeatIn.Q" filter="&quot;assetId&quot;='Pipe3_ret'" schema="68647ef8-46bf-4315-9065-ecc51a9b0324" profileType="OUTPUT" configuration="37b4c560-ffc9-4bf6-a71c-7eff0bcc53d8">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="8ca2bb2e-9048-415d-8282-06a15992f059"/>
            <dataSource xsi:type="esdl:DataSource" id="efe24b4a-e406-44a1-a734-d99d2507dad2" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:DataTableProfile" id="780bd5ae-9d95-44c7-8c6a-11e4a0eea79b" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" columnName="Heat_flow" filter="&quot;assetId&quot;='Pipe3_ret'" schema="68647ef8-46bf-4315-9065-ecc51a9b0324" profileType="OUTPUT" configuration="37b4c560-ffc9-4bf6-a71c-7eff0bcc53d8">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="6254e03e-e46d-4372-845c-4dfc817ec88a"/>
            <dataSource xsi:type="esdl:DataSource" id="b3f0a0ec-7a00-49f5-8b93-061914232359" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:DataTableProfile" id="a3a02726-a86d-4d01-9b2d-2341b23fef9e" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" columnName="PostProc.Velocity" filter="&quot;assetId&quot;='Pipe3_ret'" schema="68647ef8-46bf-4315-9065-ecc51a9b0324" profileType="OUTPUT" configuration="37b4c560-ffc9-4bf6-a71c-7eff0bcc53d8">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="426157dc-664c-4bee-a3be-1c261f9cfe4f"/>
            <dataSource xsi:type="esdl:DataSource" id="bd94d85c-d699-4978-a0cb-b15914040b03" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
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
          <profile xsi:type="esdl:DataTableProfile" id="a3b4e30e-d2f9-4085-b3f2-25400abcb665" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" columnName="HeatIn.Q" filter="&quot;assetId&quot;='Pipe4_ret'" schema="68647ef8-46bf-4315-9065-ecc51a9b0324" profileType="OUTPUT" configuration="37b4c560-ffc9-4bf6-a71c-7eff0bcc53d8">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="8ca2bb2e-9048-415d-8282-06a15992f059"/>
            <dataSource xsi:type="esdl:DataSource" id="01b394f5-f7cd-4e0e-b778-e4d21bb36f3c" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:DataTableProfile" id="7b36f7bd-2fb7-4541-ae07-a5a7500906ae" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" columnName="Heat_flow" filter="&quot;assetId&quot;='Pipe4_ret'" schema="68647ef8-46bf-4315-9065-ecc51a9b0324" profileType="OUTPUT" configuration="37b4c560-ffc9-4bf6-a71c-7eff0bcc53d8">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="6254e03e-e46d-4372-845c-4dfc817ec88a"/>
            <dataSource xsi:type="esdl:DataSource" id="99b2f94f-2c20-47f2-a9f8-1970f85b6d12" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:DataTableProfile" id="e9ce12c0-60a9-4934-861c-f39dffbeaeb1" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" columnName="PostProc.Velocity" filter="&quot;assetId&quot;='Pipe4_ret'" schema="68647ef8-46bf-4315-9065-ecc51a9b0324" profileType="OUTPUT" configuration="37b4c560-ffc9-4bf6-a71c-7eff0bcc53d8">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="426157dc-664c-4bee-a3be-1c261f9cfe4f"/>
            <dataSource xsi:type="esdl:DataSource" id="4adeb730-371d-4c7d-a1d9-bdd4272584b8" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
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
          <profile xsi:type="esdl:DataTableProfile" id="a88c7bd1-b9f3-4919-af39-25e6f57c050f" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" columnName="HeatIn.Q" filter="&quot;assetId&quot;='Pipe5_ret'" schema="68647ef8-46bf-4315-9065-ecc51a9b0324" profileType="OUTPUT" configuration="37b4c560-ffc9-4bf6-a71c-7eff0bcc53d8">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="8ca2bb2e-9048-415d-8282-06a15992f059"/>
            <dataSource xsi:type="esdl:DataSource" id="8a352560-8075-4b84-9af2-97d6cf3b033a" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:DataTableProfile" id="47c22622-b18b-4a97-8db3-b90716156f8c" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" columnName="Heat_flow" filter="&quot;assetId&quot;='Pipe5_ret'" schema="68647ef8-46bf-4315-9065-ecc51a9b0324" profileType="OUTPUT" configuration="37b4c560-ffc9-4bf6-a71c-7eff0bcc53d8">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="6254e03e-e46d-4372-845c-4dfc817ec88a"/>
            <dataSource xsi:type="esdl:DataSource" id="ac67553c-1ea7-44e9-b1cd-b2d881b48ba0" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
          <profile xsi:type="esdl:DataTableProfile" id="cb6fd6e9-56af-449d-a16e-9ca69546d30d" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" columnName="PostProc.Velocity" filter="&quot;assetId&quot;='Pipe5_ret'" schema="68647ef8-46bf-4315-9065-ecc51a9b0324" profileType="OUTPUT" configuration="37b4c560-ffc9-4bf6-a71c-7eff0bcc53d8">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="426157dc-664c-4bee-a3be-1c261f9cfe4f"/>
            <dataSource xsi:type="esdl:DataSource" id="8297741c-b759-4fec-9003-4c66e335f6fa" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
          </profile>
        </port>
      </asset>
      <area xsi:type="esdl:Area" name="Area_76a7" id="76a75122-8ea6-472d-8059-374830275d72">
        <asset xsi:type="esdl:HeatingDemand" name="HeatingDemand_b0ff" id="b0ff0df6-4a47-43a5-a0a5-aa10975c0a5c" power="15000000.0">
          <geometry xsi:type="esdl:Point" lon="4.373545646667481" lat="52.00105253065436" CRS="WGS84"/>
          <port xsi:type="esdl:InPort" id="2c5a109b-0d98-47b6-acc1-05e1708f8b85" name="In" connectedTo="5169316d-ae93-4f04-9a34-7c776444b651" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6">
            <profile xsi:type="esdl:InfluxDBProfile" startDate="2018-12-31T23:00:00.000000+0000" filters="" id="b8150ac7-ea23-4be6-b5a3-b6974b8df58d" database="energy_profiles" measurement="WarmingUp default profiles" host="profiles.warmingup.info" field="demand4_MW" port="443" endDate="2019-12-31T22:00:00.000000+0000">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="e9405fc8-5e57-4df5-8584-4babee7cdf1b"/>
            </profile>
          </port>
          <port xsi:type="esdl:OutPort" id="d7eb3623-7481-41bb-911d-2dd9bd67db39" name="Out" connectedTo="5e2f4591-43f2-489f-8eb2-63105dbd0355" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret">
            <profile xsi:type="esdl:DataTableProfile" id="143613c7-f45b-43eb-a11b-848659a7edf7" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="HeatIn.Q" filter="&quot;assetId&quot;='b0ff0df6-4a47-43a5-a0a5-aa10975c0a5c'" schema="68647ef8-46bf-4315-9065-ecc51a9b0324" profileType="OUTPUT" configuration="37b4c560-ffc9-4bf6-a71c-7eff0bcc53d8">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="8ca2bb2e-9048-415d-8282-06a15992f059"/>
              <dataSource xsi:type="esdl:DataSource" id="d42c6527-53c6-4aa1-b966-d4119c1f625d" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
            </profile>
            <profile xsi:type="esdl:DataTableProfile" id="ca6fab73-f2c1-4f6b-9ba8-1d2a812cb8c7" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="Heat_flow" filter="&quot;assetId&quot;='b0ff0df6-4a47-43a5-a0a5-aa10975c0a5c'" schema="68647ef8-46bf-4315-9065-ecc51a9b0324" profileType="OUTPUT" configuration="37b4c560-ffc9-4bf6-a71c-7eff0bcc53d8">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="6254e03e-e46d-4372-845c-4dfc817ec88a"/>
              <dataSource xsi:type="esdl:DataSource" id="5f373a71-10a3-4069-b625-6d47f14cbd2b" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
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
        <KPIs xsi:type="esdl:KPIs" id="67ce24c0-5a86-4987-b43b-b981fe4d2a1a">
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
          <kpi xsi:type="esdl:DoubleKPI" name="Total energy consumed" value="3.7">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="ENERGY" multiplier="GIGA" unit="WATTHOUR"/>
          </kpi>
        </KPIs>
      </area>
      <area xsi:type="esdl:Area" name="Area_9d0f" id="9d0fd9ed-662c-42ec-a417-7e789737084c">
        <asset xsi:type="esdl:HeatingDemand" name="HeatingDemand_08fd" id="08fd3385-681a-4211-a083-51775cc99daa" power="15000000.0">
          <geometry xsi:type="esdl:Point" lon="4.373245239257813" lat="51.99648151568376" CRS="WGS84"/>
          <port xsi:type="esdl:InPort" id="01caa60f-1549-4f3f-817e-e4e6807b2398" name="In" connectedTo="787c6ae3-96da-41e1-af86-6e68a1e28cb1" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6">
            <profile xsi:type="esdl:InfluxDBProfile" startDate="2018-12-31T23:00:00.000000+0000" filters="" id="ddd73fb0-d96f-4127-8d39-869455c77930" database="energy_profiles" measurement="WarmingUp default profiles" host="profiles.warmingup.info" field="demand4_MW" port="443" endDate="2019-12-31T22:00:00.000000+0000">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="e9405fc8-5e57-4df5-8584-4babee7cdf1b"/>
            </profile>
          </port>
          <port xsi:type="esdl:OutPort" id="ca90e0a5-f866-4ec2-9b3b-07f054f1c2b2" name="Out" connectedTo="35ddd90a-e45c-4afd-95b4-80ce6c927071" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret">
            <profile xsi:type="esdl:DataTableProfile" id="c9278fbe-ed8f-4f4a-96db-1da990520a78" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="HeatIn.Q" filter="&quot;assetId&quot;='08fd3385-681a-4211-a083-51775cc99daa'" schema="68647ef8-46bf-4315-9065-ecc51a9b0324" profileType="OUTPUT" configuration="37b4c560-ffc9-4bf6-a71c-7eff0bcc53d8">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="8ca2bb2e-9048-415d-8282-06a15992f059"/>
              <dataSource xsi:type="esdl:DataSource" id="7c0eee48-c383-4181-a19d-bdcddf7b26c0" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
            </profile>
            <profile xsi:type="esdl:DataTableProfile" id="47f2e8bd-e59f-4d42-89ef-f7ae8ad4c7e5" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="Heat_flow" filter="&quot;assetId&quot;='08fd3385-681a-4211-a083-51775cc99daa'" schema="68647ef8-46bf-4315-9065-ecc51a9b0324" profileType="OUTPUT" configuration="37b4c560-ffc9-4bf6-a71c-7eff0bcc53d8">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="6254e03e-e46d-4372-845c-4dfc817ec88a"/>
              <dataSource xsi:type="esdl:DataSource" id="680ff3c4-8137-4b07-aa68-ceb47a0ad58a" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
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
        <KPIs xsi:type="esdl:KPIs" id="e1ce9f6e-e37b-447b-be44-6889aed55c5d">
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
          <kpi xsi:type="esdl:DoubleKPI" name="Total energy consumed" value="3.7">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="ENERGY" multiplier="GIGA" unit="WATTHOUR"/>
          </kpi>
        </KPIs>
      </area>
      <area xsi:type="esdl:Area" name="Area_a58a" id="a58a988c-95c1-492b-bc63-b125d25f5108">
        <asset xsi:type="esdl:HeatingDemand" name="HeatingDemand_8fbe" id="8fbe3d4e-5d5b-4489-9271-9969c2b9e589" power="15000000.0">
          <geometry xsi:type="esdl:Point" lon="4.379038810729981" lat="51.99069441691871" CRS="WGS84"/>
          <port xsi:type="esdl:InPort" id="23cdb929-5cfc-4b8d-963e-06b6e6cf3a5c" name="In" connectedTo="13edd58c-4a04-4770-8aac-c6e8689acbba" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6">
            <profile xsi:type="esdl:InfluxDBProfile" startDate="2018-12-31T23:00:00.000000+0000" filters="" id="5ae97047-619a-4119-84f3-848b36743e5d" database="energy_profiles" measurement="WarmingUp default profiles" host="profiles.warmingup.info" field="demand3_MW" port="443" endDate="2019-12-31T22:00:00.000000+0000">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="e9405fc8-5e57-4df5-8584-4babee7cdf1b"/>
            </profile>
          </port>
          <port xsi:type="esdl:OutPort" id="0fd050fa-15ff-4f1e-b0bd-ef1823365eaa" name="Out" connectedTo="6d1edc18-1962-4d3d-9882-ef27ae1702e8" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret">
            <profile xsi:type="esdl:DataTableProfile" id="b378f4b8-17a4-4320-bf81-10510104e9be" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="HeatIn.Q" filter="&quot;assetId&quot;='8fbe3d4e-5d5b-4489-9271-9969c2b9e589'" schema="68647ef8-46bf-4315-9065-ecc51a9b0324" profileType="OUTPUT" configuration="37b4c560-ffc9-4bf6-a71c-7eff0bcc53d8">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="8ca2bb2e-9048-415d-8282-06a15992f059"/>
              <dataSource xsi:type="esdl:DataSource" id="77c14214-f0b3-48de-9b54-64ca65d3a615" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
            </profile>
            <profile xsi:type="esdl:DataTableProfile" id="f6c7e2c6-0cef-476f-85c2-389aaf6e48b6" startDate="2018-12-31T23:00:00.000000+0000" endDate="2019-12-31T23:00:00.000000+0000" tableName="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" columnName="Heat_flow" filter="&quot;assetId&quot;='8fbe3d4e-5d5b-4489-9271-9969c2b9e589'" schema="68647ef8-46bf-4315-9065-ecc51a9b0324" profileType="OUTPUT" configuration="37b4c560-ffc9-4bf6-a71c-7eff0bcc53d8">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="6254e03e-e46d-4372-845c-4dfc817ec88a"/>
              <dataSource xsi:type="esdl:DataSource" id="aaa6cc93-728f-4c83-854c-81598eb6abf1" name="Optimizer" description="This was created in the optimizer" type="MODEL"/>
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
        <KPIs xsi:type="esdl:KPIs" id="75968995-815a-49ef-9284-8ae7bcf5c7e4">
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
          <kpi xsi:type="esdl:DoubleKPI" name="Total energy consumed" value="3.3">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="ENERGY" multiplier="GIGA" unit="WATTHOUR"/>
          </kpi>
        </KPIs>
      </area>
      <KPIs xsi:type="esdl:KPIs" id="04c0175b-4554-4d15-970f-ace916b9a796">
        <kpi xsi:type="esdl:DistributionKPI" name="High level cost breakdown (yearly averaged)">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO"/>
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" label="CAPEX" value="2380860.6266180873"/>
            <stringItem xsi:type="esdl:StringItem" label="OPEX" value="3640066.673396947"/>
          </distribution>
        </kpi>
        <kpi xsi:type="esdl:DistributionKPI" name="High level cost breakdown (30.0 year period)">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO"/>
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" label="CAPEX" value="71425818.79854262"/>
            <stringItem xsi:type="esdl:StringItem" label="OPEX" value="109202000.20190841"/>
          </distribution>
        </kpi>
        <kpi xsi:type="esdl:DistributionKPI" name="Overall cost breakdown (yearly averaged)">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO"/>
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" label="Installation" value="433333.3333333333"/>
            <stringItem xsi:type="esdl:StringItem" label="Investment" value="1947527.2932847543"/>
            <stringItem xsi:type="esdl:StringItem" label="Variable OPEX" value="1200009.195179895"/>
            <stringItem xsi:type="esdl:StringItem" label="Fixed OPEX" value="2440057.478217052"/>
          </distribution>
        </kpi>
        <kpi xsi:type="esdl:DistributionKPI" name="Overall cost breakdown (30.0 year period)">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO"/>
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" label="Installation" value="13000000.0"/>
            <stringItem xsi:type="esdl:StringItem" label="Investment" value="58425818.798542626"/>
            <stringItem xsi:type="esdl:StringItem" label="Variable OPEX" value="36000275.85539685"/>
            <stringItem xsi:type="esdl:StringItem" label="Fixed OPEX" value="73201724.34651156"/>
          </distribution>
        </kpi>
        <kpi xsi:type="esdl:DistributionKPI" name="CAPEX breakdown (30.0 year period)">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO"/>
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" label="ResidualHeatSource" value="16100143.69554263"/>
            <stringItem xsi:type="esdl:StringItem" label="Pipe" value="7325675.103"/>
            <stringItem xsi:type="esdl:StringItem" label="HeatingDemand" value="48000000.0"/>
          </distribution>
        </kpi>
        <kpi xsi:type="esdl:DistributionKPI" name="OPEX breakdown (yearly averaged)">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO"/>
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" label="ResidualHeatSource" value="3640066.673396947"/>
          </distribution>
        </kpi>
        <kpi xsi:type="esdl:DistributionKPI" name="OPEX breakdown (30.0 year period)">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO"/>
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" label="ResidualHeatSource" value="109202000.20190841"/>
          </distribution>
        </kpi>
        <kpi xsi:type="esdl:DistributionKPI" name="Energy production (yearly averaged)">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="ENERGY" unit="WATTHOUR"/>
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" label="ResidualHeatSource_72d7" value="12000091951.798952"/>
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
