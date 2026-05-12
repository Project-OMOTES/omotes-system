<?xml version='1.0' encoding='UTF-8'?>
<esdl:EnergySystem xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:esdl="http://www.tno.nl/esdl" name="course_model with return network_simulator" id="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" description="basic" esdlVersion="v2111" version="11">
  <energySystemInformation xsi:type="esdl:EnergySystemInformation" id="9a76b800-6e2c-4e99-a9a5-859f7badd061">
    <carriers xsi:type="esdl:Carriers" id="e84423d9-b617-4fa0-b113-1ba12daacaaf">
      <carrier xsi:type="esdl:HeatCommodity" returnTemperature="40.0" id="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" name="supply_ret" supplyTemperature="80.0"/>
      <carrier xsi:type="esdl:HeatCommodity" returnTemperature="40.0" id="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" name="Return_ret" supplyTemperature="80.0"/>
    </carriers>
    <quantityAndUnits xsi:type="esdl:QuantityAndUnits" id="54fda8fc-e725-4c44-8a49-726a811ba069">
      <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="eb07bccb-203f-407e-af98-e687656a221d" description="Energy in GJ" multiplier="GIGA" physicalQuantity="ENERGY" unit="JOULE"/>
      <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="e9405fc8-5e57-4df5-8584-4babee7cdf1b" description="Power in MW" multiplier="MEGA" physicalQuantity="POWER" unit="WATT"/>
      <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="e9405fc8-5e57-4df5-8584-4babee7cdf1a" description="Power in kW" multiplier="KILO" physicalQuantity="POWER" unit="WATT"/>
    </quantityAndUnits>
    <dataSources xsi:type="esdl:DataSources" id="c9b18fb0-2cb9-44c8-bab8-b955e4f85ebf">
      <dataSource xsi:type="esdl:DataSource" id="7cdc8cb2-f686-4029-8f45-1894b8a698de" name="Omotes simulator core run" description="This profile is a simulation results obtained with the Omotes simulator core" reference="https://simulator-core.readthedocs.io/en/latest/" releaseDate="2026-05-12T14:27:34.772462" version="0.0.30" license="GNU GENERAL PUBLIC LICENSE" author="Deltares/TNO" contactDetails="https://github.com/Project-OMOTES"/>
    </dataSources>
  </energySystemInformation>
  <instance xsi:type="esdl:Instance" id="8db3337e-440e-48d1-b1e9-6f86c4f76320" name="Untitled instance">
    <area xsi:type="esdl:Area" id="a3f3b5d9-2faa-4862-a5b0-d02b219052dd" name="Untitled area">
      <asset xsi:type="esdl:HeatingDemand" name="Pijnacker" id="cc61c52a-29a6-45d3-81e8-ce18ba12f319" minTemperature="40.0" maxTemperature="120.0" power="5000000.0">
        <geometry xsi:type="esdl:Point" lat="52.01906782352804" lon="4.431524276733399"/>
        <port xsi:type="esdl:InPort" id="c3eb59bc-037d-4684-918e-df0f54af5b3d" name="In" connectedTo="9e1c58ab-ec19-4964-928f-d2a582af6ce8" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
          <profile xsi:type="esdl:InfluxDBProfile" multiplier="5.0" startDate="2018-12-31T23:00:00.000000+0000" filters="" id="131d801f-9f8e-4dc4-9a8a-82725607eedf" measurement="WarmingUp default profiles" database="energy_profiles" host="profiles.warmingup.info" port="443" field="demand2_MW" endDate="2019-12-31T22:00:00.000000+0000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="e9405fc8-5e57-4df5-8584-4babee7cdf1b"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="8bb68cb5-8cc6-4e80-9e4d-293765de6b1b" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='cc61c52a-29a6-45d3-81e8-ce18ba12f319'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="mass_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" multiplier="KILO" unit="GRAM" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="3fd1020c-fffa-4bcf-b9be-0911280ee5ff" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='cc61c52a-29a6-45d3-81e8-ce18ba12f319'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="pressure">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="8327b062-48bb-4971-9b66-7bbef8568cf5" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='cc61c52a-29a6-45d3-81e8-ce18ba12f319'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="temperature">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="32497fdc-f78c-4341-a81a-bac28d8fbfa9" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='cc61c52a-29a6-45d3-81e8-ce18ba12f319'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="volume_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" id="fcf96c55-8264-41a5-90ee-0977a394a46a" name="Out" connectedTo="99628a79-e31c-4a99-bf4a-2f788a5d5343" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="465eef5a-5092-4a3f-bec0-bb26efb6a2e7" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='cc61c52a-29a6-45d3-81e8-ce18ba12f319'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="mass_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" multiplier="KILO" unit="GRAM" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="40063757-1204-45de-9543-53610d48a74c" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='cc61c52a-29a6-45d3-81e8-ce18ba12f319'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="pressure">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="dc4fe3a2-ac42-4016-a56b-c7869c6170a0" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='cc61c52a-29a6-45d3-81e8-ce18ba12f319'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="temperature">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="35c510eb-c47e-42bc-bafa-c98707a8c474" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='cc61c52a-29a6-45d3-81e8-ce18ba12f319'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="volume_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="97924114-f740-4b36-a913-39f3fc970604" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='cc61c52a-29a6-45d3-81e8-ce18ba12f319'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="heat_demand_set_point">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="10f3ab5a-c75e-4f43-86e4-786adfcdac29" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='cc61c52a-29a6-45d3-81e8-ce18ba12f319'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="heat_demand">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:HeatingDemand" name="Delfgauw" id="8805731a-8780-47b4-8204-76ba074564bc" minTemperature="40.0" maxTemperature="120.0" power="5000000000.0">
        <geometry xsi:type="esdl:Point" lat="52.0094006941874" lon="4.396162033081056"/>
        <port xsi:type="esdl:InPort" id="69464799-3ec3-4928-a5da-6158a6237c76" name="In" connectedTo="88b6c35c-7eeb-42e9-ba4e-491fa6c7a6fc" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
          <profile xsi:type="esdl:InfluxDBProfile" multiplier="5.0" startDate="2018-12-31T23:00:00.000000+0000" filters="" id="0380fe5a-611c-4523-9eda-1d0ecd69271e" measurement="WarmingUp default profiles" database="energy_profiles" host="profiles.warmingup.info" port="443" field="demand1_MW" endDate="2019-12-31T22:00:00.000000+0000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="e9405fc8-5e57-4df5-8584-4babee7cdf1b"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="c7a89ad4-177c-4ad0-ab47-2b4d80910a0e" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='8805731a-8780-47b4-8204-76ba074564bc'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="mass_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" multiplier="KILO" unit="GRAM" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="ce4b161d-2a68-479e-b9e2-b13822767c83" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='8805731a-8780-47b4-8204-76ba074564bc'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="pressure">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="e17b4080-7c6f-46dc-81a1-6228359a9dd2" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='8805731a-8780-47b4-8204-76ba074564bc'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="temperature">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="684d3d16-0552-4885-b7fb-07d275158e90" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='8805731a-8780-47b4-8204-76ba074564bc'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="volume_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" id="c8625b7f-e9ad-4327-899e-0c6e91e873cb" name="Out" connectedTo="1467bee7-ed90-49d5-8395-3595408ad1ee" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="59a98835-41c0-45cf-932a-946cf399d3f2" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='8805731a-8780-47b4-8204-76ba074564bc'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="mass_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" multiplier="KILO" unit="GRAM" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="70b9ee51-12b9-437a-816b-d2a69d83d451" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='8805731a-8780-47b4-8204-76ba074564bc'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="pressure">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="9d7d42bf-db71-4fd1-8251-bc78b7b86cec" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='8805731a-8780-47b4-8204-76ba074564bc'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="temperature">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="def30fa5-b246-4969-a6b7-60694e9b9a47" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='8805731a-8780-47b4-8204-76ba074564bc'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="volume_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="4b2dd8ec-a537-49ee-a24e-710b542e0527" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='8805731a-8780-47b4-8204-76ba074564bc'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="heat_demand_set_point">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="f5eb8086-ca28-4ff4-84ed-f06caad2c7aa" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='8805731a-8780-47b4-8204-76ba074564bc'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="heat_demand">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:HeatingDemand" name="Nootdorp" id="156c4afb-4106-4286-8f41-fbf8edc6e5ce" minTemperature="40.0" maxTemperature="120.0" power="5000000.0">
        <geometry xsi:type="esdl:Point" lat="52.04277777849674" lon="4.3912696838378915"/>
        <port xsi:type="esdl:InPort" id="ad377fa7-710f-45e7-9144-1521bef5c1ab" name="In" connectedTo="22be2ae1-10c0-42eb-abd9-6b115b800283" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
          <profile xsi:type="esdl:InfluxDBProfile" multiplier="5.0" startDate="2018-12-31T23:00:00.000000+0000" filters="" id="57131b4a-f177-47da-b7d7-788f23eefb5b" measurement="WarmingUp default profiles" database="energy_profiles" host="profiles.warmingup.info" port="443" field="demand3_MW" endDate="2019-12-31T22:00:00.000000+0000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="e9405fc8-5e57-4df5-8584-4babee7cdf1b"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="9fcf0beb-7035-4881-93b8-89c196259b82" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='156c4afb-4106-4286-8f41-fbf8edc6e5ce'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="mass_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" multiplier="KILO" unit="GRAM" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="0af192c6-b1fb-42c6-99b7-f53e781e0f99" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='156c4afb-4106-4286-8f41-fbf8edc6e5ce'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="pressure">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="1ed80f3b-6c50-4632-a4dd-8da7d04032f5" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='156c4afb-4106-4286-8f41-fbf8edc6e5ce'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="temperature">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="db94ccad-d277-4220-8119-8856bb713ab2" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='156c4afb-4106-4286-8f41-fbf8edc6e5ce'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="volume_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" id="f46090b9-dcd6-433f-b021-061c839e634c" name="Out" connectedTo="fdbab763-3e05-49d6-9271-207035c14bcb" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="e3cc1691-2c3c-4680-adc6-f557948c406c" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='156c4afb-4106-4286-8f41-fbf8edc6e5ce'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="mass_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" multiplier="KILO" unit="GRAM" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="9c618bb9-9886-4ee4-a37e-bea2818e82fe" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='156c4afb-4106-4286-8f41-fbf8edc6e5ce'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="pressure">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="6b372427-2c0e-40f0-9361-62d20d958927" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='156c4afb-4106-4286-8f41-fbf8edc6e5ce'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="temperature">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="dd31d2d0-0e01-40ef-9466-6fd7e149fd9f" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='156c4afb-4106-4286-8f41-fbf8edc6e5ce'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="volume_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="b7ddc98b-d114-4c4e-b235-d4184d6ed747" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='156c4afb-4106-4286-8f41-fbf8edc6e5ce'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="heat_demand_set_point">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="e09fc592-77ab-45cf-af74-b6488ca67bec" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='156c4afb-4106-4286-8f41-fbf8edc6e5ce'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="heat_demand">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Joint" name="Joint_1126" id="11262f35-3d51-4ce3-9a69-6eb4a6c46c9d">
        <geometry xsi:type="esdl:Point" lon="4.401419162750245" lat="52.01909093233181" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" id="a8779f8a-3d61-4a97-bfb4-35029175ec97" name="In" connectedTo="7c178a7c-f6cb-4f33-8c4a-076d9131ed8a" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret"/>
        <port xsi:type="esdl:OutPort" id="fd562e07-a60c-4f5c-9084-d51e736ff545" name="Out" connectedTo="a89b5045-f815-4126-a4c8-dc125a99c0f8 b9af6540-8cae-41ce-b0c3-4528e027d3b3" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret"/>
      </asset>
      <asset xsi:type="esdl:Pipe" name="Pipe1" innerDiameter="0.08" length="1533.2" id="Pipe1" outerDiameter="0.09" related="Pipe1_ret">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.01909093233181" lon="4.401419162750245"/>
          <point xsi:type="esdl:Point" lat="52.01563438289948" lon="4.391613006591798"/>
          <point xsi:type="esdl:Point" lat="52.0094006941874" lon="4.396162033081056"/>
        </geometry>
        <port xsi:type="esdl:InPort" id="a89b5045-f815-4126-a4c8-dc125a99c0f8" name="In" connectedTo="fd562e07-a60c-4f5c-9084-d51e736ff545" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="a7053099-e6bf-4bc2-b3e8-51497180a00b" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='Pipe1'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="mass_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" multiplier="KILO" unit="GRAM" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="5763cdcd-d131-476c-b27e-79996fa287b7" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='Pipe1'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="pressure">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="8d953fe2-9cb4-4dfe-b936-df304d2bdd30" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='Pipe1'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="temperature">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="64cf2bd1-14db-4230-b1b5-44c109fcf1c3" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='Pipe1'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="volume_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="25e94d3d-b001-4677-931b-2082b6bc4ec6" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='Pipe1'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="velocity">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="SPEED" unit="METRE" perTimeUnit="SECOND"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" id="88b6c35c-7eeb-42e9-ba4e-491fa6c7a6fc" name="Out" connectedTo="69464799-3ec3-4928-a5da-6158a6237c76" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="725c53c6-515a-4689-8075-f9b0624cb251" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='Pipe1'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="mass_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" multiplier="KILO" unit="GRAM" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="8428f9f9-996c-4129-8774-abe2ea9fd84c" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='Pipe1'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="pressure">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="0a195ba9-1256-437d-8dce-5451acd322df" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='Pipe1'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="temperature">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="6189f548-76eb-4b56-8822-1610617b5209" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='Pipe1'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="volume_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="41de5b94-6758-4250-9111-eb9e043f6acc" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='Pipe1'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="velocity">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="SPEED" unit="METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="e00f16fb-3f13-480f-8faf-85348f6fbefc" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='Pipe1'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="pressure_loss">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="3c360ced-083d-4b50-b5d3-541234b03d17" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='Pipe1'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="pressure_loss_per_length">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="3ef7bb08-7ec6-42eb-8b68-a66a92d73a25" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='Pipe1'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="heat_loss">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Pipe" name="Pipe2" innerDiameter="0.2" length="44.4" id="Pipe2" outerDiameter="0.21" related="Pipe2_ret">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.019437562955694" lon="4.401097297668458"/>
          <point xsi:type="esdl:Point" lat="52.01909093233181" lon="4.401419162750245"/>
        </geometry>
        <port xsi:type="esdl:InPort" id="30f746ff-aca7-4e55-946e-3dcaf2ac7569" name="In" connectedTo="7dde77c4-a956-4496-b8b9-e714317cc0f2" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="39c76781-1d03-499b-8c53-421ebce068da" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='Pipe2'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="mass_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" multiplier="KILO" unit="GRAM" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="5ca26eaa-34e7-433b-8ccf-130f2835fbfb" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='Pipe2'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="pressure">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="15ffd2e1-a76b-48f7-beb7-affc70b7089b" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='Pipe2'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="temperature">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="797d5c5f-8295-4847-9117-25ebe920bd19" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='Pipe2'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="volume_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="bd51acab-d9f6-43ca-87ad-a3f9ebec59f8" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='Pipe2'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="velocity">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="SPEED" unit="METRE" perTimeUnit="SECOND"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" id="7c178a7c-f6cb-4f33-8c4a-076d9131ed8a" name="Out" connectedTo="a8779f8a-3d61-4a97-bfb4-35029175ec97" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="3c9f0168-5d1d-45e6-b9e4-b7b50304c198" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='Pipe2'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="mass_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" multiplier="KILO" unit="GRAM" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="cb850339-a035-4b80-bd73-0f2b6e0760f2" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='Pipe2'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="pressure">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="4f5a9021-81cd-44bf-b240-9e34feed5ce1" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='Pipe2'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="temperature">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="204f7f22-f5db-4da4-b8c0-a6c2dc80fd8a" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='Pipe2'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="volume_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="1515c9b4-cbde-4bb4-8e3d-43fa8a76f751" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='Pipe2'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="velocity">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="SPEED" unit="METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="7e75a72d-5c9e-4184-af33-e54340ac8c7a" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='Pipe2'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="pressure_loss">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="67bbc1e0-2c6d-4b00-a576-2fa25639bd5a" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='Pipe2'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="pressure_loss_per_length">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="91ce50d7-1fdc-4c58-8ca2-7c12489e9234" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='Pipe2'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="heat_loss">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Joint" name="Joint_91b0" id="91b0e057-84cd-4db3-8d2d-cae02077cbaf">
        <geometry xsi:type="esdl:Point" lon="4.422471821308137" lat="52.02578372981452" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" id="6829cf4d-0dd9-43ac-8581-87b9998ca5bc" name="In" connectedTo="607e9ed3-3e2e-4c08-bffe-0d713420cce7" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret"/>
        <port xsi:type="esdl:OutPort" id="416291d2-c5f7-4a87-919a-655924b90eb2" name="Out" connectedTo="e3b7d0a5-e7d7-4cb2-8a33-e56d2077616b 758212e1-ab7f-44b1-a203-6ed42eb3c6bc" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret"/>
      </asset>
      <asset xsi:type="esdl:Pipe" name="Pipe3" innerDiameter="0.1" length="1157.3" id="Pipe3" outerDiameter="0.11" related="Pipe3_ret">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.02578372981452" lon="4.422471821308137"/>
          <point xsi:type="esdl:Point" lat="52.02318760445455" lon="4.425044059753419"/>
          <point xsi:type="esdl:Point" lat="52.02034869350056" lon="4.4269752502441415"/>
          <point xsi:type="esdl:Point" lat="52.018381156483095" lon="4.428133964538575"/>
          <point xsi:type="esdl:Point" lat="52.01906782352804" lon="4.431524276733399"/>
        </geometry>
        <port xsi:type="esdl:InPort" id="e3b7d0a5-e7d7-4cb2-8a33-e56d2077616b" name="In" connectedTo="416291d2-c5f7-4a87-919a-655924b90eb2" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="df4ea4b0-9484-44f8-aaa7-573a7cbe6d10" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='Pipe3'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="mass_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" multiplier="KILO" unit="GRAM" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="907419cb-8cc8-4503-b9e6-303e7d22e65e" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='Pipe3'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="pressure">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="5dfc7170-3421-4d44-bcf3-f139f5ad6a20" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='Pipe3'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="temperature">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="94680bae-6fe3-449a-be2e-acb062e95caa" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='Pipe3'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="volume_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="e1a9bacc-5383-4aba-9000-ebe3969c8135" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='Pipe3'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="velocity">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="SPEED" unit="METRE" perTimeUnit="SECOND"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" id="9e1c58ab-ec19-4964-928f-d2a582af6ce8" name="Out" connectedTo="c3eb59bc-037d-4684-918e-df0f54af5b3d" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="24c040e0-5e89-4194-bd62-52c6ee616d91" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='Pipe3'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="mass_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" multiplier="KILO" unit="GRAM" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="b97e8383-16d3-4d00-a598-838cb5b09455" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='Pipe3'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="pressure">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="55b65f44-e13c-424f-a806-a3a07b96628f" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='Pipe3'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="temperature">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="c23dc898-cc96-4676-a323-0b2fac806546" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='Pipe3'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="volume_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="091b6d9a-0d07-4604-9148-4e7fa0326b38" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='Pipe3'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="velocity">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="SPEED" unit="METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="356bd9ef-9a7d-43ee-827c-4790adb392f6" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='Pipe3'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="pressure_loss">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="f8d27310-078a-4e31-af1d-04a942934eb4" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='Pipe3'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="pressure_loss_per_length">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="55af2456-d88c-4725-b022-e9a29d3bf3d2" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='Pipe3'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="heat_loss">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Pipe" name="Pipe4" innerDiameter="0.1" length="2982.2" id="Pipe4" outerDiameter="0.11" related="Pipe4_ret">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.02578372981452" lon="4.422471821308137"/>
          <point xsi:type="esdl:Point" lat="52.030501921460775" lon="4.419465065002442"/>
          <point xsi:type="esdl:Point" lat="52.033379790423076" lon="4.416353702545167"/>
          <point xsi:type="esdl:Point" lat="52.035940674013524" lon="4.408607482910157"/>
          <point xsi:type="esdl:Point" lat="52.03683826859462" lon="4.405066967010499"/>
          <point xsi:type="esdl:Point" lat="52.03810543026395" lon="4.400925636291505"/>
          <point xsi:type="esdl:Point" lat="52.04211787192499" lon="4.393007755279542"/>
          <point xsi:type="esdl:Point" lat="52.04283057060157" lon="4.391098022460938"/>
        </geometry>
        <port xsi:type="esdl:InPort" id="758212e1-ab7f-44b1-a203-6ed42eb3c6bc" name="In" connectedTo="416291d2-c5f7-4a87-919a-655924b90eb2" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="82d6670f-8256-429a-a458-807ee2cf5aab" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='Pipe4'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="mass_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" multiplier="KILO" unit="GRAM" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="dce4ebaf-9c9b-4388-af9a-f8858eb4fd91" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='Pipe4'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="pressure">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="04fdf953-2fe6-4d47-8a28-899ad6f809f0" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='Pipe4'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="temperature">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="790e8c18-7552-4766-9e65-4a2d5aa08521" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='Pipe4'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="volume_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="bff0ebce-5949-4ef2-a339-04d1113690b9" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='Pipe4'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="velocity">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="SPEED" unit="METRE" perTimeUnit="SECOND"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" id="22be2ae1-10c0-42eb-abd9-6b115b800283" name="Out" connectedTo="ad377fa7-710f-45e7-9144-1521bef5c1ab" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="cd48beb0-7659-4a61-9441-44feef3148b0" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='Pipe4'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="mass_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" multiplier="KILO" unit="GRAM" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="0af271a5-8cb9-4f4a-9caa-c8b99843aa37" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='Pipe4'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="pressure">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="615ca992-25bf-4337-9439-f0cd0fe3abc3" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='Pipe4'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="temperature">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="48b9f539-d31d-48e0-9720-485fbdc91463" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='Pipe4'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="volume_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="b085d449-db87-44b9-ba42-6e2304ad893f" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='Pipe4'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="velocity">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="SPEED" unit="METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="5334291a-a22d-41fc-94ba-9f26cf5c0ae5" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='Pipe4'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="pressure_loss">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="60d28ff5-164e-468b-88ea-09dbff691219" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='Pipe4'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="pressure_loss_per_length">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="1ca13027-aa38-4b29-9a9b-cd8d9170ffe0" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='Pipe4'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="heat_loss">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Joint" name="Joint_1126_ret" id="c6fec31e-2c4a-423d-937c-7fc28ea81a21">
        <geometry xsi:type="esdl:Point" lon="4.400719145015912" lat="52.019180932421804" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" id="c06f582d-1922-47e3-ae04-a740b28353e3" name="ret_port" connectedTo="b4a30d86-df7a-4136-9170-55087818800d 35ff6c51-ecdc-419c-9e67-8dbbf4ccaa42" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret"/>
        <port xsi:type="esdl:OutPort" id="39c08ebb-b7d8-4a85-a226-800c225a8a61" name="ret_port" connectedTo="fb153d7c-2dc3-4f53-bbee-f0060efef1c7" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret"/>
      </asset>
      <asset xsi:type="esdl:Joint" name="Joint_91b0_ret" id="b7a46b09-779f-4a57-b73e-ab707ec65842">
        <geometry xsi:type="esdl:Point" lon="4.421796245126029" lat="52.02587372990452" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" id="9a5c2e7e-e970-4561-8538-9a4000dee416" name="ret_port" connectedTo="002a5802-e55b-4025-abe9-8d508cfdd78c 0c142bfb-4b38-44aa-b88f-71da247525ef" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret"/>
        <port xsi:type="esdl:OutPort" id="3383078a-72da-4af1-badf-686f43c73018" name="ret_port" connectedTo="bbb482fa-f98e-4219-ab7e-d8684b0b4e66" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret"/>
      </asset>
      <asset xsi:type="esdl:Pipe" name="Pipe1_ret" innerDiameter="0.08" length="1533.2" id="Pipe1_ret" outerDiameter="0.09" related="Pipe1">
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" lon="4.3954232586139" lat="52.009490694277396" CRS="WGS84"/>
          <point xsi:type="esdl:Point" lon="4.3908996472617385" lat="52.015724382989475" CRS="WGS84"/>
          <point xsi:type="esdl:Point" lon="4.400719145015912" lat="52.019180932421804" CRS="WGS84"/>
        </geometry>
        <port xsi:type="esdl:InPort" id="1467bee7-ed90-49d5-8395-3595408ad1ee" name="In_ret" connectedTo="c8625b7f-e9ad-4327-899e-0c6e91e873cb" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="62fab2fb-0e84-4b9f-85fc-e49fb9de0e33" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='Pipe1_ret'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="mass_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" multiplier="KILO" unit="GRAM" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="2d2d29dc-4369-45d8-bb02-d0df69375ed7" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='Pipe1_ret'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="pressure">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="7d49a641-71ad-44e2-9f62-3eed239e196a" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='Pipe1_ret'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="temperature">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="bd47daf5-1ce9-405b-9db3-52e2e83af0f2" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='Pipe1_ret'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="volume_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="a2dc9158-0211-4531-9c56-dd5fdee21000" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='Pipe1_ret'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="velocity">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="SPEED" unit="METRE" perTimeUnit="SECOND"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" id="b4a30d86-df7a-4136-9170-55087818800d" name="Out_ret" connectedTo="c06f582d-1922-47e3-ae04-a740b28353e3" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="8879d8e6-c43f-4ce9-a1ff-bb42724a8fff" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='Pipe1_ret'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="mass_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" multiplier="KILO" unit="GRAM" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="0e44b19c-d11f-4c33-9112-34c459c9065e" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='Pipe1_ret'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="pressure">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="da42b1b3-abf2-472f-9fcd-905518d95ef5" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='Pipe1_ret'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="temperature">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="d60ae124-d000-46c7-952e-e3d287f9d93c" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='Pipe1_ret'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="volume_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="7faf93a0-9e1d-49d2-832c-fa19eb27b821" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='Pipe1_ret'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="velocity">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="SPEED" unit="METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="899c21eb-aeca-43b9-bb66-fd39152d3d07" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='Pipe1_ret'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="pressure_loss">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="9c5e50a7-ec33-4ba3-88a2-f1d34fb7fb8b" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='Pipe1_ret'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="pressure_loss_per_length">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="4471f636-bafe-4390-9ccf-bb3fa60ffd84" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='Pipe1_ret'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="heat_loss">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Pipe" name="Pipe2_ret" innerDiameter="0.2" length="44.4" id="Pipe2_ret" outerDiameter="0.21" related="Pipe2">
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" lon="4.400719145015912" lat="52.019180932421804" CRS="WGS84"/>
          <point xsi:type="esdl:Point" lon="4.400398589922203" lat="52.01952756304569" CRS="WGS84"/>
        </geometry>
        <port xsi:type="esdl:InPort" id="fb153d7c-2dc3-4f53-bbee-f0060efef1c7" name="In_ret" connectedTo="39c08ebb-b7d8-4a85-a226-800c225a8a61" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="362a44a6-c5a0-41db-a5c4-1f6d2cd754b3" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='Pipe2_ret'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="mass_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" multiplier="KILO" unit="GRAM" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="eee97e32-7b34-4ddf-ade5-9acae23dd67c" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='Pipe2_ret'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="pressure">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="3e973575-6370-4180-bb41-f39d082ef0a3" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='Pipe2_ret'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="temperature">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="d31a039f-dcf7-450f-b912-f98bd1f1e759" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='Pipe2_ret'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="volume_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="aa14c29a-5577-44f7-a619-39a78e597b3b" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='Pipe2_ret'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="velocity">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="SPEED" unit="METRE" perTimeUnit="SECOND"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" id="095f2c36-395f-4183-a760-80d5362e1de3" name="Out_ret" connectedTo="f8113571-6167-4850-b558-f97f39a0a3f3" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="39d3b895-a97a-4b87-a381-e4f8639c9914" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='Pipe2_ret'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="mass_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" multiplier="KILO" unit="GRAM" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="55b13a94-4906-47d3-9b41-c31b02842f14" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='Pipe2_ret'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="pressure">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="798fd36c-d645-4da7-b631-879d017ccb56" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='Pipe2_ret'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="temperature">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="99051ef1-48e7-4d15-a533-3c877583c710" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='Pipe2_ret'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="volume_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="1ca1fdd5-fbb1-4365-a01f-beec9200b22a" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='Pipe2_ret'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="velocity">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="SPEED" unit="METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="316b9363-461b-4984-a621-88c349104ec9" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='Pipe2_ret'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="pressure_loss">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="c4af1c63-8af3-4b29-8d65-477ad3c9d515" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='Pipe2_ret'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="pressure_loss_per_length">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="32a9beca-4598-43e2-bab6-18b7262ea5cd" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='Pipe2_ret'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="heat_loss">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Pipe" name="Pipe3_ret" innerDiameter="0.1" length="1157.3" id="Pipe3_ret" outerDiameter="0.11" related="Pipe3">
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" lon="4.4308241714884975" lat="52.01915782361804" CRS="WGS84"/>
          <point xsi:type="esdl:Point" lon="4.427431248765651" lat="52.01847115657309" CRS="WGS84"/>
          <point xsi:type="esdl:Point" lon="4.426279962182911" lat="52.020438693590556" CRS="WGS84"/>
          <point xsi:type="esdl:Point" lon="4.42435921177036" lat="52.023277604544546" CRS="WGS84"/>
          <point xsi:type="esdl:Point" lon="4.421796245126029" lat="52.02587372990452" CRS="WGS84"/>
        </geometry>
        <port xsi:type="esdl:InPort" id="99628a79-e31c-4a99-bf4a-2f788a5d5343" name="In_ret" connectedTo="fcf96c55-8264-41a5-90ee-0977a394a46a" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="7b1b2d4d-2818-4c52-bcf1-9e4064ed7d1a" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='Pipe3_ret'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="mass_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" multiplier="KILO" unit="GRAM" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="d8ec5fd9-07f7-40fd-9a46-fde8d7ea1933" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='Pipe3_ret'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="pressure">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="4aab2a13-7297-4211-abf8-ff306a4a8288" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='Pipe3_ret'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="temperature">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="aa9b4a06-16f3-432d-9cfb-b38dadc57540" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='Pipe3_ret'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="volume_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="c6d3f4fe-3c17-4bca-a995-242059d702da" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='Pipe3_ret'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="velocity">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="SPEED" unit="METRE" perTimeUnit="SECOND"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" id="002a5802-e55b-4025-abe9-8d508cfdd78c" name="Out_ret" connectedTo="9a5c2e7e-e970-4561-8538-9a4000dee416" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="d6f56e39-005e-4d3c-ae0b-d2c06bb31cbd" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='Pipe3_ret'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="mass_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" multiplier="KILO" unit="GRAM" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="416097ca-44dd-4bc9-99d3-96ad042c1631" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='Pipe3_ret'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="pressure">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="8e867445-3a93-4c68-b78e-40c30ab44f79" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='Pipe3_ret'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="temperature">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="54471437-c8cd-4b09-8856-0dd12ff29345" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='Pipe3_ret'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="volume_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="77acb465-ca99-4f70-9692-b9db20911738" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='Pipe3_ret'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="velocity">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="SPEED" unit="METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="80b45783-f7bf-4cec-a008-f088ce4fd08a" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='Pipe3_ret'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="pressure_loss">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="f5fd4118-fc5b-494f-871c-6431196873cb" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='Pipe3_ret'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="pressure_loss_per_length">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="08a01d57-765f-41a8-810c-b777d913005c" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='Pipe3_ret'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="heat_loss">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Pipe" name="Pipe4_ret" innerDiameter="0.1" length="2982.2" id="Pipe4_ret" outerDiameter="0.11" related="Pipe4">
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" lon="4.390477502296783" lat="52.04292057069157" CRS="WGS84"/>
          <point xsi:type="esdl:Point" lon="4.392385117209615" lat="52.042207872014984" CRS="WGS84"/>
          <point xsi:type="esdl:Point" lon="4.400290793359585" lat="52.038195430353944" CRS="WGS84"/>
          <point xsi:type="esdl:Point" lon="4.404428167491401" lat="52.03692826868462" CRS="WGS84"/>
          <point xsi:type="esdl:Point" lon="4.407965850141681" lat="52.03603067410352" CRS="WGS84"/>
          <point xsi:type="esdl:Point" lon="4.41570384355307" lat="52.033469790513074" CRS="WGS84"/>
          <point xsi:type="esdl:Point" lon="4.418805700922162" lat="52.03059192155077" CRS="WGS84"/>
          <point xsi:type="esdl:Point" lon="4.421796245126029" lat="52.02587372990452" CRS="WGS84"/>
        </geometry>
        <port xsi:type="esdl:InPort" id="fdbab763-3e05-49d6-9271-207035c14bcb" name="In_ret" connectedTo="f46090b9-dcd6-433f-b021-061c839e634c" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="1c2f3ee8-d2e4-4a28-b38e-250bcd46e8f2" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='Pipe4_ret'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="mass_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" multiplier="KILO" unit="GRAM" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="d87e4dd0-dcf2-4363-9751-603a24b3646b" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='Pipe4_ret'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="pressure">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="835a18b1-36bf-42c8-8d6c-2e46ef2c206f" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='Pipe4_ret'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="temperature">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="cea79305-5c4e-4cc8-b186-62fee243cd70" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='Pipe4_ret'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="volume_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="e512e6fd-8867-495b-9ce9-fceac23fd70a" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='Pipe4_ret'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="velocity">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="SPEED" unit="METRE" perTimeUnit="SECOND"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" id="0c142bfb-4b38-44aa-b88f-71da247525ef" name="Out_ret" connectedTo="9a5c2e7e-e970-4561-8538-9a4000dee416" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="0076d040-99b6-4f14-b14b-7bdc25db6308" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='Pipe4_ret'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="mass_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" multiplier="KILO" unit="GRAM" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="1a77d497-6b8a-498e-b98b-b9f742aa1b60" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='Pipe4_ret'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="pressure">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="b9f9aa2e-ebcb-49b0-b5e1-16b797346564" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='Pipe4_ret'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="temperature">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="c8bb5834-8c1d-4f92-9fb3-7e857995b9d6" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='Pipe4_ret'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="volume_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="fb3ab1da-c050-4d6e-8296-57e4de5384ef" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='Pipe4_ret'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="velocity">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="SPEED" unit="METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="8e80f4d7-7829-439f-8aab-e9dffc486492" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='Pipe4_ret'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="pressure_loss">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="c96eed6b-6715-4ef0-8a21-1d636a53c724" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='Pipe4_ret'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="pressure_loss_per_length">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="07a0e944-b5bb-4b72-9737-410a29fcae81" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='Pipe4_ret'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="heat_loss">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Pipe" name="Pipe5_a" innerDiameter="0.15" length="625.29" id="2b5ba02c-bbfe-4bb9-9e4e-48c4c45c53e9" outerDiameter="0.16">
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" lat="52.01909093233181" lon="4.401419162750245"/>
          <point xsi:type="esdl:Point" lat="52.02149748382286" lon="4.408371448516847"/>
          <point xsi:type="esdl:Point" lat="52.021827590527295" lon="4.409401416778565"/>
        </geometry>
        <port xsi:type="esdl:InPort" id="b9af6540-8cae-41ce-b0c3-4528e027d3b3" name="In" connectedTo="fd562e07-a60c-4f5c-9084-d51e736ff545" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="abbde936-2b8d-45ff-922c-e3c4621d5ad3" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='2b5ba02c-bbfe-4bb9-9e4e-48c4c45c53e9'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="mass_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" multiplier="KILO" unit="GRAM" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="befa4acc-4e3f-479e-aa81-3dfbd17fc7f4" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='2b5ba02c-bbfe-4bb9-9e4e-48c4c45c53e9'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="pressure">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="99d0d867-5983-421f-9b97-dbaef43acd3d" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='2b5ba02c-bbfe-4bb9-9e4e-48c4c45c53e9'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="temperature">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="4b97f926-358a-4977-a0c0-668c68dcf96a" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='2b5ba02c-bbfe-4bb9-9e4e-48c4c45c53e9'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="volume_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="cacdc2b1-25cb-40f4-9032-b1d588e804e6" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='2b5ba02c-bbfe-4bb9-9e4e-48c4c45c53e9'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="velocity">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="SPEED" unit="METRE" perTimeUnit="SECOND"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" id="37a4d419-e788-4ca7-a033-3a06c6872fdf" name="Out" connectedTo="9b3744f2-f9f0-4e32-a118-e116154e1384" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="298a1264-da0a-428d-b19d-3f926fa990ae" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='2b5ba02c-bbfe-4bb9-9e4e-48c4c45c53e9'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="mass_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" multiplier="KILO" unit="GRAM" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="2870afe9-7e6a-4dfb-8be3-27bdd58624e4" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='2b5ba02c-bbfe-4bb9-9e4e-48c4c45c53e9'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="pressure">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="4e65af80-6040-4b56-b84c-df450f7a7687" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='2b5ba02c-bbfe-4bb9-9e4e-48c4c45c53e9'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="temperature">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="9d316812-bc9e-4eac-8fc9-0298d7bcddb9" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='2b5ba02c-bbfe-4bb9-9e4e-48c4c45c53e9'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="volume_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="2eec1a00-f916-44f5-9db9-a678ef88692a" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='2b5ba02c-bbfe-4bb9-9e4e-48c4c45c53e9'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="velocity">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="SPEED" unit="METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="63ccf458-71c2-4d6b-b872-57ded152b560" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='2b5ba02c-bbfe-4bb9-9e4e-48c4c45c53e9'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="pressure_loss">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="5c5b0386-e49f-4dce-aefc-ff611c4d878d" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='2b5ba02c-bbfe-4bb9-9e4e-48c4c45c53e9'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="pressure_loss_per_length">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="67340b64-cdd1-4bd7-b2c6-e48cd4c14345" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='2b5ba02c-bbfe-4bb9-9e4e-48c4c45c53e9'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="heat_loss">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Pipe" name="Pipe5_b" innerDiameter="0.15" length="999.47" id="0f7eed4a-ac9a-4f38-9825-876e41e8c100" outerDiameter="0.16">
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" lat="52.021827590527295" lon="4.409401416778565"/>
          <point xsi:type="esdl:Point" lat="52.0233064386584" lon="4.414680004119874"/>
          <point xsi:type="esdl:Point" lat="52.025085613014795" lon="4.419805705547334"/>
          <point xsi:type="esdl:Point" lat="52.02567150373549" lon="4.421594738960267"/>
          <point xsi:type="esdl:Point" lat="52.02578372981452" lon="4.422471821308137"/>
        </geometry>
        <port xsi:type="esdl:InPort" id="9a462e32-2e53-40ca-97eb-8394b6a3d131" name="In" connectedTo="3a52317d-827b-4dc4-a6df-1b145bbb1736" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="6d332ef1-e30d-4dcc-93d8-49da50b38b86" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='0f7eed4a-ac9a-4f38-9825-876e41e8c100'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="mass_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" multiplier="KILO" unit="GRAM" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="49777f20-107b-414d-aea1-22d5420102f7" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='0f7eed4a-ac9a-4f38-9825-876e41e8c100'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="pressure">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="997bdeae-1f28-4c60-adf3-0caaa175da3f" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='0f7eed4a-ac9a-4f38-9825-876e41e8c100'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="temperature">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="75327c02-8fe4-43ed-a588-c01aed51132f" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='0f7eed4a-ac9a-4f38-9825-876e41e8c100'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="volume_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="1a859a37-40cb-43a8-adcd-f9a66b7a1d55" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='0f7eed4a-ac9a-4f38-9825-876e41e8c100'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="velocity">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="SPEED" unit="METRE" perTimeUnit="SECOND"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" id="607e9ed3-3e2e-4c08-bffe-0d713420cce7" name="Out" connectedTo="6829cf4d-0dd9-43ac-8581-87b9998ca5bc" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="489de742-516c-4bf9-83df-0e3fc2c44cac" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='0f7eed4a-ac9a-4f38-9825-876e41e8c100'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="mass_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" multiplier="KILO" unit="GRAM" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="395d1385-723f-43d2-9d2b-f226572f728a" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='0f7eed4a-ac9a-4f38-9825-876e41e8c100'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="pressure">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="8a3849f6-064e-4c72-8b6d-f60c379def05" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='0f7eed4a-ac9a-4f38-9825-876e41e8c100'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="temperature">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="cd58552e-f54e-462c-b7bd-ecaf7481d466" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='0f7eed4a-ac9a-4f38-9825-876e41e8c100'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="volume_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="23d87eab-758b-4ed3-865a-e265917b30f2" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='0f7eed4a-ac9a-4f38-9825-876e41e8c100'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="velocity">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="SPEED" unit="METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="2ed4aadc-773c-4605-8d81-dabb1f0e28cd" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='0f7eed4a-ac9a-4f38-9825-876e41e8c100'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="pressure_loss">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="af7bfdd7-04b8-4c29-b3c1-8fc147e6876d" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='0f7eed4a-ac9a-4f38-9825-876e41e8c100'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="pressure_loss_per_length">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="f0136bc8-34f2-4449-8e48-83a465e58cc4" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='0f7eed4a-ac9a-4f38-9825-876e41e8c100'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="heat_loss">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Joint" name="Joint_086f" id="086f467d-afd5-4a87-aad2-0b03f185edef">
        <geometry xsi:type="esdl:Point" lat="52.02182284526067" lon="4.409407116472722"/>
        <port xsi:type="esdl:InPort" id="9b3744f2-f9f0-4e32-a118-e116154e1384" name="In" connectedTo="37a4d419-e788-4ca7-a033-3a06c6872fdf b94d1e9b-5377-4016-9bb3-4452effb5a20" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret"/>
        <port xsi:type="esdl:OutPort" id="3a52317d-827b-4dc4-a6df-1b145bbb1736" name="Out" connectedTo="9a462e32-2e53-40ca-97eb-8394b6a3d131" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret"/>
      </asset>
      <asset xsi:type="esdl:Pipe" name="Pipe5_ret_a" innerDiameter="0.1" length="993.35" id="3a1d7c9a-18cd-4360-ae7f-74062a514317" outerDiameter="0.16">
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" lat="52.02587372990452" lon="4.421796245126029"/>
          <point xsi:type="esdl:Point" lon="4.420918767262569" lat="52.025761503825485" CRS="WGS84"/>
          <point xsi:type="esdl:Point" lon="4.419127661327588" lat="52.02517561310479" CRS="WGS84"/>
          <point xsi:type="esdl:Point" lon="4.413995586196941" lat="52.0233964387484" CRS="WGS84"/>
          <point xsi:type="esdl:Point" lat="52.021920019967986" lon="4.4088220596313485"/>
        </geometry>
        <port xsi:type="esdl:InPort" id="bbb482fa-f98e-4219-ab7e-d8684b0b4e66" name="In_ret" connectedTo="3383078a-72da-4af1-badf-686f43c73018" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="6c16bce3-a8b3-4ba7-9026-1be89a908924" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='3a1d7c9a-18cd-4360-ae7f-74062a514317'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="mass_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" multiplier="KILO" unit="GRAM" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="a274e7d5-a167-4640-90ad-ce69588cf9db" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='3a1d7c9a-18cd-4360-ae7f-74062a514317'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="pressure">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="450bebc8-58fe-423c-bc53-1d910e04bc46" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='3a1d7c9a-18cd-4360-ae7f-74062a514317'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="temperature">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="0a0f2563-f3db-4319-959a-274624be621b" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='3a1d7c9a-18cd-4360-ae7f-74062a514317'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="volume_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="a019a741-f968-4112-9f85-a361c73fca0f" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='3a1d7c9a-18cd-4360-ae7f-74062a514317'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="velocity">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="SPEED" unit="METRE" perTimeUnit="SECOND"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" id="23be2b8d-5f5a-471f-875f-b7e20997f7c5" name="Out" connectedTo="027db45e-289d-4611-94ba-95d04abec30f" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="4b45f793-5bcb-4651-beb7-aa9e3e157875" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='3a1d7c9a-18cd-4360-ae7f-74062a514317'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="mass_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" multiplier="KILO" unit="GRAM" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="6c3bab8a-9455-48b1-a7e7-d6354019f48a" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='3a1d7c9a-18cd-4360-ae7f-74062a514317'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="pressure">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="b4e16908-3513-4d4b-9555-1dc6010478b8" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='3a1d7c9a-18cd-4360-ae7f-74062a514317'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="temperature">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="68f288d9-bf06-459d-93ae-465102608d62" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='3a1d7c9a-18cd-4360-ae7f-74062a514317'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="volume_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="77b97149-3387-4182-9da6-479edaf86672" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='3a1d7c9a-18cd-4360-ae7f-74062a514317'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="velocity">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="SPEED" unit="METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="e44c6434-53ce-46df-bea0-652ddbf448f6" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='3a1d7c9a-18cd-4360-ae7f-74062a514317'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="pressure_loss">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="21f266c6-6454-46ed-9f82-c7d9e0b9b75e" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='3a1d7c9a-18cd-4360-ae7f-74062a514317'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="pressure_loss_per_length">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="cfd90920-481c-422f-8466-c943751a04e4" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='3a1d7c9a-18cd-4360-ae7f-74062a514317'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="heat_loss">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Pipe" name="Pipe5_ret_b" innerDiameter="0.1" length="632.79" id="92af5656-dbd3-4ddf-abaa-9ef47ea96333" outerDiameter="0.16">
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" lat="52.021920019967986" lon="4.4088220596313485"/>
          <point xsi:type="esdl:Point" lon="4.4076804239030505" lat="52.02158748391286" CRS="WGS84"/>
          <point xsi:type="esdl:Point" lon="4.400719145015912" lat="52.019180932421804" CRS="WGS84"/>
        </geometry>
        <port xsi:type="esdl:InPort" id="fb200deb-6383-4e50-b041-9536046ee404" name="In" connectedTo="ba8ac663-b53c-400a-a838-206da20b63d7" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="5986dc56-52c4-4021-883a-676267520d5a" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='92af5656-dbd3-4ddf-abaa-9ef47ea96333'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="mass_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" multiplier="KILO" unit="GRAM" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="2d0d4e28-c6a5-4734-8e08-7fa989f0843f" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='92af5656-dbd3-4ddf-abaa-9ef47ea96333'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="pressure">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="8293daa2-e903-40a9-98d0-e1c85fc46ae5" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='92af5656-dbd3-4ddf-abaa-9ef47ea96333'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="temperature">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="32a77ce1-5695-4b42-957e-455a6eed9584" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='92af5656-dbd3-4ddf-abaa-9ef47ea96333'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="volume_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="b74a8953-1f39-4917-b1e9-acd1abaf6ad5" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='92af5656-dbd3-4ddf-abaa-9ef47ea96333'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="velocity">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="SPEED" unit="METRE" perTimeUnit="SECOND"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" id="35ff6c51-ecdc-419c-9e67-8dbbf4ccaa42" name="Out_ret" connectedTo="c06f582d-1922-47e3-ae04-a740b28353e3" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="ddef12ae-64dd-4d58-abde-c15052eb4f8f" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='92af5656-dbd3-4ddf-abaa-9ef47ea96333'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="mass_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" multiplier="KILO" unit="GRAM" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="b831addb-799d-4d58-b2f5-da9b77dec058" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='92af5656-dbd3-4ddf-abaa-9ef47ea96333'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="pressure">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="56f59fba-101a-4559-9554-f7dcb0ed4736" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='92af5656-dbd3-4ddf-abaa-9ef47ea96333'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="temperature">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="f021e703-c4df-4053-bc70-1231218d20dc" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='92af5656-dbd3-4ddf-abaa-9ef47ea96333'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="volume_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="ac8c4f3a-2378-4f2a-ba00-9b13ca956597" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='92af5656-dbd3-4ddf-abaa-9ef47ea96333'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="velocity">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="SPEED" unit="METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="9d827300-081a-4ce7-b857-a30e6893d9ac" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='92af5656-dbd3-4ddf-abaa-9ef47ea96333'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="pressure_loss">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="77ac2b60-e7fb-401e-abfe-9801bcf57b90" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='92af5656-dbd3-4ddf-abaa-9ef47ea96333'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="pressure_loss_per_length">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="4fdab70c-22d7-4b13-b3bf-19705abbeecb" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='92af5656-dbd3-4ddf-abaa-9ef47ea96333'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="heat_loss">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Joint" name="Joint_526a" id="526a38b8-cf6c-407e-9a76-837d409fdf12">
        <geometry xsi:type="esdl:Point" lat="52.021920019967986" lon="4.4088220596313485"/>
        <port xsi:type="esdl:InPort" id="027db45e-289d-4611-94ba-95d04abec30f" name="In" connectedTo="23be2b8d-5f5a-471f-875f-b7e20997f7c5" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret"/>
        <port xsi:type="esdl:OutPort" id="ba8ac663-b53c-400a-a838-206da20b63d7" name="Out" connectedTo="fb200deb-6383-4e50-b041-9536046ee404 9a58c5ba-1ac1-48cb-b583-5c568190ae3c" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret"/>
      </asset>
      <asset xsi:type="esdl:Pipe" name="Pipe_ates" length="598.2" id="fa07b73b-0ec7-4a6d-bbd5-60b5fdf09d92">
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" lat="52.02648843713918" lon="4.4050025939941415"/>
          <point xsi:type="esdl:Point" lat="52.02183574000574" lon="4.40939286723733"/>
        </geometry>
        <port xsi:type="esdl:InPort" id="3874047c-96e8-4555-902a-8646daf3f984" name="In" connectedTo="07a302f6-4e5b-40ef-87e3-c908a993dfe4" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="c3c4c55f-3d32-4dde-8a6b-996cfb49901d" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='fa07b73b-0ec7-4a6d-bbd5-60b5fdf09d92'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="mass_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" multiplier="KILO" unit="GRAM" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="ca70be71-d80a-420a-bea1-91177f10639c" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='fa07b73b-0ec7-4a6d-bbd5-60b5fdf09d92'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="pressure">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="3db34d17-82cf-490c-a278-abc34320610f" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='fa07b73b-0ec7-4a6d-bbd5-60b5fdf09d92'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="temperature">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="3dfc0a41-6547-47e3-960a-3e036c6b4f7f" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='fa07b73b-0ec7-4a6d-bbd5-60b5fdf09d92'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="volume_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="3092ce24-b8dc-40ae-ab5b-2f70fb5d6084" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='fa07b73b-0ec7-4a6d-bbd5-60b5fdf09d92'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="velocity">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="SPEED" unit="METRE" perTimeUnit="SECOND"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" id="b94d1e9b-5377-4016-9bb3-4452effb5a20" name="Out" connectedTo="9b3744f2-f9f0-4e32-a118-e116154e1384" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="a17e9fe6-c8ae-44a3-b34b-042994acdaf4" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='fa07b73b-0ec7-4a6d-bbd5-60b5fdf09d92'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="mass_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" multiplier="KILO" unit="GRAM" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="6ef7dd8f-c814-4a06-9fef-ed80d2240962" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='fa07b73b-0ec7-4a6d-bbd5-60b5fdf09d92'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="pressure">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="fa92f7a5-4751-4e59-8810-891bb6002e07" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='fa07b73b-0ec7-4a6d-bbd5-60b5fdf09d92'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="temperature">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="379db33e-0cd9-4118-8743-276f4a1df90d" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='fa07b73b-0ec7-4a6d-bbd5-60b5fdf09d92'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="volume_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="75a8bd63-b3f7-4e35-9946-f512f880b5cf" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='fa07b73b-0ec7-4a6d-bbd5-60b5fdf09d92'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="velocity">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="SPEED" unit="METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="4937f8b4-ed46-457f-a909-843e8814b363" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='fa07b73b-0ec7-4a6d-bbd5-60b5fdf09d92'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="pressure_loss">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="47d4c1f5-594a-442e-abf5-861add52a406" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='fa07b73b-0ec7-4a6d-bbd5-60b5fdf09d92'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="pressure_loss_per_length">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="c2060be8-7e7e-46c6-a380-86ee813a34a1" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='fa07b73b-0ec7-4a6d-bbd5-60b5fdf09d92'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="heat_loss">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Pipe" name="Pipe_ates_ret" length="549.0" id="1f1a7ed1-c6fe-4afe-a39c-77803b8aed2f">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.02203885753961" lon="4.408714771270753"/>
          <point xsi:type="esdl:Point" lat="52.02633000273639" lon="4.404745101928712"/>
        </geometry>
        <port xsi:type="esdl:InPort" id="9a58c5ba-1ac1-48cb-b583-5c568190ae3c" name="In" connectedTo="ba8ac663-b53c-400a-a838-206da20b63d7" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="f130ae9a-f536-4b98-b043-bcff54143cd7" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='1f1a7ed1-c6fe-4afe-a39c-77803b8aed2f'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="mass_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" multiplier="KILO" unit="GRAM" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="cb1418a6-925e-401e-bd4a-3aae32693a0d" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='1f1a7ed1-c6fe-4afe-a39c-77803b8aed2f'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="pressure">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="9d9c1f42-7328-46c3-9e0e-682f09fbca30" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='1f1a7ed1-c6fe-4afe-a39c-77803b8aed2f'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="temperature">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="f6211425-64cd-4889-a68e-843accc18902" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='1f1a7ed1-c6fe-4afe-a39c-77803b8aed2f'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="volume_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="5bb1e5e3-22a3-4251-8b2c-d30c3521dfb6" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='1f1a7ed1-c6fe-4afe-a39c-77803b8aed2f'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="velocity">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="SPEED" unit="METRE" perTimeUnit="SECOND"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" id="7ca06d72-bb1d-41ac-9a19-6306fb33e10e" name="Out" connectedTo="e14c67db-96c3-4fc9-aed2-4fe0f84a34d3" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="28009fcc-c6a1-423c-968d-8a7fe210c257" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='1f1a7ed1-c6fe-4afe-a39c-77803b8aed2f'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="mass_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" multiplier="KILO" unit="GRAM" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="f88af2cf-ff61-49ad-ad3a-9af386115e91" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='1f1a7ed1-c6fe-4afe-a39c-77803b8aed2f'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="pressure">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="b661c391-e036-431b-8837-b9e573bc1ebb" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='1f1a7ed1-c6fe-4afe-a39c-77803b8aed2f'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="temperature">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="83670a08-42b6-487b-8516-6e184a04aa8f" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='1f1a7ed1-c6fe-4afe-a39c-77803b8aed2f'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="volume_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="c5094909-28b9-4890-bfa6-4d8459152caa" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='1f1a7ed1-c6fe-4afe-a39c-77803b8aed2f'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="velocity">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="SPEED" unit="METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="9c572c58-146e-4345-ab05-c13cc779c2ba" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='1f1a7ed1-c6fe-4afe-a39c-77803b8aed2f'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="pressure_loss">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="7aeb29b3-051a-44c2-b7a2-e143a5730805" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='1f1a7ed1-c6fe-4afe-a39c-77803b8aed2f'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="pressure_loss_per_length">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="14f4cb22-8a37-492e-a3e6-0ee03d5f96d3" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='1f1a7ed1-c6fe-4afe-a39c-77803b8aed2f'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="heat_loss">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:ATES" aquiferNetToGross="1.0" name="ATES_4d6d" aquiferThickness="45.0" maxDischargeRate="11610000.0" wellCasingSize="13.0" aquiferAnisotropy="4.0" aquiferPorosity="0.3" aquiferTopDepth="300.0" aquiferMidTemperature="17.0" id="4d6dfb40-ea51-4176-a27e-4ee60cad4034" wellDistance="150.0" maxChargeRate="11610000.0" salinity="10000.0" aquiferPermeability="10000.0">
        <geometry xsi:type="esdl:Point" lat="52.026597360465495" lon="4.404745101928712"/>
        <dataSource xsi:type="esdl:DataSource" description="This data was generated using the 'kosten_per_asset.xslx' file in the 'Kentallen' directory of WarmingUp project 1D" attribution="" name="WarmingUp factsheet: HT-ATES (high)"/>
        <port xsi:type="esdl:InPort" id="e14c67db-96c3-4fc9-aed2-4fe0f84a34d3" name="In" connectedTo="7ca06d72-bb1d-41ac-9a19-6306fb33e10e" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
          <profile xsi:type="esdl:InfluxDBProfile" multiplier="5.0" startDate="2018-12-31T23:00:00.000000+0000" filters="" id="1e323c5f-f645-42bf-8631-b63b0a24c424" measurement="WarmingUp default profiles" database="energy_profiles" host="profiles.warmingup.info" port="443" field="demand4_MW" endDate="2019-12-31T22:00:00.000000+0000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="e9405fc8-5e57-4df5-8584-4babee7cdf1b"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="7447d299-91ba-43e7-8cb2-2a17e9eb45e1" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='4d6dfb40-ea51-4176-a27e-4ee60cad4034'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="mass_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" multiplier="KILO" unit="GRAM" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="869ed033-b41a-4265-97d9-7387508bbc38" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='4d6dfb40-ea51-4176-a27e-4ee60cad4034'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="pressure">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="40f8e06d-4b90-4cc2-a113-d179eb499334" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='4d6dfb40-ea51-4176-a27e-4ee60cad4034'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="temperature">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="53d0c6fc-12a7-4cda-b8a6-eb3688ac5351" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='4d6dfb40-ea51-4176-a27e-4ee60cad4034'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="volume_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" id="07a302f6-4e5b-40ef-87e3-c908a993dfe4" name="Out" connectedTo="3874047c-96e8-4555-902a-8646daf3f984" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="7d7d69d2-9918-4761-affa-07acd2394117" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='4d6dfb40-ea51-4176-a27e-4ee60cad4034'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="mass_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" multiplier="KILO" unit="GRAM" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="1819158a-8784-4973-bf04-1cc1be1197cf" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='4d6dfb40-ea51-4176-a27e-4ee60cad4034'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="pressure">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="296f1338-6448-4316-a12a-06bc049a372b" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='4d6dfb40-ea51-4176-a27e-4ee60cad4034'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="temperature">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="5c46556f-be87-4f6f-b7eb-089c7ac01461" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='4d6dfb40-ea51-4176-a27e-4ee60cad4034'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="volume_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
        </port>
        <costInformation xsi:type="esdl:CostInformation">
          <fixedOperationalCosts xsi:type="esdl:SingleValue" value="30000.0">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="EURO" perTimeUnit="YEAR" id="574ef21d-681a-43ae-a1cb-f7b25d88defb" description="Cost in EUR/yr"/>
          </fixedOperationalCosts>
          <variableOperationalCosts xsi:type="esdl:SingleValue" value="69666.67">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="EURO" perTimeUnit="YEAR" id="3c9f580e-b71a-4bc8-8cea-cb6788c0bf49" description="Cost in EUR/yr"/>
          </variableOperationalCosts>
          <fixedMaintenanceCosts xsi:type="esdl:SingleValue" value="115472.22">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="EURO" perTimeUnit="YEAR" id="57537388-7fd7-40b3-a0c4-0ce65648eaab" description="Cost in EUR/yr"/>
          </fixedMaintenanceCosts>
          <investmentCosts xsi:type="esdl:SingleValue" value="2333594.0">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="EURO" id="a3b5cdd9-364b-4262-bce5-4658c5f1bac9" description="Cost in EUR"/>
          </investmentCosts>
        </costInformation>
      </asset>
      <asset xsi:type="esdl:GenericProducer" power="100000000.0" name="GenericProducer_0375" id="0375b489-b57b-439d-9ce9-db2dc9d0bbb9">
        <geometry xsi:type="esdl:Point" lon="4.40077438452907" CRS="WGS84" lat="52.0197014548679"/>
        <port xsi:type="esdl:OutPort" id="7dde77c4-a956-4496-b8b9-e714317cc0f2" name="Out" connectedTo="30f746ff-aca7-4e55-946e-3dcaf2ac7569" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="5e8cebeb-96a8-48cb-ae1e-b60471294dcc" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='0375b489-b57b-439d-9ce9-db2dc9d0bbb9'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="mass_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" multiplier="KILO" unit="GRAM" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="60fa4d86-8c24-45c9-a40b-496d7477a43b" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='0375b489-b57b-439d-9ce9-db2dc9d0bbb9'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="pressure">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="cbbba3d0-ede7-4473-8cf4-aae83fedea01" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='0375b489-b57b-439d-9ce9-db2dc9d0bbb9'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="temperature">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="50bf5b3a-4e18-4eb9-911d-cb7074d947bc" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='0375b489-b57b-439d-9ce9-db2dc9d0bbb9'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="volume_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="0c42bf4f-c25b-40cc-a668-d4f155ce7135" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='0375b489-b57b-439d-9ce9-db2dc9d0bbb9'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="heat_supply_set_point">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="e2687dd0-ea17-4c0a-9823-4d8ad3bf97fd" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='0375b489-b57b-439d-9ce9-db2dc9d0bbb9'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="heat_supplied">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
        </port>
        <port xsi:type="esdl:InPort" id="f8113571-6167-4850-b558-f97f39a0a3f3" name="In" connectedTo="095f2c36-395f-4183-a760-80d5362e1de3" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="ff7222f4-bf6f-4586-8441-1b0322ddd440" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='0375b489-b57b-439d-9ce9-db2dc9d0bbb9'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="mass_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" multiplier="KILO" unit="GRAM" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="7936e192-c16e-40ed-a7d2-5f53f0feb587" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='0375b489-b57b-439d-9ce9-db2dc9d0bbb9'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="pressure">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="48248dbf-e3fb-4a1d-b710-7f7a4d670999" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='0375b489-b57b-439d-9ce9-db2dc9d0bbb9'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="temperature">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="4803c966-c98e-494e-8ca5-791f31d17f4c" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="fe4a6c5c-eb8c-4976-8da8-05199bf6aa20" filters="&quot;assetId&quot;='0375b489-b57b-439d-9ce9-db2dc9d0bbb9'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="volume_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="7cdc8cb2-f686-4029-8f45-1894b8a698de"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
        </port>
      </asset>
      <KPIs xsi:type="esdl:KPIs" id="1c845586-debb-4820-9882-626d389c2092">
        <kpi xsi:type="esdl:DistributionKPI" id="d4656cfb-199b-45d0-ab1c-ef5a7fc32a66" name="High level cost breakdown [EUR]">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO"/>
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" label="CAPEX (total)" value="2333594.0"/>
            <stringItem xsi:type="esdl:StringItem" label="OPEX (yearly)" value="215138.89"/>
          </distribution>
        </kpi>
        <kpi xsi:type="esdl:DistributionKPI" id="24daf443-8db4-4311-9359-b9741fa6160f" name="Net Present Value [EUR]">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO"/>
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" label="NPV" value="5640806.050502933"/>
          </distribution>
        </kpi>
        <kpi xsi:type="esdl:DistributionKPI" id="73738d23-8095-4797-80c5-206e57a32e32" name="Equivalent Annual Cost [EUR/yr]">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO" perUnit="YEAR"/>
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" label="EAC" value="351136.45722809224"/>
          </distribution>
        </kpi>
        <kpi xsi:type="esdl:DistributionKPI" id="c23b06ac-1329-4d19-a760-137065de1611" name="Total Cost of Ownership [EUR]">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO"/>
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" label="TCO" value="8787760.7"/>
          </distribution>
        </kpi>
        <kpi xsi:type="esdl:DistributionKPI" id="31ce4175-2ff9-4213-8427-182203032402" name="Energy breakdown [Wh]">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="ENERGY" unit="WATTHOUR"/>
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" label="Production" value="760252698076728.2"/>
            <stringItem xsi:type="esdl:StringItem" label="Demand" value="394120255371430.25"/>
          </distribution>
        </kpi>
      </KPIs>
    </area>
  </instance>
</esdl:EnergySystem>
