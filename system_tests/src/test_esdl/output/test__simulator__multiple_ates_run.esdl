<?xml version='1.0' encoding='UTF-8'?>
<esdl:EnergySystem xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:esdl="http://www.tno.nl/esdl" esdlVersion="v2111" description="basic" id="9f46554d-798e-4cf5-8a09-02d40bc395ee" version="10" name="course_model with return network_simulator">
  <energySystemInformation xsi:type="esdl:EnergySystemInformation" id="9a76b800-6e2c-4e99-a9a5-859f7badd061">
    <quantityAndUnits xsi:type="esdl:QuantityAndUnits" id="54fda8fc-e725-4c44-8a49-726a811ba069">
      <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="eb07bccb-203f-407e-af98-e687656a221d" unit="JOULE" multiplier="GIGA" physicalQuantity="ENERGY" description="Energy in GJ"/>
      <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="e9405fc8-5e57-4df5-8584-4babee7cdf1b" unit="WATT" multiplier="MEGA" physicalQuantity="POWER" description="Power in MW"/>
      <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="e9405fc8-5e57-4df5-8584-4babee7cdf1a" unit="WATT" multiplier="KILO" physicalQuantity="POWER" description="Power in kW"/>
    </quantityAndUnits>
    <carriers xsi:type="esdl:Carriers" id="e84423d9-b617-4fa0-b113-1ba12daacaaf">
      <carrier xsi:type="esdl:HeatCommodity" returnTemperature="40.0" name="supply_ret" id="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" supplyTemperature="80.0"/>
      <carrier xsi:type="esdl:HeatCommodity" returnTemperature="40.0" name="Return_ret" id="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" supplyTemperature="80.0"/>
    </carriers>
    <dataSources xsi:type="esdl:DataSources" id="552f20d4-6aaf-459d-ac69-c4fbf98d37db">
      <dataSource xsi:type="esdl:DataSource" id="2bd0fca0-a319-4bc8-883b-9a5a91ced46f" name="Omotes simulator core run" description="This profile is a simulation results obtained with the Omotes simulator core" reference="https://simulator-core.readthedocs.io/en/latest/" releaseDate="2025-12-18T12:28:31.322063" version="0.0.28" license="GNU GENERAL PUBLIC LICENSE" author="Deltares/TNO" contactDetails="https://github.com/Project-OMOTES"/>
    </dataSources>
  </energySystemInformation>
  <instance xsi:type="esdl:Instance" id="8db3337e-440e-48d1-b1e9-6f86c4f76320" name="Untitled instance">
    <area xsi:type="esdl:Area" name="Untitled area" id="a3f3b5d9-2faa-4862-a5b0-d02b219052dd">
      <asset xsi:type="esdl:HeatingDemand" minTemperature="40.0" power="5000000.0" maxTemperature="120.0" id="cc61c52a-29a6-45d3-81e8-ce18ba12f319" name="Pijnacker">
        <geometry xsi:type="esdl:Point" lat="52.01906782352804" lon="4.431524276733399"/>
        <port xsi:type="esdl:InPort" name="In" id="c3eb59bc-037d-4684-918e-df0f54af5b3d" connectedTo="9e1c58ab-ec19-4964-928f-d2a582af6ce8" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
          <profile xsi:type="esdl:InfluxDBProfile" port="443" host="profiles.warmingup.info" filters="" id="131d801f-9f8e-4dc4-9a8a-82725607eedf" startDate="2018-12-31T23:00:00.000000+0000" field="demand2_MW" measurement="WarmingUp default profiles" multiplier="5.0" database="energy_profiles" endDate="2019-12-31T22:00:00.000000+0000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="e9405fc8-5e57-4df5-8584-4babee7cdf1b"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="27116b70-f603-4e44-8a26-75a42cf1fa19" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='cc61c52a-29a6-45d3-81e8-ce18ba12f319'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="mass_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" multiplier="KILO" unit="GRAM" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="1f32549b-f4c6-4d09-905a-e15777caeeea" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='cc61c52a-29a6-45d3-81e8-ce18ba12f319'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="pressure">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="27b7ad21-dc77-4f98-a182-1bd1f68b6b5a" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='cc61c52a-29a6-45d3-81e8-ce18ba12f319'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="temperature">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="021dafd2-7a49-4ef8-b2ec-55c43c83abc7" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='cc61c52a-29a6-45d3-81e8-ce18ba12f319'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="volume_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" name="Out" id="fcf96c55-8264-41a5-90ee-0977a394a46a" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" connectedTo="99628a79-e31c-4a99-bf4a-2f788a5d5343">
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="c9dc6ec3-2c13-4b9e-9e22-b951b5b48cff" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='cc61c52a-29a6-45d3-81e8-ce18ba12f319'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="mass_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" multiplier="KILO" unit="GRAM" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="20a6b177-742f-48d3-8d43-be849ba4faef" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='cc61c52a-29a6-45d3-81e8-ce18ba12f319'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="pressure">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="9bb575a1-841e-4450-9097-f720e104c34d" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='cc61c52a-29a6-45d3-81e8-ce18ba12f319'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="temperature">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="9a643f37-3bda-4035-990c-92a40fc5f507" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='cc61c52a-29a6-45d3-81e8-ce18ba12f319'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="volume_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="efa0bc6b-7eda-41de-8746-c7e7a5369f49" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='cc61c52a-29a6-45d3-81e8-ce18ba12f319'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="heat_demand_set_point">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="1fcdc58e-45df-40b8-a1a2-940b194cb062" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='cc61c52a-29a6-45d3-81e8-ce18ba12f319'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="heat_demand">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:HeatingDemand" minTemperature="40.0" power="5000000.0" maxTemperature="120.0" id="8805731a-8780-47b4-8204-76ba074564bc" name="Delfgauw">
        <geometry xsi:type="esdl:Point" lat="52.0094006941874" lon="4.396162033081056"/>
        <port xsi:type="esdl:InPort" name="In" id="69464799-3ec3-4928-a5da-6158a6237c76" connectedTo="88b6c35c-7eeb-42e9-ba4e-491fa6c7a6fc" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
          <profile xsi:type="esdl:InfluxDBProfile" port="443" host="profiles.warmingup.info" filters="" id="0380fe5a-611c-4523-9eda-1d0ecd69271e" startDate="2018-12-31T23:00:00.000000+0000" field="demand1_MW" measurement="WarmingUp default profiles" multiplier="5.0" database="energy_profiles" endDate="2019-12-31T22:00:00.000000+0000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="e9405fc8-5e57-4df5-8584-4babee7cdf1b"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="c996bc59-db5a-4ac1-9c71-350a5aa2949d" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='8805731a-8780-47b4-8204-76ba074564bc'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="mass_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" multiplier="KILO" unit="GRAM" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="1f3f9862-e94a-46f9-9a89-f0b48de42ef7" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='8805731a-8780-47b4-8204-76ba074564bc'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="pressure">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="d2d02953-3322-4b69-8fc9-af895006092a" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='8805731a-8780-47b4-8204-76ba074564bc'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="temperature">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="8108a6eb-f3de-47dd-9fd1-dd25dfe16dd9" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='8805731a-8780-47b4-8204-76ba074564bc'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="volume_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" name="Out" id="c8625b7f-e9ad-4327-899e-0c6e91e873cb" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" connectedTo="1467bee7-ed90-49d5-8395-3595408ad1ee">
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="1856b0bc-b865-4973-8fe8-39ccd0b0504c" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='8805731a-8780-47b4-8204-76ba074564bc'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="mass_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" multiplier="KILO" unit="GRAM" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="77057280-024a-424d-9b6f-241ef001621a" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='8805731a-8780-47b4-8204-76ba074564bc'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="pressure">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="f46163e2-c18c-4942-bbc8-4a38cfa134a0" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='8805731a-8780-47b4-8204-76ba074564bc'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="temperature">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="c38583f7-9981-4e4f-b339-3c8cfdd2c086" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='8805731a-8780-47b4-8204-76ba074564bc'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="volume_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="277d97f2-7646-4642-9b03-326d2dd7864c" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='8805731a-8780-47b4-8204-76ba074564bc'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="heat_demand_set_point">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="813535ab-afa9-4b1e-a21f-57320ba19c87" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='8805731a-8780-47b4-8204-76ba074564bc'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="heat_demand">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:HeatingDemand" minTemperature="40.0" power="5000000.0" maxTemperature="120.0" id="156c4afb-4106-4286-8f41-fbf8edc6e5ce" name="Nootdorp">
        <geometry xsi:type="esdl:Point" lat="52.04277777849674" lon="4.3912696838378915"/>
        <port xsi:type="esdl:InPort" name="In" id="ad377fa7-710f-45e7-9144-1521bef5c1ab" connectedTo="22be2ae1-10c0-42eb-abd9-6b115b800283" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
          <profile xsi:type="esdl:InfluxDBProfile" port="443" host="profiles.warmingup.info" filters="" id="57131b4a-f177-47da-b7d7-788f23eefb5b" startDate="2018-12-31T23:00:00.000000+0000" field="demand3_MW" measurement="WarmingUp default profiles" multiplier="5.0" database="energy_profiles" endDate="2019-12-31T22:00:00.000000+0000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="e9405fc8-5e57-4df5-8584-4babee7cdf1b"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="972ec33f-4edc-4cc2-b8b4-ca918d457a7a" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='156c4afb-4106-4286-8f41-fbf8edc6e5ce'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="mass_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" multiplier="KILO" unit="GRAM" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="8c2e100c-d85b-4c38-b9cc-4f4c66532077" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='156c4afb-4106-4286-8f41-fbf8edc6e5ce'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="pressure">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="c3d9f27c-8d23-4fca-b1f4-7b25cd047275" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='156c4afb-4106-4286-8f41-fbf8edc6e5ce'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="temperature">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="7cb5d803-4dbe-4937-91ac-eb0d0013af83" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='156c4afb-4106-4286-8f41-fbf8edc6e5ce'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="volume_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" name="Out" id="f46090b9-dcd6-433f-b021-061c839e634c" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" connectedTo="fdbab763-3e05-49d6-9271-207035c14bcb">
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="4a296eb1-4175-4159-b5ef-db58a19e6816" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='156c4afb-4106-4286-8f41-fbf8edc6e5ce'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="mass_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" multiplier="KILO" unit="GRAM" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="2b090e11-5150-4c1e-8804-1f0e0dadc7ac" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='156c4afb-4106-4286-8f41-fbf8edc6e5ce'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="pressure">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="fc3428e2-aa37-4067-b640-ad4f98e18514" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='156c4afb-4106-4286-8f41-fbf8edc6e5ce'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="temperature">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="aac6587a-0afd-4ba4-9379-59e7a8aac861" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='156c4afb-4106-4286-8f41-fbf8edc6e5ce'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="volume_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="0fd98266-cae5-4931-acbc-169b55aa80b6" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='156c4afb-4106-4286-8f41-fbf8edc6e5ce'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="heat_demand_set_point">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="6109ca0e-487a-46a3-8ed0-8bc39c336bd1" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='156c4afb-4106-4286-8f41-fbf8edc6e5ce'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="heat_demand">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Joint" id="11262f35-3d51-4ce3-9a69-6eb4a6c46c9d" name="Joint_1126">
        <geometry xsi:type="esdl:Point" CRS="WGS84" lat="52.01909093233181" lon="4.401419162750245"/>
        <port xsi:type="esdl:InPort" name="In" id="a8779f8a-3d61-4a97-bfb4-35029175ec97" connectedTo="7c178a7c-f6cb-4f33-8c4a-076d9131ed8a" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret"/>
        <port xsi:type="esdl:OutPort" name="Out" id="fd562e07-a60c-4f5c-9084-d51e736ff545" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" connectedTo="a89b5045-f815-4126-a4c8-dc125a99c0f8 b9af6540-8cae-41ce-b0c3-4528e027d3b3"/>
      </asset>
      <asset xsi:type="esdl:Pipe" outerDiameter="0.09" innerDiameter="0.08" id="Pipe1" diameter="DN80" length="1533.2" name="Pipe1" related="Pipe1_ret">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.01909093233181" lon="4.401419162750245"/>
          <point xsi:type="esdl:Point" lat="52.01563438289948" lon="4.391613006591798"/>
          <point xsi:type="esdl:Point" lat="52.0094006941874" lon="4.396162033081056"/>
        </geometry>
        <port xsi:type="esdl:InPort" name="In" id="a89b5045-f815-4126-a4c8-dc125a99c0f8" connectedTo="fd562e07-a60c-4f5c-9084-d51e736ff545" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="2bcba97f-3095-4152-b5ac-d2e9963ef3e3" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='Pipe1'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="mass_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" multiplier="KILO" unit="GRAM" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="53f645fd-c8f4-4111-964c-11b0830b5a89" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='Pipe1'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="pressure">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="84e6f5db-d07d-4ea6-bc41-2d106e9fa637" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='Pipe1'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="temperature">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="51e0f8b6-760d-4c60-96e7-5dff0193ae66" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='Pipe1'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="volume_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="39d1a87f-92f9-411c-8fbe-8d80f4b3caa1" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='Pipe1'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="velocity">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="SPEED" unit="METRE" perTimeUnit="SECOND"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" name="Out" id="88b6c35c-7eeb-42e9-ba4e-491fa6c7a6fc" connectedTo="69464799-3ec3-4928-a5da-6158a6237c76" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="02990bb7-b24f-4937-b5cd-929cddda6ffe" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='Pipe1'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="mass_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" multiplier="KILO" unit="GRAM" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="ba223970-2b37-4007-9116-11581a6cf10c" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='Pipe1'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="pressure">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="317a4627-c3d0-4341-8445-35e9b01e0c3a" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='Pipe1'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="temperature">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="f48c683e-71f2-4289-9deb-f4b2eff3a9be" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='Pipe1'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="volume_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="6fcfc25e-09ae-403b-a873-1461c508a78d" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='Pipe1'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="velocity">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="SPEED" unit="METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="b45b0ca3-4f22-45cf-ad6d-954cb809d95a" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='Pipe1'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="pressure_loss">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="48c3fb49-9fd3-4eba-bb56-d21e6fdfea7d" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='Pipe1'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="pressure_loss_per_length">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="12995559-f353-43cf-90f7-9c33642074f8" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='Pipe1'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="heat_loss">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Pipe" outerDiameter="0.21" innerDiameter="0.2" id="Pipe2" diameter="DN200" length="44.4" name="Pipe2" related="Pipe2_ret">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.019437562955694" lon="4.401097297668458"/>
          <point xsi:type="esdl:Point" lat="52.01909093233181" lon="4.401419162750245"/>
        </geometry>
        <port xsi:type="esdl:InPort" name="In" id="30f746ff-aca7-4e55-946e-3dcaf2ac7569" connectedTo="7dde77c4-a956-4496-b8b9-e714317cc0f2" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="31c1be8c-0d1e-458d-a084-b5a2c292e548" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='Pipe2'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="mass_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" multiplier="KILO" unit="GRAM" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="c78a2f49-a6d2-4158-9652-aa6437141f28" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='Pipe2'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="pressure">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="c75e22ef-472c-4fd8-a6ff-a6827b6d2465" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='Pipe2'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="temperature">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="c03e8510-2849-4d21-8933-e3f22782cad3" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='Pipe2'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="volume_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="17c383b9-6bef-45f4-b8da-8cc19ead1038" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='Pipe2'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="velocity">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="SPEED" unit="METRE" perTimeUnit="SECOND"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" name="Out" id="7c178a7c-f6cb-4f33-8c4a-076d9131ed8a" connectedTo="a8779f8a-3d61-4a97-bfb4-35029175ec97" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="724e97da-f13d-4d08-b095-5796b24b235c" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='Pipe2'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="mass_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" multiplier="KILO" unit="GRAM" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="a687bad7-4b4f-445e-a71e-d22e573648c2" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='Pipe2'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="pressure">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="8414c539-4fde-450d-bfd9-5c4692e4dc8c" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='Pipe2'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="temperature">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="59d20869-0ab6-4720-9b46-95b02916fe02" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='Pipe2'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="volume_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="6a31d0b4-b5f1-4c1a-b2e0-cdda61f1393d" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='Pipe2'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="velocity">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="SPEED" unit="METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="b43e0896-0186-475c-8757-12d3d02bfc3c" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='Pipe2'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="pressure_loss">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="f77bea8a-c328-4b31-949c-9cb7c9be2195" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='Pipe2'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="pressure_loss_per_length">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="44d2c6fc-ced0-4e09-895d-02e4b80d9d45" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='Pipe2'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="heat_loss">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Joint" id="91b0e057-84cd-4db3-8d2d-cae02077cbaf" name="Joint_91b0">
        <geometry xsi:type="esdl:Point" CRS="WGS84" lat="52.02578372981452" lon="4.422471821308137"/>
        <port xsi:type="esdl:InPort" name="In" id="6829cf4d-0dd9-43ac-8581-87b9998ca5bc" connectedTo="607e9ed3-3e2e-4c08-bffe-0d713420cce7" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret"/>
        <port xsi:type="esdl:OutPort" name="Out" id="416291d2-c5f7-4a87-919a-655924b90eb2" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" connectedTo="e3b7d0a5-e7d7-4cb2-8a33-e56d2077616b 758212e1-ab7f-44b1-a203-6ed42eb3c6bc"/>
      </asset>
      <asset xsi:type="esdl:Pipe" outerDiameter="0.11" innerDiameter="0.1" id="Pipe3" diameter="DN100" length="1157.3" name="Pipe3" related="Pipe3_ret">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.02578372981452" lon="4.422471821308137"/>
          <point xsi:type="esdl:Point" lat="52.02318760445455" lon="4.425044059753419"/>
          <point xsi:type="esdl:Point" lat="52.02034869350056" lon="4.4269752502441415"/>
          <point xsi:type="esdl:Point" lat="52.018381156483095" lon="4.428133964538575"/>
          <point xsi:type="esdl:Point" lat="52.01906782352804" lon="4.431524276733399"/>
        </geometry>
        <port xsi:type="esdl:InPort" name="In" id="e3b7d0a5-e7d7-4cb2-8a33-e56d2077616b" connectedTo="416291d2-c5f7-4a87-919a-655924b90eb2" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="53734ea2-e36a-4fba-a4b0-8c0b58b4a4ab" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='Pipe3'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="mass_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" multiplier="KILO" unit="GRAM" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="7c001df4-8fe3-4696-9e23-ad9751797485" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='Pipe3'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="pressure">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="20b5420f-c233-40c6-8d74-f67c934e35eb" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='Pipe3'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="temperature">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="de02d668-c998-471f-ae02-e3cf191a8849" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='Pipe3'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="volume_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="5951b6a7-fc7d-4977-9311-d7156464a668" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='Pipe3'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="velocity">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="SPEED" unit="METRE" perTimeUnit="SECOND"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" name="Out" id="9e1c58ab-ec19-4964-928f-d2a582af6ce8" connectedTo="c3eb59bc-037d-4684-918e-df0f54af5b3d" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="9841ff3f-b3be-46a0-9c1a-209f63da888b" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='Pipe3'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="mass_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" multiplier="KILO" unit="GRAM" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="1ce11521-2379-4e6a-af9e-1d0a583b65c4" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='Pipe3'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="pressure">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="dcfa6077-2080-4956-b137-2240186e758c" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='Pipe3'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="temperature">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="d66ca136-e498-4944-b4ee-2eb84ce66c2d" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='Pipe3'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="volume_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="b672bd27-3850-4846-8abe-d00855c740aa" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='Pipe3'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="velocity">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="SPEED" unit="METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="e889f47e-bf03-4292-a481-ac4b4d01bbc0" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='Pipe3'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="pressure_loss">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="d1d19a38-d696-438c-9cb7-ee8ce93a58b8" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='Pipe3'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="pressure_loss_per_length">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="ce8b9682-544f-4810-82e7-465995f4a56c" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='Pipe3'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="heat_loss">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Pipe" outerDiameter="0.11" innerDiameter="0.1" id="Pipe4" diameter="DN100" length="2982.2" name="Pipe4" related="Pipe4_ret">
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
        <port xsi:type="esdl:InPort" name="In" id="758212e1-ab7f-44b1-a203-6ed42eb3c6bc" connectedTo="416291d2-c5f7-4a87-919a-655924b90eb2" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="b20d74e6-4308-45ae-b6e0-1171dc22e824" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='Pipe4'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="mass_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" multiplier="KILO" unit="GRAM" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="57cd78ee-089e-44ba-8650-4ee1cf529726" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='Pipe4'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="pressure">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="7d3abcb9-a1de-4f3f-9433-426581ccff65" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='Pipe4'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="temperature">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="d54c8247-32f9-4871-a008-cdeb2c01fff0" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='Pipe4'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="volume_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="2865e4e2-185f-4e73-a741-03d9a7a4014d" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='Pipe4'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="velocity">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="SPEED" unit="METRE" perTimeUnit="SECOND"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" name="Out" id="22be2ae1-10c0-42eb-abd9-6b115b800283" connectedTo="ad377fa7-710f-45e7-9144-1521bef5c1ab" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="12b57038-9b82-4579-bd89-1fe84e12d4da" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='Pipe4'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="mass_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" multiplier="KILO" unit="GRAM" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="add2f59b-8e59-46f3-a6e8-d28b58191492" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='Pipe4'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="pressure">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="1d11d44d-9778-455c-b491-905140c65e90" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='Pipe4'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="temperature">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="c0a75535-923b-4b83-bf4b-29e61c140367" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='Pipe4'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="volume_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="1105de7b-06c2-47b0-8bf3-9d05bb394b86" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='Pipe4'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="velocity">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="SPEED" unit="METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="caf1e9d9-9572-4c4f-81e3-98adc7b65502" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='Pipe4'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="pressure_loss">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="31312999-89c9-4e06-97fa-ab468c333055" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='Pipe4'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="pressure_loss_per_length">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="516955b0-b345-4c71-ac01-ffcc2244fe7e" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='Pipe4'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="heat_loss">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Joint" id="c6fec31e-2c4a-423d-937c-7fc28ea81a21" name="Joint_1126_ret">
        <geometry xsi:type="esdl:Point" CRS="WGS84" lat="52.019180932421804" lon="4.400719145015912"/>
        <port xsi:type="esdl:InPort" name="ret_port" id="c06f582d-1922-47e3-ae04-a740b28353e3" connectedTo="b4a30d86-df7a-4136-9170-55087818800d 35ff6c51-ecdc-419c-9e67-8dbbf4ccaa42" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret"/>
        <port xsi:type="esdl:OutPort" name="ret_port" id="39c08ebb-b7d8-4a85-a226-800c225a8a61" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" connectedTo="fb153d7c-2dc3-4f53-bbee-f0060efef1c7"/>
      </asset>
      <asset xsi:type="esdl:Joint" id="b7a46b09-779f-4a57-b73e-ab707ec65842" name="Joint_91b0_ret">
        <geometry xsi:type="esdl:Point" CRS="WGS84" lat="52.02587372990452" lon="4.421796245126029"/>
        <port xsi:type="esdl:InPort" name="ret_port" id="9a5c2e7e-e970-4561-8538-9a4000dee416" connectedTo="002a5802-e55b-4025-abe9-8d508cfdd78c 0c142bfb-4b38-44aa-b88f-71da247525ef" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret"/>
        <port xsi:type="esdl:OutPort" name="ret_port" id="3383078a-72da-4af1-badf-686f43c73018" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" connectedTo="bbb482fa-f98e-4219-ab7e-d8684b0b4e66"/>
      </asset>
      <asset xsi:type="esdl:Pipe" outerDiameter="0.09" innerDiameter="0.08" id="Pipe1_ret" diameter="DN80" length="1533.2" name="Pipe1_ret" related="Pipe1">
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" CRS="WGS84" lat="52.009490694277396" lon="4.3954232586139"/>
          <point xsi:type="esdl:Point" CRS="WGS84" lat="52.015724382989475" lon="4.3908996472617385"/>
          <point xsi:type="esdl:Point" CRS="WGS84" lat="52.019180932421804" lon="4.400719145015912"/>
        </geometry>
        <port xsi:type="esdl:InPort" name="In_ret" id="1467bee7-ed90-49d5-8395-3595408ad1ee" connectedTo="c8625b7f-e9ad-4327-899e-0c6e91e873cb" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="695fdaaf-c828-40fa-98fc-1bd403613ad4" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='Pipe1_ret'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="mass_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" multiplier="KILO" unit="GRAM" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="b0a729d9-bed7-49f7-be20-377a301b9025" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='Pipe1_ret'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="pressure">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="0e22887c-96b6-48b6-b167-779045a7e943" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='Pipe1_ret'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="temperature">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="82c74ac7-baaf-4231-bab3-712b133036a9" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='Pipe1_ret'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="volume_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="0682fdea-7000-4813-ace9-fcfc06b7a432" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='Pipe1_ret'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="velocity">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="SPEED" unit="METRE" perTimeUnit="SECOND"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" name="Out_ret" id="b4a30d86-df7a-4136-9170-55087818800d" connectedTo="c06f582d-1922-47e3-ae04-a740b28353e3" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="b06d97b2-8c4a-473e-a5b8-92676fe80d26" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='Pipe1_ret'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="mass_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" multiplier="KILO" unit="GRAM" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="4ea51929-e933-46c7-9f4e-175a586e9405" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='Pipe1_ret'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="pressure">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="b88a87fe-8a27-470d-bc4d-efe226ae2daa" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='Pipe1_ret'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="temperature">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="e72311c4-dcb5-4284-afbe-4bf3cdaab37f" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='Pipe1_ret'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="volume_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="37ca19b7-d14c-487f-8199-9a4a445dc31d" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='Pipe1_ret'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="velocity">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="SPEED" unit="METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="362cd0c2-efff-4a5c-b364-f9903eacca29" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='Pipe1_ret'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="pressure_loss">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="9531af1a-9bfe-43fd-b56c-06bc5f0ff972" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='Pipe1_ret'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="pressure_loss_per_length">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="3d33b6cc-d7c7-4341-97a7-2ccefe5e890f" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='Pipe1_ret'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="heat_loss">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Pipe" outerDiameter="0.21" innerDiameter="0.2" id="Pipe2_ret" diameter="DN200" length="44.4" name="Pipe2_ret" related="Pipe2">
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" CRS="WGS84" lat="52.019180932421804" lon="4.400719145015912"/>
          <point xsi:type="esdl:Point" CRS="WGS84" lat="52.01952756304569" lon="4.400398589922203"/>
        </geometry>
        <port xsi:type="esdl:InPort" name="In_ret" id="fb153d7c-2dc3-4f53-bbee-f0060efef1c7" connectedTo="39c08ebb-b7d8-4a85-a226-800c225a8a61" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="0d276197-0a61-4845-921d-b7d8d9019e1d" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='Pipe2_ret'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="mass_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" multiplier="KILO" unit="GRAM" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="c02ac63e-7d6f-411f-a83c-cf97f106bc66" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='Pipe2_ret'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="pressure">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="e8d33583-83a1-48ff-9a6f-4e9725928ea7" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='Pipe2_ret'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="temperature">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="42530131-12bc-46c1-a099-3186bcc3dd86" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='Pipe2_ret'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="volume_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="58bc0fe1-c049-4d54-bebd-8d3505815228" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='Pipe2_ret'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="velocity">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="SPEED" unit="METRE" perTimeUnit="SECOND"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" name="Out_ret" id="095f2c36-395f-4183-a760-80d5362e1de3" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" connectedTo="f8113571-6167-4850-b558-f97f39a0a3f3">
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="54c40909-b4ac-4afb-999f-6190168be939" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='Pipe2_ret'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="mass_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" multiplier="KILO" unit="GRAM" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="3c4eea6b-806a-4159-9441-d3a9fc29065a" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='Pipe2_ret'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="pressure">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="6ef29ecc-523b-4675-bd66-f7588bc7a69d" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='Pipe2_ret'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="temperature">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="53ddc5e6-2ead-46a7-af20-129c8d8a98e2" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='Pipe2_ret'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="volume_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="bd7ce668-b938-4a95-92b1-7dfd5cce6ff2" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='Pipe2_ret'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="velocity">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="SPEED" unit="METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="46a092f9-e368-4272-85a2-313ceda2442d" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='Pipe2_ret'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="pressure_loss">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="504f006e-e18e-44f9-8804-d466e5687c71" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='Pipe2_ret'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="pressure_loss_per_length">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="062757d6-c4dd-4475-83e3-b317abd50930" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='Pipe2_ret'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="heat_loss">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Pipe" outerDiameter="0.11" innerDiameter="0.1" id="Pipe3_ret" diameter="DN100" length="1157.3" name="Pipe3_ret" related="Pipe3">
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" CRS="WGS84" lat="52.01915782361804" lon="4.4308241714884975"/>
          <point xsi:type="esdl:Point" CRS="WGS84" lat="52.01847115657309" lon="4.427431248765651"/>
          <point xsi:type="esdl:Point" CRS="WGS84" lat="52.020438693590556" lon="4.426279962182911"/>
          <point xsi:type="esdl:Point" CRS="WGS84" lat="52.023277604544546" lon="4.42435921177036"/>
          <point xsi:type="esdl:Point" CRS="WGS84" lat="52.02587372990452" lon="4.421796245126029"/>
        </geometry>
        <port xsi:type="esdl:InPort" name="In_ret" id="99628a79-e31c-4a99-bf4a-2f788a5d5343" connectedTo="fcf96c55-8264-41a5-90ee-0977a394a46a" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="2b224ebb-c089-480b-aebb-a0ccb39d71f4" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='Pipe3_ret'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="mass_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" multiplier="KILO" unit="GRAM" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="61eb173e-db8e-453b-823a-6d024a00ff12" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='Pipe3_ret'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="pressure">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="bdb19c7d-001c-4aa7-b183-ed09b9501c24" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='Pipe3_ret'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="temperature">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="27e2a6b6-1480-40d7-a22f-ce38e8f2e51f" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='Pipe3_ret'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="volume_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="7152041d-3247-4608-a09d-3da24fcc0144" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='Pipe3_ret'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="velocity">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="SPEED" unit="METRE" perTimeUnit="SECOND"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" name="Out_ret" id="002a5802-e55b-4025-abe9-8d508cfdd78c" connectedTo="9a5c2e7e-e970-4561-8538-9a4000dee416" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="208d9d69-7ddd-4679-8c29-27c25add0639" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='Pipe3_ret'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="mass_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" multiplier="KILO" unit="GRAM" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="1c03c00d-ef37-49e6-94da-70c6577f0e5f" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='Pipe3_ret'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="pressure">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="36c00bcc-37d2-4855-825d-cee4b9dc84a4" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='Pipe3_ret'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="temperature">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="5a6203c6-9c09-4ac3-9a51-cd5b003df635" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='Pipe3_ret'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="volume_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="c6d3ac48-713b-4604-9a04-86cd30a83581" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='Pipe3_ret'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="velocity">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="SPEED" unit="METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="871b331d-295f-4957-a186-c25beaa6f2c1" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='Pipe3_ret'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="pressure_loss">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="010f698e-3733-40b1-b740-0edf35a13da8" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='Pipe3_ret'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="pressure_loss_per_length">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="0296c1ed-1b82-4530-a223-26a9d470c6e2" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='Pipe3_ret'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="heat_loss">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Pipe" outerDiameter="0.11" innerDiameter="0.1" id="Pipe4_ret" diameter="DN100" length="2982.2" name="Pipe4_ret" related="Pipe4">
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" CRS="WGS84" lat="52.04292057069157" lon="4.390477502296783"/>
          <point xsi:type="esdl:Point" CRS="WGS84" lat="52.042207872014984" lon="4.392385117209615"/>
          <point xsi:type="esdl:Point" CRS="WGS84" lat="52.038195430353944" lon="4.400290793359585"/>
          <point xsi:type="esdl:Point" CRS="WGS84" lat="52.03692826868462" lon="4.404428167491401"/>
          <point xsi:type="esdl:Point" CRS="WGS84" lat="52.03603067410352" lon="4.407965850141681"/>
          <point xsi:type="esdl:Point" CRS="WGS84" lat="52.033469790513074" lon="4.41570384355307"/>
          <point xsi:type="esdl:Point" CRS="WGS84" lat="52.03059192155077" lon="4.418805700922162"/>
          <point xsi:type="esdl:Point" CRS="WGS84" lat="52.02587372990452" lon="4.421796245126029"/>
        </geometry>
        <port xsi:type="esdl:InPort" name="In_ret" id="fdbab763-3e05-49d6-9271-207035c14bcb" connectedTo="f46090b9-dcd6-433f-b021-061c839e634c" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="78aee17f-37fb-4e5d-8090-e4f590e99e1e" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='Pipe4_ret'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="mass_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" multiplier="KILO" unit="GRAM" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="63a4ed9f-9eff-40c9-842b-c487c570ae19" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='Pipe4_ret'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="pressure">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="e8835fa2-a742-4d7f-9543-7d8801da4b12" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='Pipe4_ret'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="temperature">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="49808741-5f3a-4b18-a1d4-fe306f5fc0b8" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='Pipe4_ret'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="volume_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="a0798db5-33c5-4c1f-a31c-51605dcb9053" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='Pipe4_ret'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="velocity">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="SPEED" unit="METRE" perTimeUnit="SECOND"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" name="Out_ret" id="0c142bfb-4b38-44aa-b88f-71da247525ef" connectedTo="9a5c2e7e-e970-4561-8538-9a4000dee416" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="d0a782d6-cce2-4bac-a8c2-7b1ed2c7eb1a" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='Pipe4_ret'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="mass_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" multiplier="KILO" unit="GRAM" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="c495f2bf-0ace-498a-8a54-dbd320fb7f6c" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='Pipe4_ret'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="pressure">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="c6bb4996-5a30-42a4-b6ed-d42d7256c7e2" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='Pipe4_ret'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="temperature">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="f3abc5ec-5763-4e28-ade1-72563d2f7887" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='Pipe4_ret'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="volume_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="058fe18f-f0f1-44c5-8224-10d2ae76c26c" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='Pipe4_ret'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="velocity">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="SPEED" unit="METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="9d956bfa-7406-4e1d-bf5a-667f0305ea3e" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='Pipe4_ret'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="pressure_loss">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="0831aa5e-ebc0-4b8b-a6e0-fa7790ca8793" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='Pipe4_ret'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="pressure_loss_per_length">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="094108fd-626b-4fd0-9652-735211534bd6" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='Pipe4_ret'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="heat_loss">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Pipe" outerDiameter="0.16" innerDiameter="0.15" id="2b5ba02c-bbfe-4bb9-9e4e-48c4c45c53e9" diameter="DN150" length="625.29" name="Pipe5_a">
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" lat="52.01909093233181" lon="4.401419162750245"/>
          <point xsi:type="esdl:Point" lat="52.02149748382286" lon="4.408371448516847"/>
          <point xsi:type="esdl:Point" lat="52.021827590527295" lon="4.409401416778565"/>
        </geometry>
        <port xsi:type="esdl:InPort" name="In" id="b9af6540-8cae-41ce-b0c3-4528e027d3b3" connectedTo="fd562e07-a60c-4f5c-9084-d51e736ff545" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="d7970bba-7b7e-47f4-b211-e63b1561dd7e" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='2b5ba02c-bbfe-4bb9-9e4e-48c4c45c53e9'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="mass_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" multiplier="KILO" unit="GRAM" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="a1854fa9-d6f5-4fbf-905d-e9eecaf23341" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='2b5ba02c-bbfe-4bb9-9e4e-48c4c45c53e9'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="pressure">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="42a67fff-74d1-4894-ad71-d7032ed49c8d" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='2b5ba02c-bbfe-4bb9-9e4e-48c4c45c53e9'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="temperature">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="73679d3e-75dd-4636-868c-6359b267bfb4" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='2b5ba02c-bbfe-4bb9-9e4e-48c4c45c53e9'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="volume_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="0b45100b-8eac-494e-9604-71b66d75b1d9" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='2b5ba02c-bbfe-4bb9-9e4e-48c4c45c53e9'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="velocity">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="SPEED" unit="METRE" perTimeUnit="SECOND"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" name="Out" id="37a4d419-e788-4ca7-a033-3a06c6872fdf" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" connectedTo="9b3744f2-f9f0-4e32-a118-e116154e1384">
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="930f1d88-c989-4892-98ab-4cc20a712663" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='2b5ba02c-bbfe-4bb9-9e4e-48c4c45c53e9'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="mass_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" multiplier="KILO" unit="GRAM" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="19a0087e-76a8-43dc-b807-ad3e73800352" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='2b5ba02c-bbfe-4bb9-9e4e-48c4c45c53e9'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="pressure">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="f7ddea63-9b5a-4419-9f72-dfa4255bcccc" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='2b5ba02c-bbfe-4bb9-9e4e-48c4c45c53e9'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="temperature">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="145a8173-2659-4e74-b252-5f7d854dfa48" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='2b5ba02c-bbfe-4bb9-9e4e-48c4c45c53e9'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="volume_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="f92316af-deb5-4f47-87dc-e557cdfeae77" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='2b5ba02c-bbfe-4bb9-9e4e-48c4c45c53e9'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="velocity">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="SPEED" unit="METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="308250eb-5e86-4ae6-9ed1-90550b440131" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='2b5ba02c-bbfe-4bb9-9e4e-48c4c45c53e9'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="pressure_loss">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="3b7a9664-527c-4d00-a587-ce038ce7f4fd" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='2b5ba02c-bbfe-4bb9-9e4e-48c4c45c53e9'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="pressure_loss_per_length">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="5e2db860-4288-4770-974d-2d8cd7646a28" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='2b5ba02c-bbfe-4bb9-9e4e-48c4c45c53e9'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="heat_loss">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Pipe" outerDiameter="0.16" innerDiameter="0.15" id="0f7eed4a-ac9a-4f38-9825-876e41e8c100" diameter="DN150" length="999.47" name="Pipe5_b">
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" lat="52.021827590527295" lon="4.409401416778565"/>
          <point xsi:type="esdl:Point" lat="52.0233064386584" lon="4.414680004119874"/>
          <point xsi:type="esdl:Point" lat="52.025085613014795" lon="4.419805705547334"/>
          <point xsi:type="esdl:Point" lat="52.02567150373549" lon="4.421594738960267"/>
          <point xsi:type="esdl:Point" lat="52.02578372981452" lon="4.422471821308137"/>
        </geometry>
        <port xsi:type="esdl:InPort" name="In" id="9a462e32-2e53-40ca-97eb-8394b6a3d131" connectedTo="3a52317d-827b-4dc4-a6df-1b145bbb1736" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="2d3bf338-696d-4f9d-8cbb-e1b411ba3e8d" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='0f7eed4a-ac9a-4f38-9825-876e41e8c100'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="mass_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" multiplier="KILO" unit="GRAM" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="a6abedad-ddb7-4d56-96d4-4f9b6b228034" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='0f7eed4a-ac9a-4f38-9825-876e41e8c100'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="pressure">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="6ea4cf67-0399-423f-b23b-c54d7e088267" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='0f7eed4a-ac9a-4f38-9825-876e41e8c100'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="temperature">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="f7e9044e-ef11-4093-8d96-8c3ad5f3f560" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='0f7eed4a-ac9a-4f38-9825-876e41e8c100'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="volume_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="37addb43-9679-43c2-a429-4b67e755b324" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='0f7eed4a-ac9a-4f38-9825-876e41e8c100'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="velocity">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="SPEED" unit="METRE" perTimeUnit="SECOND"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" name="Out" id="607e9ed3-3e2e-4c08-bffe-0d713420cce7" connectedTo="6829cf4d-0dd9-43ac-8581-87b9998ca5bc" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="da4569e6-8c3a-4a11-a3ca-35e5a58d5f1a" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='0f7eed4a-ac9a-4f38-9825-876e41e8c100'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="mass_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" multiplier="KILO" unit="GRAM" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="f02537b9-d9d5-438e-be6c-815e04aa203a" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='0f7eed4a-ac9a-4f38-9825-876e41e8c100'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="pressure">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="77acdbb8-4f5c-4f8b-9c38-c0dc6406f36f" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='0f7eed4a-ac9a-4f38-9825-876e41e8c100'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="temperature">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="b98de83f-9f5d-457f-9e75-043d6e05313e" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='0f7eed4a-ac9a-4f38-9825-876e41e8c100'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="volume_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="f4efe757-dca6-48d4-a1dc-19a40fd1fd45" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='0f7eed4a-ac9a-4f38-9825-876e41e8c100'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="velocity">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="SPEED" unit="METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="7babe5aa-397e-4840-aa8c-05d83c8d1cfa" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='0f7eed4a-ac9a-4f38-9825-876e41e8c100'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="pressure_loss">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="3737f3d7-0b97-40aa-b70e-4e442451ef22" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='0f7eed4a-ac9a-4f38-9825-876e41e8c100'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="pressure_loss_per_length">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="04b52e7f-a9c5-4911-a5e3-9e3bb4dd6d2a" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='0f7eed4a-ac9a-4f38-9825-876e41e8c100'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="heat_loss">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Joint" id="086f467d-afd5-4a87-aad2-0b03f185edef" name="Joint_086f">
        <geometry xsi:type="esdl:Point" lat="52.021827590527295" lon="4.409401416778565"/>
        <port xsi:type="esdl:InPort" name="In" id="9b3744f2-f9f0-4e32-a118-e116154e1384" connectedTo="37a4d419-e788-4ca7-a033-3a06c6872fdf" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret"/>
        <port xsi:type="esdl:OutPort" name="Out" id="3a52317d-827b-4dc4-a6df-1b145bbb1736" connectedTo="9a462e32-2e53-40ca-97eb-8394b6a3d131 3874047c-96e8-4555-902a-8646daf3f984" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret"/>
      </asset>
      <asset xsi:type="esdl:Pipe" outerDiameter="0.16" innerDiameter="0.1" id="3a1d7c9a-18cd-4360-ae7f-74062a514317" diameter="DN150" length="993.35" name="Pipe5_ret_a">
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" lat="52.02587372990452" lon="4.421796245126029"/>
          <point xsi:type="esdl:Point" CRS="WGS84" lat="52.025761503825485" lon="4.420918767262569"/>
          <point xsi:type="esdl:Point" CRS="WGS84" lat="52.02517561310479" lon="4.419127661327588"/>
          <point xsi:type="esdl:Point" CRS="WGS84" lat="52.0233964387484" lon="4.413995586196941"/>
          <point xsi:type="esdl:Point" lat="52.021920019967986" lon="4.4088220596313485"/>
        </geometry>
        <port xsi:type="esdl:InPort" name="In_ret" id="bbb482fa-f98e-4219-ab7e-d8684b0b4e66" connectedTo="3383078a-72da-4af1-badf-686f43c73018" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="f088fdf9-c0a6-4472-b315-2bac619f372c" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='3a1d7c9a-18cd-4360-ae7f-74062a514317'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="mass_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" multiplier="KILO" unit="GRAM" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="209f6796-e1c0-42a8-8b38-7b297a7cc622" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='3a1d7c9a-18cd-4360-ae7f-74062a514317'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="pressure">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="14e7f871-d231-4930-8871-2ff07878cca3" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='3a1d7c9a-18cd-4360-ae7f-74062a514317'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="temperature">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="2561f206-a9c8-48de-9b70-b3109b2b6ce8" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='3a1d7c9a-18cd-4360-ae7f-74062a514317'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="volume_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="b10d6224-9b14-4fee-b795-39051cdbd36f" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='3a1d7c9a-18cd-4360-ae7f-74062a514317'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="velocity">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="SPEED" unit="METRE" perTimeUnit="SECOND"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" name="Out" id="23be2b8d-5f5a-471f-875f-b7e20997f7c5" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" connectedTo="027db45e-289d-4611-94ba-95d04abec30f">
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="d9491ca9-f5f5-47dd-8460-f8c93cff14de" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='3a1d7c9a-18cd-4360-ae7f-74062a514317'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="mass_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" multiplier="KILO" unit="GRAM" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="11b4e0b3-e78a-4ee7-b966-629fe8f9a4da" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='3a1d7c9a-18cd-4360-ae7f-74062a514317'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="pressure">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="b63cd25c-ceb5-4e24-bccf-9d6b5905dbe5" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='3a1d7c9a-18cd-4360-ae7f-74062a514317'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="temperature">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="082532ee-a328-42db-938c-954148ebae90" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='3a1d7c9a-18cd-4360-ae7f-74062a514317'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="volume_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="bebf271f-eacb-4c98-960f-122c6056de7f" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='3a1d7c9a-18cd-4360-ae7f-74062a514317'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="velocity">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="SPEED" unit="METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="8c0a54fe-340f-43a6-9490-51d499f3de0f" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='3a1d7c9a-18cd-4360-ae7f-74062a514317'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="pressure_loss">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="c9800467-340a-49e7-bb07-1b1de3c84f60" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='3a1d7c9a-18cd-4360-ae7f-74062a514317'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="pressure_loss_per_length">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="e1cae00c-90d4-4143-a75e-0047d0173560" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='3a1d7c9a-18cd-4360-ae7f-74062a514317'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="heat_loss">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Pipe" outerDiameter="0.16" innerDiameter="0.1" id="92af5656-dbd3-4ddf-abaa-9ef47ea96333" diameter="DN150" length="632.79" name="Pipe5_ret_b">
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" lat="52.021920019967986" lon="4.4088220596313485"/>
          <point xsi:type="esdl:Point" CRS="WGS84" lat="52.02158748391286" lon="4.4076804239030505"/>
          <point xsi:type="esdl:Point" CRS="WGS84" lat="52.019180932421804" lon="4.400719145015912"/>
        </geometry>
        <port xsi:type="esdl:InPort" name="In" id="fb200deb-6383-4e50-b041-9536046ee404" connectedTo="ba8ac663-b53c-400a-a838-206da20b63d7" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="4401842d-c7a9-4fb3-b88a-53d90957baeb" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='92af5656-dbd3-4ddf-abaa-9ef47ea96333'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="mass_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" multiplier="KILO" unit="GRAM" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="b51df850-a6de-4ae5-8344-fee569548adb" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='92af5656-dbd3-4ddf-abaa-9ef47ea96333'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="pressure">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="79b1918b-6065-4316-a3fb-28e888c2e014" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='92af5656-dbd3-4ddf-abaa-9ef47ea96333'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="temperature">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="76b43969-b367-4af3-befb-255c281adaf4" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='92af5656-dbd3-4ddf-abaa-9ef47ea96333'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="volume_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="c95b12fd-d48a-4be3-ad01-1154d6ca0a37" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='92af5656-dbd3-4ddf-abaa-9ef47ea96333'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="velocity">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="SPEED" unit="METRE" perTimeUnit="SECOND"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" name="Out_ret" id="35ff6c51-ecdc-419c-9e67-8dbbf4ccaa42" connectedTo="c06f582d-1922-47e3-ae04-a740b28353e3" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="c816ccc6-3334-4d4f-b118-ede1af938d37" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='92af5656-dbd3-4ddf-abaa-9ef47ea96333'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="mass_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" multiplier="KILO" unit="GRAM" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="1f79ab08-3467-479c-95b9-8f9551669870" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='92af5656-dbd3-4ddf-abaa-9ef47ea96333'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="pressure">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="fee13eb4-ea72-4de3-a7dd-aec219f7c1b7" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='92af5656-dbd3-4ddf-abaa-9ef47ea96333'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="temperature">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="01ea998f-47c8-4c45-bbe3-394078d49046" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='92af5656-dbd3-4ddf-abaa-9ef47ea96333'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="volume_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="599449ce-dc8d-499b-ba86-399aa9a9f264" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='92af5656-dbd3-4ddf-abaa-9ef47ea96333'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="velocity">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="SPEED" unit="METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="44c2559e-734e-4601-935d-1de4c0a3c960" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='92af5656-dbd3-4ddf-abaa-9ef47ea96333'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="pressure_loss">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="94131358-9091-4f97-b204-b291127ae40b" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='92af5656-dbd3-4ddf-abaa-9ef47ea96333'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="pressure_loss_per_length">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="75bb7988-2fb3-418e-a88d-c29990e5dcbc" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='92af5656-dbd3-4ddf-abaa-9ef47ea96333'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="heat_loss">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Joint" id="526a38b8-cf6c-407e-9a76-837d409fdf12" name="Joint_526a">
        <geometry xsi:type="esdl:Point" lat="52.021920019967986" lon="4.4088220596313485"/>
        <port xsi:type="esdl:InPort" name="In" id="027db45e-289d-4611-94ba-95d04abec30f" connectedTo="23be2b8d-5f5a-471f-875f-b7e20997f7c5 7ca06d72-bb1d-41ac-9a19-6306fb33e10e" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret"/>
        <port xsi:type="esdl:OutPort" name="Out" id="ba8ac663-b53c-400a-a838-206da20b63d7" connectedTo="fb200deb-6383-4e50-b041-9536046ee404" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret"/>
      </asset>
      <asset xsi:type="esdl:Pipe" id="fa07b73b-0ec7-4a6d-bbd5-60b5fdf09d92" diameter="DN150" length="599.3" name="Pipe_ates">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.021827590527295" lon="4.409401416778565"/>
          <point xsi:type="esdl:Point" lat="52.02648843713918" lon="4.4050025939941415"/>
        </geometry>
        <port xsi:type="esdl:InPort" name="In" id="3874047c-96e8-4555-902a-8646daf3f984" connectedTo="3a52317d-827b-4dc4-a6df-1b145bbb1736" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="dab9db52-9070-4dce-a5f4-31a734da1104" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='fa07b73b-0ec7-4a6d-bbd5-60b5fdf09d92'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="mass_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" multiplier="KILO" unit="GRAM" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="674ecf85-90cc-4e96-954a-697b141aa388" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='fa07b73b-0ec7-4a6d-bbd5-60b5fdf09d92'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="pressure">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="c3ef6f85-b020-44f2-8eaf-57375efae565" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='fa07b73b-0ec7-4a6d-bbd5-60b5fdf09d92'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="temperature">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="5d0aeeec-8cdc-4492-84fe-a2b6351afa33" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='fa07b73b-0ec7-4a6d-bbd5-60b5fdf09d92'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="volume_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="3dd0bbb1-be77-4d72-bedc-02c16b7d27e5" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='fa07b73b-0ec7-4a6d-bbd5-60b5fdf09d92'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="velocity">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="SPEED" unit="METRE" perTimeUnit="SECOND"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" name="Out" id="b94d1e9b-5377-4016-9bb3-4452effb5a20" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" connectedTo="e14c67db-96c3-4fc9-aed2-4fe0f84a34d3">
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="4c82da45-b7ee-4936-a396-27257bf304b0" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='fa07b73b-0ec7-4a6d-bbd5-60b5fdf09d92'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="mass_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" multiplier="KILO" unit="GRAM" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="222160cc-d173-4793-abb0-2512b84a5419" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='fa07b73b-0ec7-4a6d-bbd5-60b5fdf09d92'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="pressure">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="ea3cdd89-db7a-4315-b792-2c42e80da413" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='fa07b73b-0ec7-4a6d-bbd5-60b5fdf09d92'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="temperature">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="8ae01e2c-3a96-423d-9c86-942ecba733c9" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='fa07b73b-0ec7-4a6d-bbd5-60b5fdf09d92'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="volume_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="b4d15049-1798-4a45-b9e6-2620f90e39ba" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='fa07b73b-0ec7-4a6d-bbd5-60b5fdf09d92'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="velocity">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="SPEED" unit="METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="fa318102-e273-4d37-a51a-06a5580c8fb2" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='fa07b73b-0ec7-4a6d-bbd5-60b5fdf09d92'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="pressure_loss">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="6ded0fe1-4093-4e0c-a5f1-e6fb36374796" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='fa07b73b-0ec7-4a6d-bbd5-60b5fdf09d92'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="pressure_loss_per_length">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="ec3f7fbb-9ff7-48cf-92a1-c3aebfed7ffb" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='fa07b73b-0ec7-4a6d-bbd5-60b5fdf09d92'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="heat_loss">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Pipe" id="1f1a7ed1-c6fe-4afe-a39c-77803b8aed2f" diameter="DN150" length="549.0" name="Pipe_ates_ret">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.02633000273639" lon="4.404745101928712"/>
          <point xsi:type="esdl:Point" lat="52.02203885753961" lon="4.408714771270753"/>
        </geometry>
        <port xsi:type="esdl:InPort" name="In" id="9a58c5ba-1ac1-48cb-b583-5c568190ae3c" connectedTo="07a302f6-4e5b-40ef-87e3-c908a993dfe4" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="43b8aaa5-379e-4d4b-b725-f0ecbb85bf3d" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='1f1a7ed1-c6fe-4afe-a39c-77803b8aed2f'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="mass_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" multiplier="KILO" unit="GRAM" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="5be71ef1-3b42-4ae5-9e56-f4a41b121ff8" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='1f1a7ed1-c6fe-4afe-a39c-77803b8aed2f'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="pressure">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="25f827f8-f2e9-4b75-8922-04ff0bb0aef5" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='1f1a7ed1-c6fe-4afe-a39c-77803b8aed2f'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="temperature">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="8ee879f1-2e7b-4d67-89d5-d117939e5e65" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='1f1a7ed1-c6fe-4afe-a39c-77803b8aed2f'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="volume_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="d1cb923c-8946-4e37-9dea-bca0ef5eaaae" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='1f1a7ed1-c6fe-4afe-a39c-77803b8aed2f'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="velocity">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="SPEED" unit="METRE" perTimeUnit="SECOND"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" name="Out" id="7ca06d72-bb1d-41ac-9a19-6306fb33e10e" connectedTo="027db45e-289d-4611-94ba-95d04abec30f" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="2148be45-37bc-4049-8837-9b0d2af9a1b9" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='1f1a7ed1-c6fe-4afe-a39c-77803b8aed2f'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="mass_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" multiplier="KILO" unit="GRAM" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="3badcaaf-54d0-43ee-a5c6-5554e0f80118" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='1f1a7ed1-c6fe-4afe-a39c-77803b8aed2f'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="pressure">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="561ed878-08dd-4066-81a9-ead02ee7cee0" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='1f1a7ed1-c6fe-4afe-a39c-77803b8aed2f'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="temperature">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="868e3e18-57e6-4a46-91ef-6aafbf1c5fd4" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='1f1a7ed1-c6fe-4afe-a39c-77803b8aed2f'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="volume_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="f9ab5917-54ff-441e-8129-ee8008751ce1" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='1f1a7ed1-c6fe-4afe-a39c-77803b8aed2f'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="velocity">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="SPEED" unit="METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="1303733a-86c9-4a03-a1cc-f05d42bdbb99" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='1f1a7ed1-c6fe-4afe-a39c-77803b8aed2f'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="pressure_loss">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="0c60046b-d266-4e3e-a7ed-3a47111ee62c" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='1f1a7ed1-c6fe-4afe-a39c-77803b8aed2f'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="pressure_loss_per_length">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="f8e13ef6-3f73-403d-9494-b1c7daa3780e" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='1f1a7ed1-c6fe-4afe-a39c-77803b8aed2f'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="heat_loss">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:ATES" maxChargeRate="11610000.0" aquiferAnisotropy="4.0" wellDistance="150.0" aquiferThickness="45.0" aquiferPorosity="0.3" salinity="10000.0" id="4d6dfb40-ea51-4176-a27e-4ee60cad4034" aquiferMidTemperature="17.0" maxDischargeRate="11610000.0" aquiferPermeability="10000.0" wellCasingSize="13.0" aquiferTopDepth="300.0" name="ATES_4d6d" aquiferNetToGross="1.0">
        <costInformation xsi:type="esdl:CostInformation">
          <variableOperationalCosts xsi:type="esdl:SingleValue" value="69666.67">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="3c9f580e-b71a-4bc8-8cea-cb6788c0bf49" unit="EURO" description="Cost in EUR/yr" perTimeUnit="YEAR"/>
          </variableOperationalCosts>
          <fixedMaintenanceCosts xsi:type="esdl:SingleValue" value="115472.22">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="57537388-7fd7-40b3-a0c4-0ce65648eaab" unit="EURO" description="Cost in EUR/yr" perTimeUnit="YEAR"/>
          </fixedMaintenanceCosts>
          <fixedOperationalCosts xsi:type="esdl:SingleValue" value="30000.0">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="574ef21d-681a-43ae-a1cb-f7b25d88defb" unit="EURO" description="Cost in EUR/yr" perTimeUnit="YEAR"/>
          </fixedOperationalCosts>
          <investmentCosts xsi:type="esdl:SingleValue" value="2333594.0">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="a3b5cdd9-364b-4262-bce5-4658c5f1bac9" unit="EURO" description="Cost in EUR"/>
          </investmentCosts>
        </costInformation>
        <port xsi:type="esdl:InPort" name="In" id="e14c67db-96c3-4fc9-aed2-4fe0f84a34d3" connectedTo="b94d1e9b-5377-4016-9bb3-4452effb5a20" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
          <profile xsi:type="esdl:InfluxDBProfile" port="443" host="profiles.warmingup.info" filters="" id="1e323c5f-f645-42bf-8631-b63b0a24c424" startDate="2018-12-31T23:00:00.000000+0000" field="demand4_MW" measurement="WarmingUp default profiles" multiplier="5.0" database="energy_profiles" endDate="2019-12-31T22:00:00.000000+0000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="e9405fc8-5e57-4df5-8584-4babee7cdf1b"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="31751448-5370-472a-9924-d237419edfc8" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='4d6dfb40-ea51-4176-a27e-4ee60cad4034'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="mass_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" multiplier="KILO" unit="GRAM" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="8957b810-990e-41fc-bb9f-a08b1252b62a" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='4d6dfb40-ea51-4176-a27e-4ee60cad4034'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="pressure">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="383554fa-e6aa-4133-8f72-081a3287493f" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='4d6dfb40-ea51-4176-a27e-4ee60cad4034'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="temperature">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="77c10614-ef23-4afa-8e08-9517cf27ffc4" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='4d6dfb40-ea51-4176-a27e-4ee60cad4034'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="volume_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" name="Out" id="07a302f6-4e5b-40ef-87e3-c908a993dfe4" connectedTo="9a58c5ba-1ac1-48cb-b583-5c568190ae3c" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="3c0f5588-4849-4460-9cd5-770e3e77a050" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='4d6dfb40-ea51-4176-a27e-4ee60cad4034'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="mass_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" multiplier="KILO" unit="GRAM" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="4dd1118b-9d5d-451a-8c29-5a251c27f7a2" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='4d6dfb40-ea51-4176-a27e-4ee60cad4034'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="pressure">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="3e710a13-94e5-46f3-92b5-33cc483b4869" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='4d6dfb40-ea51-4176-a27e-4ee60cad4034'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="temperature">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="0446d3ca-506b-4f43-b8aa-c14e74e605c8" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='4d6dfb40-ea51-4176-a27e-4ee60cad4034'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="volume_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
        </port>
        <dataSource xsi:type="esdl:DataSource" description="This data was generated using the 'kosten_per_asset.xslx' file in the 'Kentallen' directory of WarmingUp project 1D" name="WarmingUp factsheet: HT-ATES (high)" attribution=""/>
        <geometry xsi:type="esdl:Point" lat="52.026597360465495" lon="4.404745101928712"/>
      </asset>
      <asset xsi:type="esdl:GenericProducer" power="100000000.0" id="0375b489-b57b-439d-9ce9-db2dc9d0bbb9" name="GenericProducer_0375">
        <geometry xsi:type="esdl:Point" lat="52.0197014548679" CRS="WGS84" lon="4.40077438452907"/>
        <port xsi:type="esdl:OutPort" name="Out" id="7dde77c4-a956-4496-b8b9-e714317cc0f2" connectedTo="30f746ff-aca7-4e55-946e-3dcaf2ac7569" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="0b0d2610-c68e-4478-a8c9-9d82b552645d" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='0375b489-b57b-439d-9ce9-db2dc9d0bbb9'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="mass_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" multiplier="KILO" unit="GRAM" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="3892189f-8876-4ec8-b12e-9f500dae071d" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='0375b489-b57b-439d-9ce9-db2dc9d0bbb9'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="pressure">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="c8aaa0b4-2446-4c89-9b84-a0805c714635" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='0375b489-b57b-439d-9ce9-db2dc9d0bbb9'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="temperature">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="a228780c-dffc-42a9-a31a-77ca30535b8f" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='0375b489-b57b-439d-9ce9-db2dc9d0bbb9'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="volume_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="7e988c03-7881-46d9-ba0d-6ac7778f2f21" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='0375b489-b57b-439d-9ce9-db2dc9d0bbb9'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="heat_supply_set_point">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="79be3ea6-78ab-4ed1-97bb-549bc0cc89b6" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='0375b489-b57b-439d-9ce9-db2dc9d0bbb9'" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" field="heat_supplied">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
        </port>
        <port xsi:type="esdl:InPort" name="In" id="f8113571-6167-4850-b558-f97f39a0a3f3" connectedTo="095f2c36-395f-4183-a760-80d5362e1de3" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="eaea027b-30ef-42ca-8929-b5592a0e5ecb" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='0375b489-b57b-439d-9ce9-db2dc9d0bbb9'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="mass_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" multiplier="KILO" unit="GRAM" perTimeUnit="SECOND"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="192d6423-a9d3-4c2e-a89b-a84e406fdbdd" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='0375b489-b57b-439d-9ce9-db2dc9d0bbb9'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="pressure">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="2e2ac885-754e-49ba-9e34-c4e22fcb0d45" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='0375b489-b57b-439d-9ce9-db2dc9d0bbb9'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="temperature">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" profileType="OUTPUT" id="8af6464d-eca7-4e99-864a-82f49cd1af56" startDate="2019-01-01T00:00:00.000000" endDate="2019-01-01T02:00:00.000000" host="omotes_influxdb" port="8096" database="9f46554d-798e-4cf5-8a09-02d40bc395ee" filters="&quot;assetId&quot;='0375b489-b57b-439d-9ce9-db2dc9d0bbb9'" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" field="volume_flow">
            <dataSource xsi:type="esdl:DataSourceReference" reference="2bd0fca0-a319-4bc8-883b-9a5a91ced46f"/>
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" unit="CUBIC_METRE" perTimeUnit="SECOND"/>
          </profile>
        </port>
      </asset>
    </area>
  </instance>
</esdl:EnergySystem>
