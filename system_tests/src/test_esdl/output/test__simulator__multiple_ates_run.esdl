<?xml version='1.0' encoding='UTF-8'?>
<esdl:EnergySystem xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:esdl="http://www.tno.nl/esdl" version="10" esdlVersion="v2111" id="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" name="course_model with return network_simulator" description="basic">
  <energySystemInformation xsi:type="esdl:EnergySystemInformation" id="9a76b800-6e2c-4e99-a9a5-859f7badd061">
    <quantityAndUnits xsi:type="esdl:QuantityAndUnits" id="54fda8fc-e725-4c44-8a49-726a811ba069">
      <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" description="Energy in GJ" multiplier="GIGA" unit="JOULE" id="eb07bccb-203f-407e-af98-e687656a221d" physicalQuantity="ENERGY"/>
      <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" description="Power in MW" multiplier="MEGA" unit="WATT" id="e9405fc8-5e57-4df5-8584-4babee7cdf1b" physicalQuantity="POWER"/>
      <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" description="Power in kW" multiplier="KILO" unit="WATT" id="e9405fc8-5e57-4df5-8584-4babee7cdf1a" physicalQuantity="POWER"/>
    </quantityAndUnits>
    <carriers xsi:type="esdl:Carriers" id="e84423d9-b617-4fa0-b113-1ba12daacaaf">
      <carrier xsi:type="esdl:HeatCommodity" name="supply_ret" returnTemperature="40.0" id="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" supplyTemperature="80.0"/>
      <carrier xsi:type="esdl:HeatCommodity" name="Return_ret" returnTemperature="40.0" id="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" supplyTemperature="80.0"/>
    </carriers>
  </energySystemInformation>
  <instance xsi:type="esdl:Instance" id="8db3337e-440e-48d1-b1e9-6f86c4f76320" name="Untitled instance">
    <area xsi:type="esdl:Area" name="Untitled area" id="a3f3b5d9-2faa-4862-a5b0-d02b219052dd">
      <asset xsi:type="esdl:HeatingDemand" maxTemperature="120.0" minTemperature="40.0" power="5000000.0" name="Pijnacker" id="cc61c52a-29a6-45d3-81e8-ce18ba12f319">
        <geometry xsi:type="esdl:Point" lat="52.01906782352804" lon="4.431524276733399"/>
        <port xsi:type="esdl:InPort" id="c3eb59bc-037d-4684-918e-df0f54af5b3d" connectedTo="9e1c58ab-ec19-4964-928f-d2a582af6ce8" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" name="In">
          <profile xsi:type="esdl:InfluxDBProfile" multiplier="5.0" port="443" database="energy_profiles" host="profiles.warmingup.info" id="131d801f-9f8e-4dc4-9a8a-82725607eedf" field="demand2_MW" endDate="2019-12-31T22:00:00.000000+0000" startDate="2018-12-31T23:00:00.000000+0000" filters="" measurement="WarmingUp default profiles">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="e9405fc8-5e57-4df5-8584-4babee7cdf1b"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="593841a7-7780-4d04-b966-3c9bdf733f99" endDate="2019-01-01T02:00:00.000000" field="mass_flow" startDate="2019-01-01T00:00:00.000000" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" perTimeUnit="SECOND" unit="GRAM" multiplier="KILO"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="83571082-57c8-400e-ba62-c3003dc7706e" endDate="2019-01-01T02:00:00.000000" field="pressure" startDate="2019-01-01T00:00:00.000000" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="ce2d3897-b899-42ed-9153-301a13223c77" endDate="2019-01-01T02:00:00.000000" field="temperature" startDate="2019-01-01T00:00:00.000000" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" id="fcf96c55-8264-41a5-90ee-0977a394a46a" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" connectedTo="99628a79-e31c-4a99-bf4a-2f788a5d5343" name="Out">
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="02afec06-4b40-4127-9adb-0a02d15bb62d" endDate="2019-01-01T02:00:00.000000" field="mass_flow" startDate="2019-01-01T00:00:00.000000" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" perTimeUnit="SECOND" unit="GRAM" multiplier="KILO"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="338981aa-2ee0-4303-a0ca-a27ed65688c4" endDate="2019-01-01T02:00:00.000000" field="pressure" startDate="2019-01-01T00:00:00.000000" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="127be318-4fae-49a4-9ca8-fdc67084511a" endDate="2019-01-01T02:00:00.000000" field="temperature" startDate="2019-01-01T00:00:00.000000" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:HeatingDemand" maxTemperature="120.0" minTemperature="40.0" power="5000000.0" name="Delfgauw" id="8805731a-8780-47b4-8204-76ba074564bc">
        <geometry xsi:type="esdl:Point" lat="52.0094006941874" lon="4.396162033081056"/>
        <port xsi:type="esdl:InPort" id="69464799-3ec3-4928-a5da-6158a6237c76" connectedTo="88b6c35c-7eeb-42e9-ba4e-491fa6c7a6fc" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" name="In">
          <profile xsi:type="esdl:InfluxDBProfile" multiplier="5.0" port="443" database="energy_profiles" host="profiles.warmingup.info" id="0380fe5a-611c-4523-9eda-1d0ecd69271e" field="demand1_MW" endDate="2019-12-31T22:00:00.000000+0000" startDate="2018-12-31T23:00:00.000000+0000" filters="" measurement="WarmingUp default profiles">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="e9405fc8-5e57-4df5-8584-4babee7cdf1b"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="550ab8e4-74d6-479d-beb5-792fa415b827" endDate="2019-01-01T02:00:00.000000" field="mass_flow" startDate="2019-01-01T00:00:00.000000" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" perTimeUnit="SECOND" unit="GRAM" multiplier="KILO"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="0c2b6d46-9a82-413f-a4f7-5eb2755c090f" endDate="2019-01-01T02:00:00.000000" field="pressure" startDate="2019-01-01T00:00:00.000000" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="0fb45c18-4f32-4769-87c9-349f6c89da51" endDate="2019-01-01T02:00:00.000000" field="temperature" startDate="2019-01-01T00:00:00.000000" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" id="c8625b7f-e9ad-4327-899e-0c6e91e873cb" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" connectedTo="1467bee7-ed90-49d5-8395-3595408ad1ee" name="Out">
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="3a7ed69d-3612-4de6-8de0-82c5ae5a2a67" endDate="2019-01-01T02:00:00.000000" field="mass_flow" startDate="2019-01-01T00:00:00.000000" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" perTimeUnit="SECOND" unit="GRAM" multiplier="KILO"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="dcf47e22-8d13-4562-b2a1-999a8235cdfc" endDate="2019-01-01T02:00:00.000000" field="pressure" startDate="2019-01-01T00:00:00.000000" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="bf8efef9-1e90-4766-b45e-fc0c6d6fc6d5" endDate="2019-01-01T02:00:00.000000" field="temperature" startDate="2019-01-01T00:00:00.000000" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:HeatingDemand" maxTemperature="120.0" minTemperature="40.0" power="5000000.0" name="Nootdorp" id="156c4afb-4106-4286-8f41-fbf8edc6e5ce">
        <geometry xsi:type="esdl:Point" lat="52.04277777849674" lon="4.3912696838378915"/>
        <port xsi:type="esdl:InPort" id="ad377fa7-710f-45e7-9144-1521bef5c1ab" connectedTo="22be2ae1-10c0-42eb-abd9-6b115b800283" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" name="In">
          <profile xsi:type="esdl:InfluxDBProfile" multiplier="5.0" port="443" database="energy_profiles" host="profiles.warmingup.info" id="57131b4a-f177-47da-b7d7-788f23eefb5b" field="demand3_MW" endDate="2019-12-31T22:00:00.000000+0000" startDate="2018-12-31T23:00:00.000000+0000" filters="" measurement="WarmingUp default profiles">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="e9405fc8-5e57-4df5-8584-4babee7cdf1b"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="bf29e779-d60a-4351-839d-f472b345052f" endDate="2019-01-01T02:00:00.000000" field="mass_flow" startDate="2019-01-01T00:00:00.000000" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" perTimeUnit="SECOND" unit="GRAM" multiplier="KILO"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="d7538e69-7996-463d-93cb-547616deadf7" endDate="2019-01-01T02:00:00.000000" field="pressure" startDate="2019-01-01T00:00:00.000000" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="69cb9e30-7ba8-45ba-9feb-76b02030ba29" endDate="2019-01-01T02:00:00.000000" field="temperature" startDate="2019-01-01T00:00:00.000000" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" id="f46090b9-dcd6-433f-b021-061c839e634c" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" connectedTo="fdbab763-3e05-49d6-9271-207035c14bcb" name="Out">
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="a3b1d763-fa1a-4f5b-a9ac-da3e5980177b" endDate="2019-01-01T02:00:00.000000" field="mass_flow" startDate="2019-01-01T00:00:00.000000" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" perTimeUnit="SECOND" unit="GRAM" multiplier="KILO"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="1917b2b3-791d-4870-adf1-0a0909e9243f" endDate="2019-01-01T02:00:00.000000" field="pressure" startDate="2019-01-01T00:00:00.000000" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="9bde7c2a-e823-4a16-b234-1ae3b084fedc" endDate="2019-01-01T02:00:00.000000" field="temperature" startDate="2019-01-01T00:00:00.000000" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Joint" name="Joint_1126" id="11262f35-3d51-4ce3-9a69-6eb4a6c46c9d">
        <geometry xsi:type="esdl:Point" lat="52.01909093233181" CRS="WGS84" lon="4.401419162750245"/>
        <port xsi:type="esdl:InPort" id="a8779f8a-3d61-4a97-bfb4-35029175ec97" connectedTo="7c178a7c-f6cb-4f33-8c4a-076d9131ed8a" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" name="In"/>
        <port xsi:type="esdl:OutPort" id="fd562e07-a60c-4f5c-9084-d51e736ff545" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" connectedTo="a89b5045-f815-4126-a4c8-dc125a99c0f8 b9af6540-8cae-41ce-b0c3-4528e027d3b3" name="Out"/>
      </asset>
      <asset xsi:type="esdl:Pipe" length="1533.2" related="Pipe1_ret" innerDiameter="0.08" name="Pipe1" id="Pipe1" outerDiameter="0.09" diameter="DN80">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.01909093233181" lon="4.401419162750245"/>
          <point xsi:type="esdl:Point" lat="52.01563438289948" lon="4.391613006591798"/>
          <point xsi:type="esdl:Point" lat="52.0094006941874" lon="4.396162033081056"/>
        </geometry>
        <port xsi:type="esdl:InPort" id="a89b5045-f815-4126-a4c8-dc125a99c0f8" connectedTo="fd562e07-a60c-4f5c-9084-d51e736ff545" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" name="In">
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="1cf62a86-491d-4f23-ba92-592afc1b87eb" endDate="2019-01-01T02:00:00.000000" field="mass_flow" startDate="2019-01-01T00:00:00.000000" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" perTimeUnit="SECOND" unit="GRAM" multiplier="KILO"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="0c21b044-1cdd-4ec1-9673-d93443c20f89" endDate="2019-01-01T02:00:00.000000" field="pressure" startDate="2019-01-01T00:00:00.000000" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="a9d7be49-d34f-4418-980d-00d0e41f8c67" endDate="2019-01-01T02:00:00.000000" field="temperature" startDate="2019-01-01T00:00:00.000000" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" id="88b6c35c-7eeb-42e9-ba4e-491fa6c7a6fc" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" connectedTo="69464799-3ec3-4928-a5da-6158a6237c76" name="Out">
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="1907a913-dd9e-4596-b91c-9e13ff05b7b9" endDate="2019-01-01T02:00:00.000000" field="mass_flow" startDate="2019-01-01T00:00:00.000000" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" perTimeUnit="SECOND" unit="GRAM" multiplier="KILO"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="648fd39f-09dd-44a9-aae7-9bbb9dfe6079" endDate="2019-01-01T02:00:00.000000" field="pressure" startDate="2019-01-01T00:00:00.000000" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="59a8d6d5-3a0c-4111-8df8-261cff9c9dd8" endDate="2019-01-01T02:00:00.000000" field="temperature" startDate="2019-01-01T00:00:00.000000" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Pipe" length="44.4" related="Pipe2_ret" innerDiameter="0.2" name="Pipe2" id="Pipe2" outerDiameter="0.21" diameter="DN200">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.019437562955694" lon="4.401097297668458"/>
          <point xsi:type="esdl:Point" lat="52.01909093233181" lon="4.401419162750245"/>
        </geometry>
        <port xsi:type="esdl:InPort" id="30f746ff-aca7-4e55-946e-3dcaf2ac7569" connectedTo="7dde77c4-a956-4496-b8b9-e714317cc0f2" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" name="In">
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="9973543e-b0d5-4438-8226-7569081a5ce7" endDate="2019-01-01T02:00:00.000000" field="mass_flow" startDate="2019-01-01T00:00:00.000000" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" perTimeUnit="SECOND" unit="GRAM" multiplier="KILO"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="f85d8d55-fa67-4091-b35d-b7fb04f6f475" endDate="2019-01-01T02:00:00.000000" field="pressure" startDate="2019-01-01T00:00:00.000000" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="8b1acf61-231c-4e67-893d-9f1667d5ac7d" endDate="2019-01-01T02:00:00.000000" field="temperature" startDate="2019-01-01T00:00:00.000000" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" id="7c178a7c-f6cb-4f33-8c4a-076d9131ed8a" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" connectedTo="a8779f8a-3d61-4a97-bfb4-35029175ec97" name="Out">
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="2ee45613-a8b2-4b42-a495-a1c82e1143de" endDate="2019-01-01T02:00:00.000000" field="mass_flow" startDate="2019-01-01T00:00:00.000000" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" perTimeUnit="SECOND" unit="GRAM" multiplier="KILO"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="bdf03967-2af7-47e2-a16c-a2ae77cca815" endDate="2019-01-01T02:00:00.000000" field="pressure" startDate="2019-01-01T00:00:00.000000" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="07858833-f810-4e1a-8df3-89482b033289" endDate="2019-01-01T02:00:00.000000" field="temperature" startDate="2019-01-01T00:00:00.000000" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Joint" name="Joint_91b0" id="91b0e057-84cd-4db3-8d2d-cae02077cbaf">
        <geometry xsi:type="esdl:Point" lat="52.02578372981452" CRS="WGS84" lon="4.422471821308137"/>
        <port xsi:type="esdl:InPort" id="6829cf4d-0dd9-43ac-8581-87b9998ca5bc" connectedTo="607e9ed3-3e2e-4c08-bffe-0d713420cce7" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" name="In"/>
        <port xsi:type="esdl:OutPort" id="416291d2-c5f7-4a87-919a-655924b90eb2" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" connectedTo="e3b7d0a5-e7d7-4cb2-8a33-e56d2077616b 758212e1-ab7f-44b1-a203-6ed42eb3c6bc" name="Out"/>
      </asset>
      <asset xsi:type="esdl:Pipe" length="1157.3" related="Pipe3_ret" innerDiameter="0.1" name="Pipe3" id="Pipe3" outerDiameter="0.11" diameter="DN100">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.02578372981452" lon="4.422471821308137"/>
          <point xsi:type="esdl:Point" lat="52.02318760445455" lon="4.425044059753419"/>
          <point xsi:type="esdl:Point" lat="52.02034869350056" lon="4.4269752502441415"/>
          <point xsi:type="esdl:Point" lat="52.018381156483095" lon="4.428133964538575"/>
          <point xsi:type="esdl:Point" lat="52.01906782352804" lon="4.431524276733399"/>
        </geometry>
        <port xsi:type="esdl:InPort" id="e3b7d0a5-e7d7-4cb2-8a33-e56d2077616b" connectedTo="416291d2-c5f7-4a87-919a-655924b90eb2" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" name="In">
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="dc19aa5d-42a2-42d3-ad71-be4c237ebb32" endDate="2019-01-01T02:00:00.000000" field="mass_flow" startDate="2019-01-01T00:00:00.000000" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" perTimeUnit="SECOND" unit="GRAM" multiplier="KILO"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="df1562e9-d031-4b32-84fe-9643bd98702c" endDate="2019-01-01T02:00:00.000000" field="pressure" startDate="2019-01-01T00:00:00.000000" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="1900a665-24e5-471b-81ec-5cc7de65f5d1" endDate="2019-01-01T02:00:00.000000" field="temperature" startDate="2019-01-01T00:00:00.000000" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" id="9e1c58ab-ec19-4964-928f-d2a582af6ce8" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" connectedTo="c3eb59bc-037d-4684-918e-df0f54af5b3d" name="Out">
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="384e5c9c-1228-44a4-b1fd-a57131ceee31" endDate="2019-01-01T02:00:00.000000" field="mass_flow" startDate="2019-01-01T00:00:00.000000" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" perTimeUnit="SECOND" unit="GRAM" multiplier="KILO"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="4d3a2e9e-7c1b-4c81-9a83-1150b8b278a6" endDate="2019-01-01T02:00:00.000000" field="pressure" startDate="2019-01-01T00:00:00.000000" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="7cd2535b-b9d7-4271-af6d-3dc8a693202d" endDate="2019-01-01T02:00:00.000000" field="temperature" startDate="2019-01-01T00:00:00.000000" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Pipe" length="2982.2" related="Pipe4_ret" innerDiameter="0.1" name="Pipe4" id="Pipe4" outerDiameter="0.11" diameter="DN100">
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
        <port xsi:type="esdl:InPort" id="758212e1-ab7f-44b1-a203-6ed42eb3c6bc" connectedTo="416291d2-c5f7-4a87-919a-655924b90eb2" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" name="In">
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="8a42a85e-21e9-4f0b-917a-81776720c933" endDate="2019-01-01T02:00:00.000000" field="mass_flow" startDate="2019-01-01T00:00:00.000000" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" perTimeUnit="SECOND" unit="GRAM" multiplier="KILO"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="960623a8-c9e1-47c9-a136-25816792dadc" endDate="2019-01-01T02:00:00.000000" field="pressure" startDate="2019-01-01T00:00:00.000000" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="4c65cb02-a27b-427b-8898-8eea65dcb9f4" endDate="2019-01-01T02:00:00.000000" field="temperature" startDate="2019-01-01T00:00:00.000000" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" id="22be2ae1-10c0-42eb-abd9-6b115b800283" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" connectedTo="ad377fa7-710f-45e7-9144-1521bef5c1ab" name="Out">
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="4798ce44-76bf-490f-a6dd-4662ca186d69" endDate="2019-01-01T02:00:00.000000" field="mass_flow" startDate="2019-01-01T00:00:00.000000" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" perTimeUnit="SECOND" unit="GRAM" multiplier="KILO"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="100a0d63-be8d-4209-9f1c-7a0f88a64a44" endDate="2019-01-01T02:00:00.000000" field="pressure" startDate="2019-01-01T00:00:00.000000" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="86ad6b65-3933-4f7f-95ad-7e70b1a27fe7" endDate="2019-01-01T02:00:00.000000" field="temperature" startDate="2019-01-01T00:00:00.000000" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Joint" name="Joint_1126_ret" id="c6fec31e-2c4a-423d-937c-7fc28ea81a21">
        <geometry xsi:type="esdl:Point" lat="52.019180932421804" CRS="WGS84" lon="4.400719145015912"/>
        <port xsi:type="esdl:InPort" id="c06f582d-1922-47e3-ae04-a740b28353e3" connectedTo="b4a30d86-df7a-4136-9170-55087818800d 35ff6c51-ecdc-419c-9e67-8dbbf4ccaa42" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" name="ret_port"/>
        <port xsi:type="esdl:OutPort" id="39c08ebb-b7d8-4a85-a226-800c225a8a61" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" connectedTo="fb153d7c-2dc3-4f53-bbee-f0060efef1c7" name="ret_port"/>
      </asset>
      <asset xsi:type="esdl:Joint" name="Joint_91b0_ret" id="b7a46b09-779f-4a57-b73e-ab707ec65842">
        <geometry xsi:type="esdl:Point" lat="52.02587372990452" CRS="WGS84" lon="4.421796245126029"/>
        <port xsi:type="esdl:InPort" id="9a5c2e7e-e970-4561-8538-9a4000dee416" connectedTo="002a5802-e55b-4025-abe9-8d508cfdd78c 0c142bfb-4b38-44aa-b88f-71da247525ef" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" name="ret_port"/>
        <port xsi:type="esdl:OutPort" id="3383078a-72da-4af1-badf-686f43c73018" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" connectedTo="bbb482fa-f98e-4219-ab7e-d8684b0b4e66" name="ret_port"/>
      </asset>
      <asset xsi:type="esdl:Pipe" length="1533.2" related="Pipe1" innerDiameter="0.08" name="Pipe1_ret" id="Pipe1_ret" outerDiameter="0.09" diameter="DN80">
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" lat="52.009490694277396" CRS="WGS84" lon="4.3954232586139"/>
          <point xsi:type="esdl:Point" lat="52.015724382989475" CRS="WGS84" lon="4.3908996472617385"/>
          <point xsi:type="esdl:Point" lat="52.019180932421804" CRS="WGS84" lon="4.400719145015912"/>
        </geometry>
        <port xsi:type="esdl:InPort" id="1467bee7-ed90-49d5-8395-3595408ad1ee" connectedTo="c8625b7f-e9ad-4327-899e-0c6e91e873cb" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" name="In_ret">
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="c4b79533-5a47-4b15-8605-8216d42a9c83" endDate="2019-01-01T02:00:00.000000" field="mass_flow" startDate="2019-01-01T00:00:00.000000" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" perTimeUnit="SECOND" unit="GRAM" multiplier="KILO"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="685fbfc1-72c8-4cad-ae89-a0b07b7a0a08" endDate="2019-01-01T02:00:00.000000" field="pressure" startDate="2019-01-01T00:00:00.000000" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="bd9e5565-e067-44db-9f49-33cbb687f0d8" endDate="2019-01-01T02:00:00.000000" field="temperature" startDate="2019-01-01T00:00:00.000000" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" id="b4a30d86-df7a-4136-9170-55087818800d" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" connectedTo="c06f582d-1922-47e3-ae04-a740b28353e3" name="Out_ret">
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="df11ba57-1c3e-4df2-bd1c-59c0e0fbe752" endDate="2019-01-01T02:00:00.000000" field="mass_flow" startDate="2019-01-01T00:00:00.000000" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" perTimeUnit="SECOND" unit="GRAM" multiplier="KILO"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="07911b31-1656-414b-9666-96ae6c14280e" endDate="2019-01-01T02:00:00.000000" field="pressure" startDate="2019-01-01T00:00:00.000000" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="d4140efa-a972-4b7c-a336-f42dbf6e6292" endDate="2019-01-01T02:00:00.000000" field="temperature" startDate="2019-01-01T00:00:00.000000" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Pipe" length="44.4" related="Pipe2" innerDiameter="0.2" name="Pipe2_ret" id="Pipe2_ret" outerDiameter="0.21" diameter="DN200">
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" lat="52.019180932421804" CRS="WGS84" lon="4.400719145015912"/>
          <point xsi:type="esdl:Point" lat="52.01952756304569" CRS="WGS84" lon="4.400398589922203"/>
        </geometry>
        <port xsi:type="esdl:InPort" id="fb153d7c-2dc3-4f53-bbee-f0060efef1c7" connectedTo="39c08ebb-b7d8-4a85-a226-800c225a8a61" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" name="In_ret">
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="b873ab8d-5b3d-4ea1-881c-3cb404d36ce6" endDate="2019-01-01T02:00:00.000000" field="mass_flow" startDate="2019-01-01T00:00:00.000000" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" perTimeUnit="SECOND" unit="GRAM" multiplier="KILO"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="3a8b5158-51e5-40f7-a6ee-5717643c2b3a" endDate="2019-01-01T02:00:00.000000" field="pressure" startDate="2019-01-01T00:00:00.000000" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="2914bb8c-c33a-4b1b-b9e6-05b992a797a5" endDate="2019-01-01T02:00:00.000000" field="temperature" startDate="2019-01-01T00:00:00.000000" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" id="095f2c36-395f-4183-a760-80d5362e1de3" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" connectedTo="f8113571-6167-4850-b558-f97f39a0a3f3" name="Out_ret">
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="883c63de-69c9-49ac-bb0d-e09885068ab6" endDate="2019-01-01T02:00:00.000000" field="mass_flow" startDate="2019-01-01T00:00:00.000000" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" perTimeUnit="SECOND" unit="GRAM" multiplier="KILO"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="ede7bb7c-ac7f-47b2-ad9b-aee429e6f703" endDate="2019-01-01T02:00:00.000000" field="pressure" startDate="2019-01-01T00:00:00.000000" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="72a194e0-1114-43e3-bcb4-a5ac51db5a37" endDate="2019-01-01T02:00:00.000000" field="temperature" startDate="2019-01-01T00:00:00.000000" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Pipe" length="1157.3" related="Pipe3" innerDiameter="0.1" name="Pipe3_ret" id="Pipe3_ret" outerDiameter="0.11" diameter="DN100">
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" lat="52.01915782361804" CRS="WGS84" lon="4.4308241714884975"/>
          <point xsi:type="esdl:Point" lat="52.01847115657309" CRS="WGS84" lon="4.427431248765651"/>
          <point xsi:type="esdl:Point" lat="52.020438693590556" CRS="WGS84" lon="4.426279962182911"/>
          <point xsi:type="esdl:Point" lat="52.023277604544546" CRS="WGS84" lon="4.42435921177036"/>
          <point xsi:type="esdl:Point" lat="52.02587372990452" CRS="WGS84" lon="4.421796245126029"/>
        </geometry>
        <port xsi:type="esdl:InPort" id="99628a79-e31c-4a99-bf4a-2f788a5d5343" connectedTo="fcf96c55-8264-41a5-90ee-0977a394a46a" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" name="In_ret">
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="ca47280d-2d8b-4ed3-8a68-67c542e2035e" endDate="2019-01-01T02:00:00.000000" field="mass_flow" startDate="2019-01-01T00:00:00.000000" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" perTimeUnit="SECOND" unit="GRAM" multiplier="KILO"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="6991c351-ea5f-43e4-85f7-a030395648c6" endDate="2019-01-01T02:00:00.000000" field="pressure" startDate="2019-01-01T00:00:00.000000" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="2213f47c-6990-4fce-bc1e-9b0b66ca155d" endDate="2019-01-01T02:00:00.000000" field="temperature" startDate="2019-01-01T00:00:00.000000" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" id="002a5802-e55b-4025-abe9-8d508cfdd78c" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" connectedTo="9a5c2e7e-e970-4561-8538-9a4000dee416" name="Out_ret">
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="a1f38963-63cd-4f3d-8e96-4487116e21b2" endDate="2019-01-01T02:00:00.000000" field="mass_flow" startDate="2019-01-01T00:00:00.000000" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" perTimeUnit="SECOND" unit="GRAM" multiplier="KILO"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="3596a9a2-b3bc-45bf-b5e7-0a9cd10bcacd" endDate="2019-01-01T02:00:00.000000" field="pressure" startDate="2019-01-01T00:00:00.000000" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="5fc76103-ccbe-422e-89bc-2d5136743745" endDate="2019-01-01T02:00:00.000000" field="temperature" startDate="2019-01-01T00:00:00.000000" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Pipe" length="2982.2" related="Pipe4" innerDiameter="0.1" name="Pipe4_ret" id="Pipe4_ret" outerDiameter="0.11" diameter="DN100">
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" lat="52.04292057069157" CRS="WGS84" lon="4.390477502296783"/>
          <point xsi:type="esdl:Point" lat="52.042207872014984" CRS="WGS84" lon="4.392385117209615"/>
          <point xsi:type="esdl:Point" lat="52.038195430353944" CRS="WGS84" lon="4.400290793359585"/>
          <point xsi:type="esdl:Point" lat="52.03692826868462" CRS="WGS84" lon="4.404428167491401"/>
          <point xsi:type="esdl:Point" lat="52.03603067410352" CRS="WGS84" lon="4.407965850141681"/>
          <point xsi:type="esdl:Point" lat="52.033469790513074" CRS="WGS84" lon="4.41570384355307"/>
          <point xsi:type="esdl:Point" lat="52.03059192155077" CRS="WGS84" lon="4.418805700922162"/>
          <point xsi:type="esdl:Point" lat="52.02587372990452" CRS="WGS84" lon="4.421796245126029"/>
        </geometry>
        <port xsi:type="esdl:InPort" id="fdbab763-3e05-49d6-9271-207035c14bcb" connectedTo="f46090b9-dcd6-433f-b021-061c839e634c" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" name="In_ret">
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="bd224e68-e459-4e9a-8f7b-0c41be4888eb" endDate="2019-01-01T02:00:00.000000" field="mass_flow" startDate="2019-01-01T00:00:00.000000" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" perTimeUnit="SECOND" unit="GRAM" multiplier="KILO"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="3fa02ce6-4b9d-4d1f-9206-3bd15ecd2cae" endDate="2019-01-01T02:00:00.000000" field="pressure" startDate="2019-01-01T00:00:00.000000" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="112412a1-6313-455a-8d9b-1613905fb3fb" endDate="2019-01-01T02:00:00.000000" field="temperature" startDate="2019-01-01T00:00:00.000000" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" id="0c142bfb-4b38-44aa-b88f-71da247525ef" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" connectedTo="9a5c2e7e-e970-4561-8538-9a4000dee416" name="Out_ret">
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="96629ccf-8442-4d59-8920-e2015e5d62eb" endDate="2019-01-01T02:00:00.000000" field="mass_flow" startDate="2019-01-01T00:00:00.000000" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" perTimeUnit="SECOND" unit="GRAM" multiplier="KILO"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="adbc10dc-d899-46df-b5ef-bd9eb87dc572" endDate="2019-01-01T02:00:00.000000" field="pressure" startDate="2019-01-01T00:00:00.000000" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="c9801112-31a4-4e96-8959-c76264a3fd88" endDate="2019-01-01T02:00:00.000000" field="temperature" startDate="2019-01-01T00:00:00.000000" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Pipe" length="625.29" innerDiameter="0.15" name="Pipe5_a" id="2b5ba02c-bbfe-4bb9-9e4e-48c4c45c53e9" outerDiameter="0.16" diameter="DN150">
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" lat="52.01909093233181" lon="4.401419162750245"/>
          <point xsi:type="esdl:Point" lat="52.02149748382286" lon="4.408371448516847"/>
          <point xsi:type="esdl:Point" lat="52.021827590527295" lon="4.409401416778565"/>
        </geometry>
        <port xsi:type="esdl:InPort" id="b9af6540-8cae-41ce-b0c3-4528e027d3b3" connectedTo="fd562e07-a60c-4f5c-9084-d51e736ff545" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" name="In">
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="95edf249-fe57-4ab4-90e6-6a6f419b969c" endDate="2019-01-01T02:00:00.000000" field="mass_flow" startDate="2019-01-01T00:00:00.000000" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" perTimeUnit="SECOND" unit="GRAM" multiplier="KILO"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="e6c752e7-81e6-4872-86f6-91d0eb22db3d" endDate="2019-01-01T02:00:00.000000" field="pressure" startDate="2019-01-01T00:00:00.000000" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="398439d9-4d37-460a-8244-ca456467ced9" endDate="2019-01-01T02:00:00.000000" field="temperature" startDate="2019-01-01T00:00:00.000000" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" id="37a4d419-e788-4ca7-a033-3a06c6872fdf" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" connectedTo="9b3744f2-f9f0-4e32-a118-e116154e1384" name="Out">
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="a09f6f67-a537-4eb0-9bb8-1949734e057d" endDate="2019-01-01T02:00:00.000000" field="mass_flow" startDate="2019-01-01T00:00:00.000000" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" perTimeUnit="SECOND" unit="GRAM" multiplier="KILO"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="9bf1a85d-ab01-4adc-a152-2f88c5975ca7" endDate="2019-01-01T02:00:00.000000" field="pressure" startDate="2019-01-01T00:00:00.000000" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="bf5aa503-46da-43b0-8372-889e709aa61b" endDate="2019-01-01T02:00:00.000000" field="temperature" startDate="2019-01-01T00:00:00.000000" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Pipe" length="999.47" innerDiameter="0.15" name="Pipe5_b" id="0f7eed4a-ac9a-4f38-9825-876e41e8c100" outerDiameter="0.16" diameter="DN150">
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" lat="52.021827590527295" lon="4.409401416778565"/>
          <point xsi:type="esdl:Point" lat="52.0233064386584" lon="4.414680004119874"/>
          <point xsi:type="esdl:Point" lat="52.025085613014795" lon="4.419805705547334"/>
          <point xsi:type="esdl:Point" lat="52.02567150373549" lon="4.421594738960267"/>
          <point xsi:type="esdl:Point" lat="52.02578372981452" lon="4.422471821308137"/>
        </geometry>
        <port xsi:type="esdl:InPort" id="9a462e32-2e53-40ca-97eb-8394b6a3d131" connectedTo="3a52317d-827b-4dc4-a6df-1b145bbb1736" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" name="In">
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="cda5ffe3-6bc6-4422-b212-e2623b257462" endDate="2019-01-01T02:00:00.000000" field="mass_flow" startDate="2019-01-01T00:00:00.000000" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" perTimeUnit="SECOND" unit="GRAM" multiplier="KILO"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="23589596-940a-4ff5-b396-f90b19e5149b" endDate="2019-01-01T02:00:00.000000" field="pressure" startDate="2019-01-01T00:00:00.000000" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="267e603a-f218-40b8-84d6-f84b617e3f3d" endDate="2019-01-01T02:00:00.000000" field="temperature" startDate="2019-01-01T00:00:00.000000" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" id="607e9ed3-3e2e-4c08-bffe-0d713420cce7" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" connectedTo="6829cf4d-0dd9-43ac-8581-87b9998ca5bc" name="Out">
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="6caf4d64-3d64-44b1-942a-fac3c67b6407" endDate="2019-01-01T02:00:00.000000" field="mass_flow" startDate="2019-01-01T00:00:00.000000" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" perTimeUnit="SECOND" unit="GRAM" multiplier="KILO"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="d5552c6d-c250-4378-a58d-a3731358573e" endDate="2019-01-01T02:00:00.000000" field="pressure" startDate="2019-01-01T00:00:00.000000" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="2dada7af-72be-4ba5-b8ee-8b9909531e56" endDate="2019-01-01T02:00:00.000000" field="temperature" startDate="2019-01-01T00:00:00.000000" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Joint" name="Joint_086f" id="086f467d-afd5-4a87-aad2-0b03f185edef">
        <geometry xsi:type="esdl:Point" lat="52.021827590527295" lon="4.409401416778565"/>
        <port xsi:type="esdl:InPort" id="9b3744f2-f9f0-4e32-a118-e116154e1384" connectedTo="37a4d419-e788-4ca7-a033-3a06c6872fdf" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" name="In"/>
        <port xsi:type="esdl:OutPort" id="3a52317d-827b-4dc4-a6df-1b145bbb1736" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" connectedTo="9a462e32-2e53-40ca-97eb-8394b6a3d131 3874047c-96e8-4555-902a-8646daf3f984" name="Out"/>
      </asset>
      <asset xsi:type="esdl:Pipe" length="993.35" innerDiameter="0.1" name="Pipe5_ret_a" id="3a1d7c9a-18cd-4360-ae7f-74062a514317" outerDiameter="0.16" diameter="DN150">
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" lat="52.02587372990452" lon="4.421796245126029"/>
          <point xsi:type="esdl:Point" lat="52.025761503825485" CRS="WGS84" lon="4.420918767262569"/>
          <point xsi:type="esdl:Point" lat="52.02517561310479" CRS="WGS84" lon="4.419127661327588"/>
          <point xsi:type="esdl:Point" lat="52.0233964387484" CRS="WGS84" lon="4.413995586196941"/>
          <point xsi:type="esdl:Point" lat="52.021920019967986" lon="4.4088220596313485"/>
        </geometry>
        <port xsi:type="esdl:InPort" id="bbb482fa-f98e-4219-ab7e-d8684b0b4e66" connectedTo="3383078a-72da-4af1-badf-686f43c73018" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" name="In_ret">
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="c9e8e6a6-d333-48ec-b465-d1f5fa147670" endDate="2019-01-01T02:00:00.000000" field="mass_flow" startDate="2019-01-01T00:00:00.000000" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" perTimeUnit="SECOND" unit="GRAM" multiplier="KILO"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="e0ec1d61-d62f-4e29-bc00-42b960bb4d72" endDate="2019-01-01T02:00:00.000000" field="pressure" startDate="2019-01-01T00:00:00.000000" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="c90c0c66-19b9-4ce3-a238-fa76294f7075" endDate="2019-01-01T02:00:00.000000" field="temperature" startDate="2019-01-01T00:00:00.000000" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" id="23be2b8d-5f5a-471f-875f-b7e20997f7c5" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" connectedTo="027db45e-289d-4611-94ba-95d04abec30f" name="Out">
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="bc9eca78-4a80-4d6d-8680-06a1bf2d2a6d" endDate="2019-01-01T02:00:00.000000" field="mass_flow" startDate="2019-01-01T00:00:00.000000" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" perTimeUnit="SECOND" unit="GRAM" multiplier="KILO"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="6c782317-29cd-449d-8ead-2e6c6df7fb0d" endDate="2019-01-01T02:00:00.000000" field="pressure" startDate="2019-01-01T00:00:00.000000" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="97a94d91-2590-40e4-8f18-19086af1b02b" endDate="2019-01-01T02:00:00.000000" field="temperature" startDate="2019-01-01T00:00:00.000000" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Pipe" length="632.79" innerDiameter="0.1" name="Pipe5_ret_b" id="92af5656-dbd3-4ddf-abaa-9ef47ea96333" outerDiameter="0.16" diameter="DN150">
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" lat="52.021920019967986" lon="4.4088220596313485"/>
          <point xsi:type="esdl:Point" lat="52.02158748391286" CRS="WGS84" lon="4.4076804239030505"/>
          <point xsi:type="esdl:Point" lat="52.019180932421804" CRS="WGS84" lon="4.400719145015912"/>
        </geometry>
        <port xsi:type="esdl:InPort" id="fb200deb-6383-4e50-b041-9536046ee404" connectedTo="ba8ac663-b53c-400a-a838-206da20b63d7" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" name="In">
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="311d081c-2b2f-4f65-b246-1e48be842e3e" endDate="2019-01-01T02:00:00.000000" field="mass_flow" startDate="2019-01-01T00:00:00.000000" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" perTimeUnit="SECOND" unit="GRAM" multiplier="KILO"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="b8480030-ba4e-4114-9b0f-6ee5f6657ac6" endDate="2019-01-01T02:00:00.000000" field="pressure" startDate="2019-01-01T00:00:00.000000" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="a4b8b66a-c94f-4d13-b107-8ddd38195d26" endDate="2019-01-01T02:00:00.000000" field="temperature" startDate="2019-01-01T00:00:00.000000" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" id="35ff6c51-ecdc-419c-9e67-8dbbf4ccaa42" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" connectedTo="c06f582d-1922-47e3-ae04-a740b28353e3" name="Out_ret">
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="17489ca0-df20-473b-9eac-48ee2876e85d" endDate="2019-01-01T02:00:00.000000" field="mass_flow" startDate="2019-01-01T00:00:00.000000" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" perTimeUnit="SECOND" unit="GRAM" multiplier="KILO"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="84c885d1-f96d-4a97-8fbf-27f20cda85a8" endDate="2019-01-01T02:00:00.000000" field="pressure" startDate="2019-01-01T00:00:00.000000" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="eb1e5953-1bb3-468a-a68e-1c88a1324ce1" endDate="2019-01-01T02:00:00.000000" field="temperature" startDate="2019-01-01T00:00:00.000000" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Joint" name="Joint_526a" id="526a38b8-cf6c-407e-9a76-837d409fdf12">
        <geometry xsi:type="esdl:Point" lat="52.021920019967986" lon="4.4088220596313485"/>
        <port xsi:type="esdl:InPort" id="027db45e-289d-4611-94ba-95d04abec30f" connectedTo="23be2b8d-5f5a-471f-875f-b7e20997f7c5 7ca06d72-bb1d-41ac-9a19-6306fb33e10e" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" name="In"/>
        <port xsi:type="esdl:OutPort" id="ba8ac663-b53c-400a-a838-206da20b63d7" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" connectedTo="fb200deb-6383-4e50-b041-9536046ee404" name="Out"/>
      </asset>
      <asset xsi:type="esdl:Pipe" length="599.3" name="Pipe_ates" id="fa07b73b-0ec7-4a6d-bbd5-60b5fdf09d92" diameter="DN150">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.021827590527295" lon="4.409401416778565"/>
          <point xsi:type="esdl:Point" lat="52.02648843713918" lon="4.4050025939941415"/>
        </geometry>
        <port xsi:type="esdl:InPort" id="3874047c-96e8-4555-902a-8646daf3f984" connectedTo="3a52317d-827b-4dc4-a6df-1b145bbb1736" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" name="In">
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="98ba1bc1-f570-4566-b3f0-aff2694a144e" endDate="2019-01-01T02:00:00.000000" field="mass_flow" startDate="2019-01-01T00:00:00.000000" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" perTimeUnit="SECOND" unit="GRAM" multiplier="KILO"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="8a690fd8-1771-434c-aad7-c875cb3335dd" endDate="2019-01-01T02:00:00.000000" field="pressure" startDate="2019-01-01T00:00:00.000000" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="29cc3819-94e3-43a6-823f-5e8a8e3d99b5" endDate="2019-01-01T02:00:00.000000" field="temperature" startDate="2019-01-01T00:00:00.000000" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" id="b94d1e9b-5377-4016-9bb3-4452effb5a20" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" connectedTo="e14c67db-96c3-4fc9-aed2-4fe0f84a34d3" name="Out">
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="9a11fdc4-4a66-422e-ab02-fc844beb5588" endDate="2019-01-01T02:00:00.000000" field="mass_flow" startDate="2019-01-01T00:00:00.000000" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" perTimeUnit="SECOND" unit="GRAM" multiplier="KILO"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="a595e87c-2377-4437-b193-9dc6cedd9b3d" endDate="2019-01-01T02:00:00.000000" field="pressure" startDate="2019-01-01T00:00:00.000000" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="f767cb5f-32a2-4120-820d-08dbc73ae675" endDate="2019-01-01T02:00:00.000000" field="temperature" startDate="2019-01-01T00:00:00.000000" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Pipe" length="549.0" name="Pipe_ates_ret" id="1f1a7ed1-c6fe-4afe-a39c-77803b8aed2f" diameter="DN150">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.02633000273639" lon="4.404745101928712"/>
          <point xsi:type="esdl:Point" lat="52.02203885753961" lon="4.408714771270753"/>
        </geometry>
        <port xsi:type="esdl:InPort" id="9a58c5ba-1ac1-48cb-b583-5c568190ae3c" connectedTo="07a302f6-4e5b-40ef-87e3-c908a993dfe4" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" name="In">
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="6bda3f2b-4736-4335-ae74-eadebd5e9145" endDate="2019-01-01T02:00:00.000000" field="mass_flow" startDate="2019-01-01T00:00:00.000000" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" perTimeUnit="SECOND" unit="GRAM" multiplier="KILO"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="21cd2192-fe42-46ab-b616-85ab8ef85d5e" endDate="2019-01-01T02:00:00.000000" field="pressure" startDate="2019-01-01T00:00:00.000000" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="64fe7628-eb96-436d-a513-6991d93785a0" endDate="2019-01-01T02:00:00.000000" field="temperature" startDate="2019-01-01T00:00:00.000000" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" id="7ca06d72-bb1d-41ac-9a19-6306fb33e10e" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" connectedTo="027db45e-289d-4611-94ba-95d04abec30f" name="Out">
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="38434b9d-ab26-44ed-babc-0079d28cca9a" endDate="2019-01-01T02:00:00.000000" field="mass_flow" startDate="2019-01-01T00:00:00.000000" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" perTimeUnit="SECOND" unit="GRAM" multiplier="KILO"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="497213e0-d160-45d6-b252-cb89a7db0617" endDate="2019-01-01T02:00:00.000000" field="pressure" startDate="2019-01-01T00:00:00.000000" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="5eef1f9e-8f84-4a1c-86b9-afdf012d5658" endDate="2019-01-01T02:00:00.000000" field="temperature" startDate="2019-01-01T00:00:00.000000" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:ATES" aquiferAnisotropy="4.0" aquiferTopDepth="300.0" aquiferThickness="45.0" wellCasingSize="13.0" aquiferPorosity="0.3" maxDischargeRate="11610000.0" id="4d6dfb40-ea51-4176-a27e-4ee60cad4034" aquiferPermeability="10000.0" aquiferNetToGross="1.0" salinity="10000.0" aquiferMidTemperature="17.0" wellDistance="150.0" maxChargeRate="11610000.0" name="ATES_4d6d">
        <port xsi:type="esdl:InPort" id="e14c67db-96c3-4fc9-aed2-4fe0f84a34d3" connectedTo="b94d1e9b-5377-4016-9bb3-4452effb5a20" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" name="In">
          <profile xsi:type="esdl:InfluxDBProfile" multiplier="5.0" port="443" database="energy_profiles" host="profiles.warmingup.info" id="1e323c5f-f645-42bf-8631-b63b0a24c424" field="demand4_MW" endDate="2019-12-31T22:00:00.000000+0000" startDate="2018-12-31T23:00:00.000000+0000" filters="" measurement="WarmingUp default profiles">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="e9405fc8-5e57-4df5-8584-4babee7cdf1b"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="4bf54eae-701e-49dc-8f08-e393943d279c" endDate="2019-01-01T02:00:00.000000" field="mass_flow" startDate="2019-01-01T00:00:00.000000" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" perTimeUnit="SECOND" unit="GRAM" multiplier="KILO"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="2299b96f-1ebd-4724-b6db-71ae8530b1cb" endDate="2019-01-01T02:00:00.000000" field="pressure" startDate="2019-01-01T00:00:00.000000" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="0021efcc-5c09-4ccf-8950-1ac7bb3b0eaa" endDate="2019-01-01T02:00:00.000000" field="temperature" startDate="2019-01-01T00:00:00.000000" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" id="07a302f6-4e5b-40ef-87e3-c908a993dfe4" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" connectedTo="9a58c5ba-1ac1-48cb-b583-5c568190ae3c" name="Out">
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="ec6d288d-6c24-451b-802d-bd67db4d3ede" endDate="2019-01-01T02:00:00.000000" field="mass_flow" startDate="2019-01-01T00:00:00.000000" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" perTimeUnit="SECOND" unit="GRAM" multiplier="KILO"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="a1b12e67-f026-49e4-8a51-989d9af08883" endDate="2019-01-01T02:00:00.000000" field="pressure" startDate="2019-01-01T00:00:00.000000" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="1415c56a-3e9b-442b-b2b2-67c50e6c9c08" endDate="2019-01-01T02:00:00.000000" field="temperature" startDate="2019-01-01T00:00:00.000000" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
        </port>
        <costInformation xsi:type="esdl:CostInformation">
          <fixedMaintenanceCosts xsi:type="esdl:SingleValue" value="115472.22">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="57537388-7fd7-40b3-a0c4-0ce65648eaab" unit="EURO" description="Cost in EUR/yr" perTimeUnit="YEAR"/>
          </fixedMaintenanceCosts>
          <investmentCosts xsi:type="esdl:SingleValue" value="2333594.0">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="a3b5cdd9-364b-4262-bce5-4658c5f1bac9" unit="EURO" description="Cost in EUR"/>
          </investmentCosts>
          <fixedOperationalCosts xsi:type="esdl:SingleValue" value="30000.0">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="574ef21d-681a-43ae-a1cb-f7b25d88defb" unit="EURO" description="Cost in EUR/yr" perTimeUnit="YEAR"/>
          </fixedOperationalCosts>
          <variableOperationalCosts xsi:type="esdl:SingleValue" value="69666.67">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="3c9f580e-b71a-4bc8-8cea-cb6788c0bf49" unit="EURO" description="Cost in EUR/yr" perTimeUnit="YEAR"/>
          </variableOperationalCosts>
        </costInformation>
        <geometry xsi:type="esdl:Point" lat="52.026597360465495" lon="4.404745101928712"/>
        <dataSource xsi:type="esdl:DataSource" name="WarmingUp factsheet: HT-ATES (high)" description="This data was generated using the 'kosten_per_asset.xslx' file in the 'Kentallen' directory of WarmingUp project 1D" attribution=""/>
      </asset>
      <asset xsi:type="esdl:GenericProducer" power="100000000.0" name="GenericProducer_0375" id="0375b489-b57b-439d-9ce9-db2dc9d0bbb9">
        <geometry xsi:type="esdl:Point" lat="52.0197014548679" CRS="WGS84" lon="4.40077438452907"/>
        <port xsi:type="esdl:OutPort" id="7dde77c4-a956-4496-b8b9-e714317cc0f2" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" connectedTo="30f746ff-aca7-4e55-946e-3dcaf2ac7569" name="Out">
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="9f17a3e6-fe62-4d96-93b2-68f03f1845b2" endDate="2019-01-01T02:00:00.000000" field="mass_flow" startDate="2019-01-01T00:00:00.000000" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" perTimeUnit="SECOND" unit="GRAM" multiplier="KILO"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="71ab2eda-4f90-424d-bcc5-ef115a750867" endDate="2019-01-01T02:00:00.000000" field="pressure" startDate="2019-01-01T00:00:00.000000" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="9c4ea32d-ee2e-4df3-a1a7-5a10718ec5ed" endDate="2019-01-01T02:00:00.000000" field="temperature" startDate="2019-01-01T00:00:00.000000" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
        </port>
        <port xsi:type="esdl:InPort" id="f8113571-6167-4850-b558-f97f39a0a3f3" connectedTo="095f2c36-395f-4183-a760-80d5362e1de3" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" name="In">
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="8586c1e1-2c40-476d-b0aa-53d013a7ea28" endDate="2019-01-01T02:00:00.000000" field="mass_flow" startDate="2019-01-01T00:00:00.000000" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" perTimeUnit="SECOND" unit="GRAM" multiplier="KILO"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="bd9bbe7e-4a6a-4fde-8e11-a52b038a70f6" endDate="2019-01-01T02:00:00.000000" field="pressure" startDate="2019-01-01T00:00:00.000000" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" port="8096" database="bb349cf3-ad65-43d6-992f-e7f838b9e2d5" host="omotes_influxdb" id="656a6348-1da0-45ec-8130-7d3dba1dd5ba" endDate="2019-01-01T02:00:00.000000" field="temperature" startDate="2019-01-01T00:00:00.000000" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
        </port>
      </asset>
    </area>
  </instance>
</esdl:EnergySystem>
