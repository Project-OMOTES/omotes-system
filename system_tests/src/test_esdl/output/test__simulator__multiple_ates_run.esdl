<?xml version='1.0' encoding='UTF-8'?>
<esdl:EnergySystem xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:esdl="http://www.tno.nl/esdl" id="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" name="course_model with return network_simulator" esdlVersion="v2111" version="10" description="basic">
  <energySystemInformation xsi:type="esdl:EnergySystemInformation" id="9a76b800-6e2c-4e99-a9a5-859f7badd061">
    <quantityAndUnits xsi:type="esdl:QuantityAndUnits" id="54fda8fc-e725-4c44-8a49-726a811ba069">
      <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="eb07bccb-203f-407e-af98-e687656a221d" unit="JOULE" physicalQuantity="ENERGY" multiplier="GIGA" description="Energy in GJ"/>
      <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="e9405fc8-5e57-4df5-8584-4babee7cdf1b" unit="WATT" physicalQuantity="POWER" multiplier="MEGA" description="Power in MW"/>
      <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="e9405fc8-5e57-4df5-8584-4babee7cdf1a" unit="WATT" physicalQuantity="POWER" multiplier="KILO" description="Power in kW"/>
    </quantityAndUnits>
    <carriers xsi:type="esdl:Carriers" id="e84423d9-b617-4fa0-b113-1ba12daacaaf">
      <carrier xsi:type="esdl:HeatCommodity" supplyTemperature="80.0" id="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" name="supply_ret" returnTemperature="40.0"/>
      <carrier xsi:type="esdl:HeatCommodity" supplyTemperature="80.0" id="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" name="Return_ret" returnTemperature="40.0"/>
    </carriers>
  </energySystemInformation>
  <instance xsi:type="esdl:Instance" name="Untitled instance" id="8db3337e-440e-48d1-b1e9-6f86c4f76320">
    <area xsi:type="esdl:Area" name="Untitled area" id="a3f3b5d9-2faa-4862-a5b0-d02b219052dd">
      <asset xsi:type="esdl:HeatingDemand" minTemperature="40.0" id="cc61c52a-29a6-45d3-81e8-ce18ba12f319" name="Pijnacker" power="5000000.0" maxTemperature="120.0">
        <geometry xsi:type="esdl:Point" lat="52.01906782352804" lon="4.431524276733399"/>
        <port xsi:type="esdl:InPort" connectedTo="9e1c58ab-ec19-4964-928f-d2a582af6ce8" name="In" id="c3eb59bc-037d-4684-918e-df0f54af5b3d" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
          <profile xsi:type="esdl:InfluxDBProfile" id="131d801f-9f8e-4dc4-9a8a-82725607eedf" field="demand2_MW" measurement="WarmingUp default profiles" endDate="2019-12-31T22:00:00.000000+0000" port="443" startDate="2018-12-31T23:00:00.000000+0000" host="profiles.warmingup.info" database="energy_profiles" filters="" multiplier="5.0">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="e9405fc8-5e57-4df5-8584-4babee7cdf1b"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="a36f395d-54e9-4e12-9078-bff46dfdc320" field="mass_flow" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='cc61c52a-29a6-45d3-81e8-ce18ba12f319'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="GRAM" multiplier="KILO"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="ad415966-1ae7-4127-9e82-01833348c4c5" field="pressure" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='cc61c52a-29a6-45d3-81e8-ce18ba12f319'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="015de37b-3a88-43dd-a487-7a055b5d7fd0" field="temperature" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='cc61c52a-29a6-45d3-81e8-ce18ba12f319'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="90814f35-6707-4331-aa9f-3c04246fa924" field="volume_flow" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='cc61c52a-29a6-45d3-81e8-ce18ba12f319'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="CUBIC_METRE"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" name="Out" connectedTo="99628a79-e31c-4a99-bf4a-2f788a5d5343" id="fcf96c55-8264-41a5-90ee-0977a394a46a" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
          <profile xsi:type="esdl:InfluxDBProfile" id="4157a75f-8067-4abc-a869-9cb2856d2222" field="mass_flow" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='cc61c52a-29a6-45d3-81e8-ce18ba12f319'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="GRAM" multiplier="KILO"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="b3c1eecf-cedf-44ea-9156-f208ad282384" field="pressure" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='cc61c52a-29a6-45d3-81e8-ce18ba12f319'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="51f83c08-ff34-4b02-9d60-7089f18d5c51" field="temperature" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='cc61c52a-29a6-45d3-81e8-ce18ba12f319'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="ff387aeb-ed96-4eaf-bec1-f0878652fd53" field="volume_flow" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='cc61c52a-29a6-45d3-81e8-ce18ba12f319'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="CUBIC_METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="4b66c57f-2228-489c-9d10-ff60ee8a1f31" field="heat_demand_set_point" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='cc61c52a-29a6-45d3-81e8-ce18ba12f319'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="6e20aa32-d996-406d-a5fa-ad3a12c3b637" field="heat_demand" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='cc61c52a-29a6-45d3-81e8-ce18ba12f319'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:HeatingDemand" minTemperature="40.0" id="8805731a-8780-47b4-8204-76ba074564bc" name="Delfgauw" power="5000000.0" maxTemperature="120.0">
        <geometry xsi:type="esdl:Point" lat="52.0094006941874" lon="4.396162033081056"/>
        <port xsi:type="esdl:InPort" connectedTo="88b6c35c-7eeb-42e9-ba4e-491fa6c7a6fc" name="In" id="69464799-3ec3-4928-a5da-6158a6237c76" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
          <profile xsi:type="esdl:InfluxDBProfile" id="0380fe5a-611c-4523-9eda-1d0ecd69271e" field="demand1_MW" measurement="WarmingUp default profiles" endDate="2019-12-31T22:00:00.000000+0000" port="443" startDate="2018-12-31T23:00:00.000000+0000" host="profiles.warmingup.info" database="energy_profiles" filters="" multiplier="5.0">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="e9405fc8-5e57-4df5-8584-4babee7cdf1b"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="6b571afa-ee59-4211-b809-6560563db00d" field="mass_flow" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='8805731a-8780-47b4-8204-76ba074564bc'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="GRAM" multiplier="KILO"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="8348c32f-db2b-4c68-ba39-ab3198700f87" field="pressure" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='8805731a-8780-47b4-8204-76ba074564bc'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="abb71f4b-9885-47fe-8c84-9186ef66c08d" field="temperature" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='8805731a-8780-47b4-8204-76ba074564bc'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="df951467-28c7-4a42-9bb5-b421c8e83e1f" field="volume_flow" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='8805731a-8780-47b4-8204-76ba074564bc'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="CUBIC_METRE"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" name="Out" connectedTo="1467bee7-ed90-49d5-8395-3595408ad1ee" id="c8625b7f-e9ad-4327-899e-0c6e91e873cb" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
          <profile xsi:type="esdl:InfluxDBProfile" id="f6b4d77d-0b02-428f-98c2-bf7144d61724" field="mass_flow" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='8805731a-8780-47b4-8204-76ba074564bc'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="GRAM" multiplier="KILO"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="ca1c7e73-3a9e-4395-8ab0-b54a7f6079c8" field="pressure" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='8805731a-8780-47b4-8204-76ba074564bc'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="265fe3de-4b28-40fc-b2c1-b4603e6673df" field="temperature" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='8805731a-8780-47b4-8204-76ba074564bc'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="c57960c3-b3ac-45f7-bcef-f730e4449a6f" field="volume_flow" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='8805731a-8780-47b4-8204-76ba074564bc'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="CUBIC_METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="1dc75ac1-6d67-4ea7-b730-a4b98b751d8e" field="heat_demand_set_point" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='8805731a-8780-47b4-8204-76ba074564bc'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="80566c8e-6ec2-4f51-a759-ab693da65f78" field="heat_demand" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='8805731a-8780-47b4-8204-76ba074564bc'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:HeatingDemand" minTemperature="40.0" id="156c4afb-4106-4286-8f41-fbf8edc6e5ce" name="Nootdorp" power="5000000.0" maxTemperature="120.0">
        <geometry xsi:type="esdl:Point" lat="52.04277777849674" lon="4.3912696838378915"/>
        <port xsi:type="esdl:InPort" connectedTo="22be2ae1-10c0-42eb-abd9-6b115b800283" name="In" id="ad377fa7-710f-45e7-9144-1521bef5c1ab" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
          <profile xsi:type="esdl:InfluxDBProfile" id="57131b4a-f177-47da-b7d7-788f23eefb5b" field="demand3_MW" measurement="WarmingUp default profiles" endDate="2019-12-31T22:00:00.000000+0000" port="443" startDate="2018-12-31T23:00:00.000000+0000" host="profiles.warmingup.info" database="energy_profiles" filters="" multiplier="5.0">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="e9405fc8-5e57-4df5-8584-4babee7cdf1b"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="dde3076a-eda3-406c-b75a-8ec9afdd7736" field="mass_flow" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='156c4afb-4106-4286-8f41-fbf8edc6e5ce'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="GRAM" multiplier="KILO"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="171c14a0-9926-4350-a7ee-393fb31fe685" field="pressure" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='156c4afb-4106-4286-8f41-fbf8edc6e5ce'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="6c0f024c-12f1-4fe2-9658-fff25040f9ef" field="temperature" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='156c4afb-4106-4286-8f41-fbf8edc6e5ce'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="caa84284-faf0-4303-bdee-fe91bf1c9d5f" field="volume_flow" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='156c4afb-4106-4286-8f41-fbf8edc6e5ce'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="CUBIC_METRE"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" name="Out" connectedTo="fdbab763-3e05-49d6-9271-207035c14bcb" id="f46090b9-dcd6-433f-b021-061c839e634c" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
          <profile xsi:type="esdl:InfluxDBProfile" id="b880bd67-3998-48f0-9eca-6ae1152202af" field="mass_flow" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='156c4afb-4106-4286-8f41-fbf8edc6e5ce'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="GRAM" multiplier="KILO"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="1b28e8c1-8fb6-46d1-97b8-42a2279cb479" field="pressure" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='156c4afb-4106-4286-8f41-fbf8edc6e5ce'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="95a945b4-868a-42cb-8a5e-4e422380195d" field="temperature" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='156c4afb-4106-4286-8f41-fbf8edc6e5ce'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="a3004aac-77e6-4674-bb58-d51ff578647d" field="volume_flow" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='156c4afb-4106-4286-8f41-fbf8edc6e5ce'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="CUBIC_METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="c65b2b60-e689-4b84-b610-8cb8f92b06b1" field="heat_demand_set_point" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='156c4afb-4106-4286-8f41-fbf8edc6e5ce'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="7f5db5d4-c429-4f5c-8d1b-5252f6d67c93" field="heat_demand" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='156c4afb-4106-4286-8f41-fbf8edc6e5ce'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Joint" id="11262f35-3d51-4ce3-9a69-6eb4a6c46c9d" name="Joint_1126">
        <geometry xsi:type="esdl:Point" lat="52.01909093233181" CRS="WGS84" lon="4.401419162750245"/>
        <port xsi:type="esdl:InPort" connectedTo="7c178a7c-f6cb-4f33-8c4a-076d9131ed8a" name="In" id="a8779f8a-3d61-4a97-bfb4-35029175ec97" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret"/>
        <port xsi:type="esdl:OutPort" name="Out" connectedTo="a89b5045-f815-4126-a4c8-dc125a99c0f8 b9af6540-8cae-41ce-b0c3-4528e027d3b3" id="fd562e07-a60c-4f5c-9084-d51e736ff545" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret"/>
      </asset>
      <asset xsi:type="esdl:Pipe" diameter="DN80" name="Pipe1" length="1533.2" id="Pipe1" related="Pipe1_ret" innerDiameter="0.08" outerDiameter="0.09">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.01909093233181" lon="4.401419162750245"/>
          <point xsi:type="esdl:Point" lat="52.01563438289948" lon="4.391613006591798"/>
          <point xsi:type="esdl:Point" lat="52.0094006941874" lon="4.396162033081056"/>
        </geometry>
        <port xsi:type="esdl:InPort" connectedTo="fd562e07-a60c-4f5c-9084-d51e736ff545" name="In" id="a89b5045-f815-4126-a4c8-dc125a99c0f8" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
          <profile xsi:type="esdl:InfluxDBProfile" id="d5d48ac3-be99-4841-8e18-3883c04b7728" field="mass_flow" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='Pipe1'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="GRAM" multiplier="KILO"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="256d2f56-9168-47a7-942b-f2c39ffacd9e" field="pressure" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='Pipe1'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="a010d167-d86d-4555-bea0-8f507f2b04b8" field="temperature" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='Pipe1'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="02802ebf-90dc-4cce-9e79-22f6ee8a0e2e" field="volume_flow" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='Pipe1'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="CUBIC_METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="a55e2155-5527-4499-9ec5-4d2ce9e3ab8a" field="velocity" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='Pipe1'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="SPEED" unit="METRE"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" name="Out" connectedTo="69464799-3ec3-4928-a5da-6158a6237c76" id="88b6c35c-7eeb-42e9-ba4e-491fa6c7a6fc" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
          <profile xsi:type="esdl:InfluxDBProfile" id="76fe5a7b-9e83-492d-936e-7b4afd4bc52f" field="mass_flow" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='Pipe1'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="GRAM" multiplier="KILO"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="a5018b51-2fe1-4e77-a668-75ec03598bc0" field="pressure" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='Pipe1'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="38bca7a4-f10c-42b2-b626-235f733508cd" field="temperature" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='Pipe1'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="8696e186-4391-45e0-881e-212e84ce6cc1" field="volume_flow" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='Pipe1'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="CUBIC_METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="49677b14-ef06-49ea-bbc1-c8362afd31e3" field="velocity" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='Pipe1'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="SPEED" unit="METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="7e9bb602-2343-4057-b1ba-c83dc9f48a48" field="pressure_loss" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='Pipe1'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="34c28d7d-cdcc-4658-b3ad-56ca2df958c8" field="pressure_loss_per_length" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='Pipe1'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="fbfa1273-f88e-4bc0-bf12-55b8dc022220" field="heat_loss" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='Pipe1'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Pipe" diameter="DN200" name="Pipe2" length="44.4" id="Pipe2" related="Pipe2_ret" innerDiameter="0.2" outerDiameter="0.21">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.019437562955694" lon="4.401097297668458"/>
          <point xsi:type="esdl:Point" lat="52.01909093233181" lon="4.401419162750245"/>
        </geometry>
        <port xsi:type="esdl:InPort" connectedTo="7dde77c4-a956-4496-b8b9-e714317cc0f2" name="In" id="30f746ff-aca7-4e55-946e-3dcaf2ac7569" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
          <profile xsi:type="esdl:InfluxDBProfile" id="2cbd6626-4fca-4365-bc16-b4baa69ebe7b" field="mass_flow" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='Pipe2'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="GRAM" multiplier="KILO"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="5e8ff85b-f04d-476e-a1a8-6ffd92a6e51c" field="pressure" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='Pipe2'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="15cd2690-abe4-4c3f-9470-332137f96aba" field="temperature" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='Pipe2'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="de99b452-564d-42c8-b523-c666ca8e808e" field="volume_flow" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='Pipe2'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="CUBIC_METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="7eded436-b6a4-40cd-ac93-7c8003f70c1d" field="velocity" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='Pipe2'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="SPEED" unit="METRE"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" name="Out" connectedTo="a8779f8a-3d61-4a97-bfb4-35029175ec97" id="7c178a7c-f6cb-4f33-8c4a-076d9131ed8a" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
          <profile xsi:type="esdl:InfluxDBProfile" id="379ded1b-7fed-40a9-ab81-581b3c6e9106" field="mass_flow" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='Pipe2'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="GRAM" multiplier="KILO"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="7c017230-b39d-4e83-b34f-b6e5020ed4a7" field="pressure" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='Pipe2'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="1c969d03-33cb-4330-955e-a86656a212ec" field="temperature" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='Pipe2'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="969ad6ab-e734-4ef6-b67e-38c5e7b0275a" field="volume_flow" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='Pipe2'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="CUBIC_METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="402d9d1e-c0e2-4cb2-8896-ae7150ecbcf7" field="velocity" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='Pipe2'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="SPEED" unit="METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="c9766c80-8d1c-401f-99d1-44651f63a1e9" field="pressure_loss" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='Pipe2'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="86d77acc-e668-4508-ac6b-c4d340b05bf4" field="pressure_loss_per_length" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='Pipe2'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="2993a7d1-0044-473b-920c-4ba55be2fbc8" field="heat_loss" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='Pipe2'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Joint" id="91b0e057-84cd-4db3-8d2d-cae02077cbaf" name="Joint_91b0">
        <geometry xsi:type="esdl:Point" lat="52.02578372981452" CRS="WGS84" lon="4.422471821308137"/>
        <port xsi:type="esdl:InPort" connectedTo="607e9ed3-3e2e-4c08-bffe-0d713420cce7" name="In" id="6829cf4d-0dd9-43ac-8581-87b9998ca5bc" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret"/>
        <port xsi:type="esdl:OutPort" name="Out" connectedTo="e3b7d0a5-e7d7-4cb2-8a33-e56d2077616b 758212e1-ab7f-44b1-a203-6ed42eb3c6bc" id="416291d2-c5f7-4a87-919a-655924b90eb2" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret"/>
      </asset>
      <asset xsi:type="esdl:Pipe" diameter="DN100" name="Pipe3" length="1157.3" id="Pipe3" related="Pipe3_ret" innerDiameter="0.1" outerDiameter="0.11">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.02578372981452" lon="4.422471821308137"/>
          <point xsi:type="esdl:Point" lat="52.02318760445455" lon="4.425044059753419"/>
          <point xsi:type="esdl:Point" lat="52.02034869350056" lon="4.4269752502441415"/>
          <point xsi:type="esdl:Point" lat="52.018381156483095" lon="4.428133964538575"/>
          <point xsi:type="esdl:Point" lat="52.01906782352804" lon="4.431524276733399"/>
        </geometry>
        <port xsi:type="esdl:InPort" connectedTo="416291d2-c5f7-4a87-919a-655924b90eb2" name="In" id="e3b7d0a5-e7d7-4cb2-8a33-e56d2077616b" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
          <profile xsi:type="esdl:InfluxDBProfile" id="1aeef52a-5980-40a4-b9ff-cc5661310081" field="mass_flow" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='Pipe3'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="GRAM" multiplier="KILO"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="5d465c11-b74d-454c-a583-38563c4afa33" field="pressure" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='Pipe3'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="44e72c94-9551-4b2e-b3b0-5a7f41ae7239" field="temperature" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='Pipe3'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="4c9915fd-df92-4dcd-8ba3-5c321511e256" field="volume_flow" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='Pipe3'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="CUBIC_METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="702839b5-0d9f-4bbe-bf94-838159d05318" field="velocity" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='Pipe3'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="SPEED" unit="METRE"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" name="Out" connectedTo="c3eb59bc-037d-4684-918e-df0f54af5b3d" id="9e1c58ab-ec19-4964-928f-d2a582af6ce8" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
          <profile xsi:type="esdl:InfluxDBProfile" id="86ee535e-c675-4f57-9bfe-22ba9ea9c3e3" field="mass_flow" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='Pipe3'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="GRAM" multiplier="KILO"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="f28fecb4-c92b-4ccf-a254-aba5aedfd237" field="pressure" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='Pipe3'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="f6d9bd0d-0924-4ca4-a009-40e4e7a174a7" field="temperature" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='Pipe3'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="bfcffa85-96f2-490b-b137-ed030be5670a" field="volume_flow" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='Pipe3'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="CUBIC_METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="6b633bbe-0d94-4ffb-acad-6ce1a08f082b" field="velocity" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='Pipe3'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="SPEED" unit="METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="44033aa8-ddaf-423d-83f5-bc18dd99f5de" field="pressure_loss" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='Pipe3'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="ba73241d-d1ea-408f-b1ce-5269c4f67674" field="pressure_loss_per_length" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='Pipe3'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="c833d7c8-f9e2-4a87-9cf5-fa2ab91a3619" field="heat_loss" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='Pipe3'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Pipe" diameter="DN100" name="Pipe4" length="2982.2" id="Pipe4" related="Pipe4_ret" innerDiameter="0.1" outerDiameter="0.11">
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
        <port xsi:type="esdl:InPort" connectedTo="416291d2-c5f7-4a87-919a-655924b90eb2" name="In" id="758212e1-ab7f-44b1-a203-6ed42eb3c6bc" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
          <profile xsi:type="esdl:InfluxDBProfile" id="0daf8347-aa42-4744-adfe-0f84b40e92a0" field="mass_flow" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='Pipe4'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="GRAM" multiplier="KILO"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="1d300389-92de-418b-87e7-64f1832337ea" field="pressure" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='Pipe4'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="e156ed0f-ef95-46b3-86f3-8f789af27f9b" field="temperature" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='Pipe4'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="09592d6a-52d3-464e-8df0-823026dcdab5" field="volume_flow" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='Pipe4'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="CUBIC_METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="56ad0a76-547c-404a-8990-f5d5798e891c" field="velocity" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='Pipe4'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="SPEED" unit="METRE"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" name="Out" connectedTo="ad377fa7-710f-45e7-9144-1521bef5c1ab" id="22be2ae1-10c0-42eb-abd9-6b115b800283" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
          <profile xsi:type="esdl:InfluxDBProfile" id="f742979b-cdb8-4042-8980-47aad053cd26" field="mass_flow" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='Pipe4'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="GRAM" multiplier="KILO"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="2ded79cf-48cd-4297-8ad5-71ec5266aa86" field="pressure" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='Pipe4'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="9169cf3a-5485-469e-b2b8-4915f67b6610" field="temperature" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='Pipe4'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="6cfbe5ee-8360-472b-9ff9-925b700c9e9f" field="volume_flow" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='Pipe4'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="CUBIC_METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="fb88a6c9-a90f-4d4b-b359-731caaa0d286" field="velocity" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='Pipe4'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="SPEED" unit="METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="fc106c20-07ea-4e3b-8777-6751b81a7e9a" field="pressure_loss" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='Pipe4'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="78fe5244-df2c-490f-8457-d233fa8c57e1" field="pressure_loss_per_length" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='Pipe4'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="05468d32-d758-4e26-aa3e-0c552fedfe68" field="heat_loss" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='Pipe4'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Joint" id="c6fec31e-2c4a-423d-937c-7fc28ea81a21" name="Joint_1126_ret">
        <geometry xsi:type="esdl:Point" lat="52.019180932421804" CRS="WGS84" lon="4.400719145015912"/>
        <port xsi:type="esdl:InPort" connectedTo="b4a30d86-df7a-4136-9170-55087818800d 35ff6c51-ecdc-419c-9e67-8dbbf4ccaa42" name="ret_port" id="c06f582d-1922-47e3-ae04-a740b28353e3" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret"/>
        <port xsi:type="esdl:OutPort" name="ret_port" connectedTo="fb153d7c-2dc3-4f53-bbee-f0060efef1c7" id="39c08ebb-b7d8-4a85-a226-800c225a8a61" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret"/>
      </asset>
      <asset xsi:type="esdl:Joint" id="b7a46b09-779f-4a57-b73e-ab707ec65842" name="Joint_91b0_ret">
        <geometry xsi:type="esdl:Point" lat="52.02587372990452" CRS="WGS84" lon="4.421796245126029"/>
        <port xsi:type="esdl:InPort" connectedTo="002a5802-e55b-4025-abe9-8d508cfdd78c 0c142bfb-4b38-44aa-b88f-71da247525ef" name="ret_port" id="9a5c2e7e-e970-4561-8538-9a4000dee416" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret"/>
        <port xsi:type="esdl:OutPort" name="ret_port" connectedTo="bbb482fa-f98e-4219-ab7e-d8684b0b4e66" id="3383078a-72da-4af1-badf-686f43c73018" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret"/>
      </asset>
      <asset xsi:type="esdl:Pipe" diameter="DN80" name="Pipe1_ret" length="1533.2" id="Pipe1_ret" related="Pipe1" innerDiameter="0.08" outerDiameter="0.09">
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" lat="52.009490694277396" CRS="WGS84" lon="4.3954232586139"/>
          <point xsi:type="esdl:Point" lat="52.015724382989475" CRS="WGS84" lon="4.3908996472617385"/>
          <point xsi:type="esdl:Point" lat="52.019180932421804" CRS="WGS84" lon="4.400719145015912"/>
        </geometry>
        <port xsi:type="esdl:InPort" connectedTo="c8625b7f-e9ad-4327-899e-0c6e91e873cb" name="In_ret" id="1467bee7-ed90-49d5-8395-3595408ad1ee" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
          <profile xsi:type="esdl:InfluxDBProfile" id="c827ea68-ae17-4090-bf89-c46195df11eb" field="mass_flow" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='Pipe1_ret'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="GRAM" multiplier="KILO"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="ed005571-a2cc-44e2-b84e-558d29c36351" field="pressure" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='Pipe1_ret'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="1c8d9d41-4efd-4c40-a5c2-7a11015585df" field="temperature" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='Pipe1_ret'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="281b94db-873d-4df7-8c5a-b2513e9ed48c" field="volume_flow" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='Pipe1_ret'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="CUBIC_METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="7438542e-323e-4a25-b2e4-190cc1b24f24" field="velocity" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='Pipe1_ret'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="SPEED" unit="METRE"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" name="Out_ret" connectedTo="c06f582d-1922-47e3-ae04-a740b28353e3" id="b4a30d86-df7a-4136-9170-55087818800d" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
          <profile xsi:type="esdl:InfluxDBProfile" id="8eb59807-e771-4d35-a9f9-f5da89040753" field="mass_flow" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='Pipe1_ret'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="GRAM" multiplier="KILO"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="e2c177d6-c33e-46aa-bf76-babfa27118ea" field="pressure" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='Pipe1_ret'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="7d21dc67-d50d-4c9b-ab53-0a166ea800fb" field="temperature" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='Pipe1_ret'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="fed3d6af-11cf-4a8b-b5e4-25bdb320c448" field="volume_flow" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='Pipe1_ret'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="CUBIC_METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="c05c4474-f11c-4ef5-aaa8-22ae05622597" field="velocity" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='Pipe1_ret'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="SPEED" unit="METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="50b2dac1-7bdf-46ef-a5c3-2830fef37131" field="pressure_loss" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='Pipe1_ret'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="39573147-ecd8-4704-87b6-b120af7ec76b" field="pressure_loss_per_length" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='Pipe1_ret'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="ac4f89cb-f567-41cf-b170-942739fa7678" field="heat_loss" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='Pipe1_ret'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Pipe" diameter="DN200" name="Pipe2_ret" length="44.4" id="Pipe2_ret" related="Pipe2" innerDiameter="0.2" outerDiameter="0.21">
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" lat="52.019180932421804" CRS="WGS84" lon="4.400719145015912"/>
          <point xsi:type="esdl:Point" lat="52.01952756304569" CRS="WGS84" lon="4.400398589922203"/>
        </geometry>
        <port xsi:type="esdl:InPort" connectedTo="39c08ebb-b7d8-4a85-a226-800c225a8a61" name="In_ret" id="fb153d7c-2dc3-4f53-bbee-f0060efef1c7" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
          <profile xsi:type="esdl:InfluxDBProfile" id="ee1f58f0-ddef-456d-95dc-f8b891cbdb85" field="mass_flow" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='Pipe2_ret'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="GRAM" multiplier="KILO"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="62fd9f59-565e-4d3e-95e8-8169f4d7f242" field="pressure" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='Pipe2_ret'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="e93986e3-1165-4e08-b447-fbf7972e56f2" field="temperature" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='Pipe2_ret'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="039b1908-1247-467a-8c38-9df92fb66afd" field="volume_flow" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='Pipe2_ret'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="CUBIC_METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="fc6c4279-207d-43fc-9e71-74b7b405933b" field="velocity" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='Pipe2_ret'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="SPEED" unit="METRE"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" name="Out_ret" connectedTo="f8113571-6167-4850-b558-f97f39a0a3f3" id="095f2c36-395f-4183-a760-80d5362e1de3" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
          <profile xsi:type="esdl:InfluxDBProfile" id="c3296420-3305-42aa-b0e1-178c99dcf4e9" field="mass_flow" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='Pipe2_ret'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="GRAM" multiplier="KILO"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="cace57f5-e2a1-48c7-b3b1-7072cb288c08" field="pressure" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='Pipe2_ret'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="db1560a0-8dd1-4289-adc8-9771e6a121d1" field="temperature" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='Pipe2_ret'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="182a5333-27e3-44b9-93d6-61c234c41e6c" field="volume_flow" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='Pipe2_ret'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="CUBIC_METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="4a0ffcb3-f454-42f7-a979-c06e3ce57b1e" field="velocity" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='Pipe2_ret'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="SPEED" unit="METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="9292b585-a909-4f52-b2ca-135bb6a74642" field="pressure_loss" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='Pipe2_ret'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="33437c07-6962-4ac1-9d44-9558cb210e0a" field="pressure_loss_per_length" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='Pipe2_ret'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="74dabc54-a4e0-4574-8ade-8ea81da41767" field="heat_loss" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='Pipe2_ret'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Pipe" diameter="DN100" name="Pipe3_ret" length="1157.3" id="Pipe3_ret" related="Pipe3" innerDiameter="0.1" outerDiameter="0.11">
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" lat="52.01915782361804" CRS="WGS84" lon="4.4308241714884975"/>
          <point xsi:type="esdl:Point" lat="52.01847115657309" CRS="WGS84" lon="4.427431248765651"/>
          <point xsi:type="esdl:Point" lat="52.020438693590556" CRS="WGS84" lon="4.426279962182911"/>
          <point xsi:type="esdl:Point" lat="52.023277604544546" CRS="WGS84" lon="4.42435921177036"/>
          <point xsi:type="esdl:Point" lat="52.02587372990452" CRS="WGS84" lon="4.421796245126029"/>
        </geometry>
        <port xsi:type="esdl:InPort" connectedTo="fcf96c55-8264-41a5-90ee-0977a394a46a" name="In_ret" id="99628a79-e31c-4a99-bf4a-2f788a5d5343" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
          <profile xsi:type="esdl:InfluxDBProfile" id="d4ea48a8-fb5e-42df-862d-64ddf141627d" field="mass_flow" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='Pipe3_ret'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="GRAM" multiplier="KILO"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="b47df2ad-b957-4445-9c9e-8eab8f1ecde9" field="pressure" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='Pipe3_ret'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="33fa6542-6803-417e-bddf-40d87cee184f" field="temperature" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='Pipe3_ret'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="ff297c19-918f-4833-b395-9351d5bda8e0" field="volume_flow" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='Pipe3_ret'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="CUBIC_METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="14fea1e5-c153-4c4e-b5bc-4b67b04506cb" field="velocity" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='Pipe3_ret'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="SPEED" unit="METRE"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" name="Out_ret" connectedTo="9a5c2e7e-e970-4561-8538-9a4000dee416" id="002a5802-e55b-4025-abe9-8d508cfdd78c" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
          <profile xsi:type="esdl:InfluxDBProfile" id="cab3104f-f1e7-42a0-b8dd-2cab2dcef854" field="mass_flow" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='Pipe3_ret'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="GRAM" multiplier="KILO"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="ae77209b-b37a-4259-b23d-502b7fe4841e" field="pressure" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='Pipe3_ret'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="3c077519-076b-4b30-9d19-5778496d9ef2" field="temperature" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='Pipe3_ret'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="35ff149f-b085-4e3e-a9cb-ef9366338af8" field="volume_flow" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='Pipe3_ret'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="CUBIC_METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="5aac2e82-2f77-42f9-a66e-bf7235023978" field="velocity" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='Pipe3_ret'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="SPEED" unit="METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="53b55f23-52a3-49f2-8924-b338f1af9474" field="pressure_loss" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='Pipe3_ret'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="c3098cd5-072a-4b3d-a736-4814fb1b56a9" field="pressure_loss_per_length" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='Pipe3_ret'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="b92db9e9-e21c-41bb-a0c6-56399a3f1434" field="heat_loss" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='Pipe3_ret'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Pipe" diameter="DN100" name="Pipe4_ret" length="2982.2" id="Pipe4_ret" related="Pipe4" innerDiameter="0.1" outerDiameter="0.11">
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
        <port xsi:type="esdl:InPort" connectedTo="f46090b9-dcd6-433f-b021-061c839e634c" name="In_ret" id="fdbab763-3e05-49d6-9271-207035c14bcb" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
          <profile xsi:type="esdl:InfluxDBProfile" id="4e4c3508-ffed-43fa-9baa-3d83e2e9faae" field="mass_flow" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='Pipe4_ret'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="GRAM" multiplier="KILO"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="8269ecf4-16be-4189-a8ae-cbc0a0a06507" field="pressure" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='Pipe4_ret'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="ab3b9446-8f15-4a9c-9064-1bec7f76e6a6" field="temperature" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='Pipe4_ret'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="3cb6dffe-ab08-4504-9d79-43ff8056368a" field="volume_flow" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='Pipe4_ret'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="CUBIC_METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="82fbc85b-1542-4e84-8a0e-a8d1b1c0b0f8" field="velocity" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='Pipe4_ret'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="SPEED" unit="METRE"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" name="Out_ret" connectedTo="9a5c2e7e-e970-4561-8538-9a4000dee416" id="0c142bfb-4b38-44aa-b88f-71da247525ef" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
          <profile xsi:type="esdl:InfluxDBProfile" id="a7be3b8f-09ad-45ec-ad64-2108dceabfc1" field="mass_flow" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='Pipe4_ret'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="GRAM" multiplier="KILO"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="97f9eb2f-c058-4d6f-b64f-c47703201d7c" field="pressure" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='Pipe4_ret'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="649e4e23-70d1-44dc-94dc-cc48bf391b1a" field="temperature" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='Pipe4_ret'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="e516e7ce-bd3f-4a6e-b1e5-21abe497d9b4" field="volume_flow" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='Pipe4_ret'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="CUBIC_METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="545ca99d-3d84-404f-bd67-806917bfd686" field="velocity" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='Pipe4_ret'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="SPEED" unit="METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="368ca849-1844-4db0-94b8-084e062ca388" field="pressure_loss" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='Pipe4_ret'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="466ee778-9049-409d-8920-335cc99303a0" field="pressure_loss_per_length" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='Pipe4_ret'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="925566a6-8662-4cd6-89b1-ca64a4760f86" field="heat_loss" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='Pipe4_ret'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Pipe" diameter="DN150" name="Pipe5_a" length="625.29" id="2b5ba02c-bbfe-4bb9-9e4e-48c4c45c53e9" innerDiameter="0.15" outerDiameter="0.16">
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" lat="52.01909093233181" lon="4.401419162750245"/>
          <point xsi:type="esdl:Point" lat="52.02149748382286" lon="4.408371448516847"/>
          <point xsi:type="esdl:Point" lat="52.021827590527295" lon="4.409401416778565"/>
        </geometry>
        <port xsi:type="esdl:InPort" connectedTo="fd562e07-a60c-4f5c-9084-d51e736ff545" name="In" id="b9af6540-8cae-41ce-b0c3-4528e027d3b3" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
          <profile xsi:type="esdl:InfluxDBProfile" id="58d6a4df-31e2-4049-9c36-ea193b0937f4" field="mass_flow" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='2b5ba02c-bbfe-4bb9-9e4e-48c4c45c53e9'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="GRAM" multiplier="KILO"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="e0358797-8bc5-48b8-8048-5b0c093a140c" field="pressure" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='2b5ba02c-bbfe-4bb9-9e4e-48c4c45c53e9'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="91a0e9ac-5d1f-4299-9d0e-dfe414f982e3" field="temperature" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='2b5ba02c-bbfe-4bb9-9e4e-48c4c45c53e9'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="8730af7f-514d-4854-9b03-c57c86b1bc32" field="volume_flow" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='2b5ba02c-bbfe-4bb9-9e4e-48c4c45c53e9'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="CUBIC_METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="90dfa491-ed65-44ea-bd91-268ec6738054" field="velocity" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='2b5ba02c-bbfe-4bb9-9e4e-48c4c45c53e9'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="SPEED" unit="METRE"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" name="Out" connectedTo="9b3744f2-f9f0-4e32-a118-e116154e1384" id="37a4d419-e788-4ca7-a033-3a06c6872fdf" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
          <profile xsi:type="esdl:InfluxDBProfile" id="4d208e41-2085-44f4-8d39-f5003b855ff9" field="mass_flow" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='2b5ba02c-bbfe-4bb9-9e4e-48c4c45c53e9'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="GRAM" multiplier="KILO"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="0c63d9f3-bd2e-41ee-bf22-22fdd8dae177" field="pressure" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='2b5ba02c-bbfe-4bb9-9e4e-48c4c45c53e9'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="04695140-718c-4d3a-9e96-c7b00599762e" field="temperature" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='2b5ba02c-bbfe-4bb9-9e4e-48c4c45c53e9'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="999b3c9a-076d-434b-b7b8-c82e898c6a37" field="volume_flow" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='2b5ba02c-bbfe-4bb9-9e4e-48c4c45c53e9'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="CUBIC_METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="c099c972-df3a-4d77-8bc9-3c58cc336100" field="velocity" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='2b5ba02c-bbfe-4bb9-9e4e-48c4c45c53e9'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="SPEED" unit="METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="00c1e52b-e912-492b-ace6-73b899417e64" field="pressure_loss" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='2b5ba02c-bbfe-4bb9-9e4e-48c4c45c53e9'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="86f63e90-10a4-4b26-9cdc-d1eef58be1af" field="pressure_loss_per_length" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='2b5ba02c-bbfe-4bb9-9e4e-48c4c45c53e9'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="dfc23274-79e0-4e98-9b74-607ce65865c0" field="heat_loss" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='2b5ba02c-bbfe-4bb9-9e4e-48c4c45c53e9'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Pipe" diameter="DN150" name="Pipe5_b" length="999.47" id="0f7eed4a-ac9a-4f38-9825-876e41e8c100" innerDiameter="0.15" outerDiameter="0.16">
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" lat="52.021827590527295" lon="4.409401416778565"/>
          <point xsi:type="esdl:Point" lat="52.0233064386584" lon="4.414680004119874"/>
          <point xsi:type="esdl:Point" lat="52.025085613014795" lon="4.419805705547334"/>
          <point xsi:type="esdl:Point" lat="52.02567150373549" lon="4.421594738960267"/>
          <point xsi:type="esdl:Point" lat="52.02578372981452" lon="4.422471821308137"/>
        </geometry>
        <port xsi:type="esdl:InPort" connectedTo="3a52317d-827b-4dc4-a6df-1b145bbb1736" name="In" id="9a462e32-2e53-40ca-97eb-8394b6a3d131" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
          <profile xsi:type="esdl:InfluxDBProfile" id="66bf6747-23bb-49c4-8a8b-4af6d11d6357" field="mass_flow" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='0f7eed4a-ac9a-4f38-9825-876e41e8c100'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="GRAM" multiplier="KILO"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="8b4cbb75-86f2-49c8-bce8-182611078cb1" field="pressure" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='0f7eed4a-ac9a-4f38-9825-876e41e8c100'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="19119825-0ea4-4304-9a72-0fc6c2ba92d0" field="temperature" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='0f7eed4a-ac9a-4f38-9825-876e41e8c100'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="0160bcfb-1bb2-4604-b2b6-8ca2afdb2b0b" field="volume_flow" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='0f7eed4a-ac9a-4f38-9825-876e41e8c100'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="CUBIC_METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="86cdceae-6772-4b2b-8685-c548828c7a18" field="velocity" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='0f7eed4a-ac9a-4f38-9825-876e41e8c100'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="SPEED" unit="METRE"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" name="Out" connectedTo="6829cf4d-0dd9-43ac-8581-87b9998ca5bc" id="607e9ed3-3e2e-4c08-bffe-0d713420cce7" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
          <profile xsi:type="esdl:InfluxDBProfile" id="85a3d084-b391-4e96-89c4-8de5e8dd2735" field="mass_flow" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='0f7eed4a-ac9a-4f38-9825-876e41e8c100'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="GRAM" multiplier="KILO"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="290fad2e-5878-466a-810e-77fae4f986ea" field="pressure" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='0f7eed4a-ac9a-4f38-9825-876e41e8c100'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="f8083e49-fbfe-4a1f-82c6-24ab76f2936d" field="temperature" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='0f7eed4a-ac9a-4f38-9825-876e41e8c100'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="3c9134e9-522b-43b7-80b0-d7dbb68dfedb" field="volume_flow" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='0f7eed4a-ac9a-4f38-9825-876e41e8c100'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="CUBIC_METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="e94e60f2-d4b2-4449-91f4-a0107f899a0a" field="velocity" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='0f7eed4a-ac9a-4f38-9825-876e41e8c100'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="SPEED" unit="METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="886a746f-0b67-4282-a372-2c50eef89477" field="pressure_loss" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='0f7eed4a-ac9a-4f38-9825-876e41e8c100'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="394a658c-b2f6-462b-9d47-12d87b24283d" field="pressure_loss_per_length" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='0f7eed4a-ac9a-4f38-9825-876e41e8c100'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="0dfa065b-584b-43f9-a415-42eda5767838" field="heat_loss" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='0f7eed4a-ac9a-4f38-9825-876e41e8c100'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Joint" id="086f467d-afd5-4a87-aad2-0b03f185edef" name="Joint_086f">
        <geometry xsi:type="esdl:Point" lat="52.021827590527295" lon="4.409401416778565"/>
        <port xsi:type="esdl:InPort" connectedTo="37a4d419-e788-4ca7-a033-3a06c6872fdf" name="In" id="9b3744f2-f9f0-4e32-a118-e116154e1384" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret"/>
        <port xsi:type="esdl:OutPort" name="Out" connectedTo="9a462e32-2e53-40ca-97eb-8394b6a3d131 3874047c-96e8-4555-902a-8646daf3f984" id="3a52317d-827b-4dc4-a6df-1b145bbb1736" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret"/>
      </asset>
      <asset xsi:type="esdl:Pipe" diameter="DN150" name="Pipe5_ret_a" length="993.35" id="3a1d7c9a-18cd-4360-ae7f-74062a514317" innerDiameter="0.1" outerDiameter="0.16">
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" lat="52.02587372990452" lon="4.421796245126029"/>
          <point xsi:type="esdl:Point" lat="52.025761503825485" CRS="WGS84" lon="4.420918767262569"/>
          <point xsi:type="esdl:Point" lat="52.02517561310479" CRS="WGS84" lon="4.419127661327588"/>
          <point xsi:type="esdl:Point" lat="52.0233964387484" CRS="WGS84" lon="4.413995586196941"/>
          <point xsi:type="esdl:Point" lat="52.021920019967986" lon="4.4088220596313485"/>
        </geometry>
        <port xsi:type="esdl:InPort" connectedTo="3383078a-72da-4af1-badf-686f43c73018" name="In_ret" id="bbb482fa-f98e-4219-ab7e-d8684b0b4e66" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
          <profile xsi:type="esdl:InfluxDBProfile" id="287089c3-60e8-40d8-b680-16e2bc831f3b" field="mass_flow" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='3a1d7c9a-18cd-4360-ae7f-74062a514317'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="GRAM" multiplier="KILO"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="356b83b4-bfb3-432b-98a2-42a835edf3b7" field="pressure" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='3a1d7c9a-18cd-4360-ae7f-74062a514317'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="66ec3c31-7c80-4417-9427-7a397aa3c425" field="temperature" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='3a1d7c9a-18cd-4360-ae7f-74062a514317'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="ea4deff2-c2a9-4e03-adbe-b0abb2944f9c" field="volume_flow" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='3a1d7c9a-18cd-4360-ae7f-74062a514317'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="CUBIC_METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="0e8f912d-48bb-454f-8a43-873dabf2b0cd" field="velocity" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='3a1d7c9a-18cd-4360-ae7f-74062a514317'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="SPEED" unit="METRE"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" name="Out" connectedTo="027db45e-289d-4611-94ba-95d04abec30f" id="23be2b8d-5f5a-471f-875f-b7e20997f7c5" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
          <profile xsi:type="esdl:InfluxDBProfile" id="06137fa8-79ca-4648-9927-fbff2a2a09bd" field="mass_flow" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='3a1d7c9a-18cd-4360-ae7f-74062a514317'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="GRAM" multiplier="KILO"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="c1f4d51c-f561-48aa-9bf8-e3ae1002bef9" field="pressure" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='3a1d7c9a-18cd-4360-ae7f-74062a514317'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="bf2fda75-3cac-4f03-b631-c0c01ce7b8af" field="temperature" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='3a1d7c9a-18cd-4360-ae7f-74062a514317'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="16b57730-c417-4036-8a27-9c8ec8e5e5ed" field="volume_flow" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='3a1d7c9a-18cd-4360-ae7f-74062a514317'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="CUBIC_METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="05d96eec-8f3d-474a-9407-5368a7e308b2" field="velocity" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='3a1d7c9a-18cd-4360-ae7f-74062a514317'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="SPEED" unit="METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="61b4299b-e255-4a17-93fd-c95a19884724" field="pressure_loss" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='3a1d7c9a-18cd-4360-ae7f-74062a514317'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="cd7b7a2b-59b3-4fab-8fb8-1746203fee9a" field="pressure_loss_per_length" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='3a1d7c9a-18cd-4360-ae7f-74062a514317'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="1baded02-0bcb-4fe6-9b5b-282997c7bd9f" field="heat_loss" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='3a1d7c9a-18cd-4360-ae7f-74062a514317'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Pipe" diameter="DN150" name="Pipe5_ret_b" length="632.79" id="92af5656-dbd3-4ddf-abaa-9ef47ea96333" innerDiameter="0.1" outerDiameter="0.16">
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" lat="52.021920019967986" lon="4.4088220596313485"/>
          <point xsi:type="esdl:Point" lat="52.02158748391286" CRS="WGS84" lon="4.4076804239030505"/>
          <point xsi:type="esdl:Point" lat="52.019180932421804" CRS="WGS84" lon="4.400719145015912"/>
        </geometry>
        <port xsi:type="esdl:InPort" connectedTo="ba8ac663-b53c-400a-a838-206da20b63d7" name="In" id="fb200deb-6383-4e50-b041-9536046ee404" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
          <profile xsi:type="esdl:InfluxDBProfile" id="d75f699f-de91-4c62-a35f-ab99de6ddc30" field="mass_flow" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='92af5656-dbd3-4ddf-abaa-9ef47ea96333'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="GRAM" multiplier="KILO"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="a0b49d02-483c-4ddc-97a3-e72b70ec2331" field="pressure" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='92af5656-dbd3-4ddf-abaa-9ef47ea96333'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="19942137-dc08-4eb2-b5bc-232696096abe" field="temperature" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='92af5656-dbd3-4ddf-abaa-9ef47ea96333'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="2edcbb2f-1922-4995-9f0c-39c2e40b0cba" field="volume_flow" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='92af5656-dbd3-4ddf-abaa-9ef47ea96333'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="CUBIC_METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="486e5234-d026-4aec-bf68-ca6fdfd2f62a" field="velocity" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='92af5656-dbd3-4ddf-abaa-9ef47ea96333'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="SPEED" unit="METRE"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" name="Out_ret" connectedTo="c06f582d-1922-47e3-ae04-a740b28353e3" id="35ff6c51-ecdc-419c-9e67-8dbbf4ccaa42" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
          <profile xsi:type="esdl:InfluxDBProfile" id="6428c2d8-74a5-4c24-ae2f-4568871ae80e" field="mass_flow" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='92af5656-dbd3-4ddf-abaa-9ef47ea96333'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="GRAM" multiplier="KILO"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="a5eb054f-37c0-494d-ac6a-d187f4c588a9" field="pressure" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='92af5656-dbd3-4ddf-abaa-9ef47ea96333'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="b4e55972-5e06-4a5a-ba03-15361cffdba9" field="temperature" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='92af5656-dbd3-4ddf-abaa-9ef47ea96333'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="544200f1-a334-4aa3-8847-0e1e78b75f81" field="volume_flow" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='92af5656-dbd3-4ddf-abaa-9ef47ea96333'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="CUBIC_METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="f936fb43-9576-445c-9dc6-643643acab75" field="velocity" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='92af5656-dbd3-4ddf-abaa-9ef47ea96333'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="SPEED" unit="METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="126e42b0-74d0-4cf6-99df-db4e5b1ca538" field="pressure_loss" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='92af5656-dbd3-4ddf-abaa-9ef47ea96333'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="799ef7bd-479a-4d3e-9cf7-81f1ee150f27" field="pressure_loss_per_length" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='92af5656-dbd3-4ddf-abaa-9ef47ea96333'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="7e1d7eb3-c084-402a-a85c-5430ec0c223f" field="heat_loss" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='92af5656-dbd3-4ddf-abaa-9ef47ea96333'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Joint" id="526a38b8-cf6c-407e-9a76-837d409fdf12" name="Joint_526a">
        <geometry xsi:type="esdl:Point" lat="52.021920019967986" lon="4.4088220596313485"/>
        <port xsi:type="esdl:InPort" connectedTo="23be2b8d-5f5a-471f-875f-b7e20997f7c5 7ca06d72-bb1d-41ac-9a19-6306fb33e10e" name="In" id="027db45e-289d-4611-94ba-95d04abec30f" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret"/>
        <port xsi:type="esdl:OutPort" name="Out" connectedTo="fb200deb-6383-4e50-b041-9536046ee404" id="ba8ac663-b53c-400a-a838-206da20b63d7" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret"/>
      </asset>
      <asset xsi:type="esdl:Pipe" diameter="DN150" id="fa07b73b-0ec7-4a6d-bbd5-60b5fdf09d92" length="599.3" name="Pipe_ates">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.021827590527295" lon="4.409401416778565"/>
          <point xsi:type="esdl:Point" lat="52.02648843713918" lon="4.4050025939941415"/>
        </geometry>
        <port xsi:type="esdl:InPort" connectedTo="3a52317d-827b-4dc4-a6df-1b145bbb1736" name="In" id="3874047c-96e8-4555-902a-8646daf3f984" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
          <profile xsi:type="esdl:InfluxDBProfile" id="d45e85fa-c1bd-4ac9-94cc-ce08a289ba84" field="mass_flow" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='fa07b73b-0ec7-4a6d-bbd5-60b5fdf09d92'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="GRAM" multiplier="KILO"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="3ab2f44f-504e-4227-951a-ca7593031251" field="pressure" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='fa07b73b-0ec7-4a6d-bbd5-60b5fdf09d92'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="64b704e2-feb7-426a-b954-9986570284ce" field="temperature" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='fa07b73b-0ec7-4a6d-bbd5-60b5fdf09d92'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="0528367b-307b-452d-ad23-447f506503d3" field="volume_flow" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='fa07b73b-0ec7-4a6d-bbd5-60b5fdf09d92'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="CUBIC_METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="876fbae7-e0be-4f19-a5aa-68edda252e3a" field="velocity" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='fa07b73b-0ec7-4a6d-bbd5-60b5fdf09d92'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="SPEED" unit="METRE"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" name="Out" connectedTo="e14c67db-96c3-4fc9-aed2-4fe0f84a34d3" id="b94d1e9b-5377-4016-9bb3-4452effb5a20" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
          <profile xsi:type="esdl:InfluxDBProfile" id="e568a7c8-9ed6-4693-91de-4657de956c14" field="mass_flow" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='fa07b73b-0ec7-4a6d-bbd5-60b5fdf09d92'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="GRAM" multiplier="KILO"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="5b734f15-404d-43ab-9fe3-2d41e8698f45" field="pressure" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='fa07b73b-0ec7-4a6d-bbd5-60b5fdf09d92'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="9314a5cd-adc0-4aa4-813e-4a7e7af19c15" field="temperature" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='fa07b73b-0ec7-4a6d-bbd5-60b5fdf09d92'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="e584127c-6669-4051-a9c7-d1e1a2d6f5f0" field="volume_flow" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='fa07b73b-0ec7-4a6d-bbd5-60b5fdf09d92'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="CUBIC_METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="d08d03de-8038-4630-9b91-001173c0fe48" field="velocity" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='fa07b73b-0ec7-4a6d-bbd5-60b5fdf09d92'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="SPEED" unit="METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="4271d152-bc63-4953-a5d4-15afe0cc7194" field="pressure_loss" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='fa07b73b-0ec7-4a6d-bbd5-60b5fdf09d92'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="a6199ac5-7afe-4160-893f-77c35722ea8d" field="pressure_loss_per_length" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='fa07b73b-0ec7-4a6d-bbd5-60b5fdf09d92'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="35bbc189-942a-41be-b8ac-80f9101a3354" field="heat_loss" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='fa07b73b-0ec7-4a6d-bbd5-60b5fdf09d92'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Pipe" diameter="DN150" id="1f1a7ed1-c6fe-4afe-a39c-77803b8aed2f" length="549.0" name="Pipe_ates_ret">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.02633000273639" lon="4.404745101928712"/>
          <point xsi:type="esdl:Point" lat="52.02203885753961" lon="4.408714771270753"/>
        </geometry>
        <port xsi:type="esdl:InPort" connectedTo="07a302f6-4e5b-40ef-87e3-c908a993dfe4" name="In" id="9a58c5ba-1ac1-48cb-b583-5c568190ae3c" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
          <profile xsi:type="esdl:InfluxDBProfile" id="37204d76-1418-4192-bb62-6c19098bafac" field="mass_flow" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='1f1a7ed1-c6fe-4afe-a39c-77803b8aed2f'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="GRAM" multiplier="KILO"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="26b82ef9-f1b1-4eba-bc05-d1b56c74d33e" field="pressure" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='1f1a7ed1-c6fe-4afe-a39c-77803b8aed2f'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="16ff09cd-d533-4a48-af95-d38675478bf7" field="temperature" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='1f1a7ed1-c6fe-4afe-a39c-77803b8aed2f'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="5c30edac-1e6e-4fc5-91a7-736487486c82" field="volume_flow" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='1f1a7ed1-c6fe-4afe-a39c-77803b8aed2f'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="CUBIC_METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="5cab7713-eb78-40ef-89d3-060237b0c429" field="velocity" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='1f1a7ed1-c6fe-4afe-a39c-77803b8aed2f'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="SPEED" unit="METRE"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" name="Out" connectedTo="027db45e-289d-4611-94ba-95d04abec30f" id="7ca06d72-bb1d-41ac-9a19-6306fb33e10e" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
          <profile xsi:type="esdl:InfluxDBProfile" id="a8498b17-79f4-4032-9d88-1b1b01a0528d" field="mass_flow" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='1f1a7ed1-c6fe-4afe-a39c-77803b8aed2f'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="GRAM" multiplier="KILO"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="80d7497b-17c8-4b47-9fcb-c7709e52cbb1" field="pressure" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='1f1a7ed1-c6fe-4afe-a39c-77803b8aed2f'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="6809e93c-5d20-416b-9b15-ba5833a436c7" field="temperature" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='1f1a7ed1-c6fe-4afe-a39c-77803b8aed2f'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="bb830f64-68d4-4256-a911-2b31a2035c3b" field="volume_flow" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='1f1a7ed1-c6fe-4afe-a39c-77803b8aed2f'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="CUBIC_METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="b64a2256-a5da-4988-b72a-bb95cb2dcd87" field="velocity" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='1f1a7ed1-c6fe-4afe-a39c-77803b8aed2f'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="SPEED" unit="METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="1def9600-e9ae-4f3e-b995-58ae88697bd1" field="pressure_loss" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='1f1a7ed1-c6fe-4afe-a39c-77803b8aed2f'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="e93b4cfe-c6aa-4068-9229-537860f67288" field="pressure_loss_per_length" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='1f1a7ed1-c6fe-4afe-a39c-77803b8aed2f'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="efc0349e-af6d-456d-8fec-21f252916cd0" field="heat_loss" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='1f1a7ed1-c6fe-4afe-a39c-77803b8aed2f'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:ATES" wellCasingSize="13.0" aquiferPorosity="0.3" aquiferPermeability="10000.0" maxChargeRate="11610000.0" aquiferNetToGross="1.0" name="ATES_4d6d" salinity="10000.0" aquiferMidTemperature="17.0" wellDistance="150.0" maxDischargeRate="11610000.0" id="4d6dfb40-ea51-4176-a27e-4ee60cad4034" aquiferAnisotropy="4.0" aquiferTopDepth="300.0" aquiferThickness="45.0">
        <geometry xsi:type="esdl:Point" lat="52.026597360465495" lon="4.404745101928712"/>
        <dataSource xsi:type="esdl:DataSource" description="This data was generated using the 'kosten_per_asset.xslx' file in the 'Kentallen' directory of WarmingUp project 1D" attribution="" name="WarmingUp factsheet: HT-ATES (high)"/>
        <port xsi:type="esdl:InPort" connectedTo="b94d1e9b-5377-4016-9bb3-4452effb5a20" name="In" id="e14c67db-96c3-4fc9-aed2-4fe0f84a34d3" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
          <profile xsi:type="esdl:InfluxDBProfile" id="1e323c5f-f645-42bf-8631-b63b0a24c424" field="demand4_MW" measurement="WarmingUp default profiles" endDate="2019-12-31T22:00:00.000000+0000" port="443" startDate="2018-12-31T23:00:00.000000+0000" host="profiles.warmingup.info" database="energy_profiles" filters="" multiplier="5.0">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="e9405fc8-5e57-4df5-8584-4babee7cdf1b"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="ce1e1ffb-b0da-4956-936d-38338083cf7a" field="mass_flow" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='4d6dfb40-ea51-4176-a27e-4ee60cad4034'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="GRAM" multiplier="KILO"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="ffa6505b-9a43-4cf2-ada6-f2439bdd1ca5" field="pressure" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='4d6dfb40-ea51-4176-a27e-4ee60cad4034'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="0fe9d18f-a639-4ac7-8384-6f8c771c12c9" field="temperature" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='4d6dfb40-ea51-4176-a27e-4ee60cad4034'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="86a90183-97ff-4590-8147-be5b09c2fd9f" field="volume_flow" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='4d6dfb40-ea51-4176-a27e-4ee60cad4034'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="CUBIC_METRE"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" name="Out" connectedTo="9a58c5ba-1ac1-48cb-b583-5c568190ae3c" id="07a302f6-4e5b-40ef-87e3-c908a993dfe4" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
          <profile xsi:type="esdl:InfluxDBProfile" id="0e29933b-ff80-4d24-add9-a2e0ad3d5cfe" field="mass_flow" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='4d6dfb40-ea51-4176-a27e-4ee60cad4034'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="GRAM" multiplier="KILO"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="1cdb7686-a2e5-47d7-864b-f0f28838ebba" field="pressure" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='4d6dfb40-ea51-4176-a27e-4ee60cad4034'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="9193610b-d048-4a22-8cf0-dc3784309781" field="temperature" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='4d6dfb40-ea51-4176-a27e-4ee60cad4034'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="3ffc1331-6c0d-486d-b4f1-9d0dd793028d" field="volume_flow" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='4d6dfb40-ea51-4176-a27e-4ee60cad4034'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="CUBIC_METRE"/>
          </profile>
        </port>
        <costInformation xsi:type="esdl:CostInformation">
          <fixedMaintenanceCosts xsi:type="esdl:SingleValue" value="115472.22">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="57537388-7fd7-40b3-a0c4-0ce65648eaab" description="Cost in EUR/yr" unit="EURO" perTimeUnit="YEAR"/>
          </fixedMaintenanceCosts>
          <variableOperationalCosts xsi:type="esdl:SingleValue" value="69666.67">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="3c9f580e-b71a-4bc8-8cea-cb6788c0bf49" description="Cost in EUR/yr" unit="EURO" perTimeUnit="YEAR"/>
          </variableOperationalCosts>
          <investmentCosts xsi:type="esdl:SingleValue" value="2333594.0">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="a3b5cdd9-364b-4262-bce5-4658c5f1bac9" description="Cost in EUR" unit="EURO"/>
          </investmentCosts>
          <fixedOperationalCosts xsi:type="esdl:SingleValue" value="30000.0">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="574ef21d-681a-43ae-a1cb-f7b25d88defb" description="Cost in EUR/yr" unit="EURO" perTimeUnit="YEAR"/>
          </fixedOperationalCosts>
        </costInformation>
      </asset>
      <asset xsi:type="esdl:GenericProducer" id="0375b489-b57b-439d-9ce9-db2dc9d0bbb9" name="GenericProducer_0375" power="100000000.0">
        <geometry xsi:type="esdl:Point" lat="52.0197014548679" CRS="WGS84" lon="4.40077438452907"/>
        <port xsi:type="esdl:OutPort" name="Out" connectedTo="30f746ff-aca7-4e55-946e-3dcaf2ac7569" id="7dde77c4-a956-4496-b8b9-e714317cc0f2" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret">
          <profile xsi:type="esdl:InfluxDBProfile" id="8b70a1e2-054d-4af1-8056-320844b79366" field="mass_flow" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='0375b489-b57b-439d-9ce9-db2dc9d0bbb9'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="GRAM" multiplier="KILO"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="6c798091-799c-474a-89e4-5a66b100f63d" field="pressure" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='0375b489-b57b-439d-9ce9-db2dc9d0bbb9'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="1e0e054d-1364-4cb9-a1e0-d69ac0afcc1e" field="temperature" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='0375b489-b57b-439d-9ce9-db2dc9d0bbb9'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="67a4d067-71b3-4fa1-922d-866d0d9b9981" field="volume_flow" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='0375b489-b57b-439d-9ce9-db2dc9d0bbb9'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="CUBIC_METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="a6ad8697-924b-49c5-b84a-6f6df3209ac9" field="heat_supply_set_point" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='0375b489-b57b-439d-9ce9-db2dc9d0bbb9'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="880ae8bd-8623-445c-ab1e-68d62cf5e02a" field="heat_supplied" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='0375b489-b57b-439d-9ce9-db2dc9d0bbb9'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
        </port>
        <port xsi:type="esdl:InPort" connectedTo="095f2c36-395f-4183-a760-80d5362e1de3" name="In" id="f8113571-6167-4850-b558-f97f39a0a3f3" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
          <profile xsi:type="esdl:InfluxDBProfile" id="56af23e5-43f9-44d4-8588-f67fd632fbbc" field="mass_flow" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='0375b489-b57b-439d-9ce9-db2dc9d0bbb9'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="GRAM" multiplier="KILO"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="0a799fcb-9ae0-4841-85e6-bef05386dccd" field="pressure" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='0375b489-b57b-439d-9ce9-db2dc9d0bbb9'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="PRESSURE" unit="PASCAL"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="bbefe2d7-92a4-4ea0-bce0-acd565fadab3" field="temperature" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='0375b489-b57b-439d-9ce9-db2dc9d0bbb9'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="TEMPERATURE" unit="KELVIN"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" id="16e3c801-9746-4a0d-8e6c-f0a10bd67267" field="volume_flow" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" endDate="2019-01-01T02:00:00.000000" port="8096" startDate="2019-01-01T00:00:00.000000" host="omotes_influxdb" database="f44cd63f-0480-4eb6-afa2-df6b21eeb10e" filters="&quot;assetId&quot;='0375b489-b57b-439d-9ce9-db2dc9d0bbb9'">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="SECOND" physicalQuantity="FLOW" unit="CUBIC_METRE"/>
          </profile>
        </port>
      </asset>
    </area>
  </instance>
</esdl:EnergySystem>
