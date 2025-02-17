<?xml version='1.0' encoding='UTF-8'?>
<esdl:EnergySystem xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:esdl="http://www.tno.nl/esdl" version="10" id="59d19226-68f5-43ee-847c-af701148f2cc" name="course_model with return network_simulator" esdlVersion="v2111" description="basic">
  <energySystemInformation xsi:type="esdl:EnergySystemInformation" id="9a76b800-6e2c-4e99-a9a5-859f7badd061">
    <quantityAndUnits xsi:type="esdl:QuantityAndUnits" id="54fda8fc-e725-4c44-8a49-726a811ba069">
      <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="eb07bccb-203f-407e-af98-e687656a221d" multiplier="GIGA" description="Energy in GJ" physicalQuantity="ENERGY" unit="JOULE"/>
      <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="e9405fc8-5e57-4df5-8584-4babee7cdf1b" multiplier="MEGA" description="Power in MW" physicalQuantity="POWER" unit="WATT"/>
      <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="e9405fc8-5e57-4df5-8584-4babee7cdf1a" multiplier="KILO" description="Power in kW" physicalQuantity="POWER" unit="WATT"/>
    </quantityAndUnits>
    <carriers xsi:type="esdl:Carriers" id="e84423d9-b617-4fa0-b113-1ba12daacaaf">
      <carrier xsi:type="esdl:HeatCommodity" supplyTemperature="80.0" name="supply_ret" id="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" returnTemperature="40.0"/>
      <carrier xsi:type="esdl:HeatCommodity" supplyTemperature="80.0" name="Return_ret" id="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" returnTemperature="40.0"/>
    </carriers>
  </energySystemInformation>
  <instance xsi:type="esdl:Instance" name="Untitled instance" id="8db3337e-440e-48d1-b1e9-6f86c4f76320">
    <area xsi:type="esdl:Area" name="Untitled area" id="a3f3b5d9-2faa-4862-a5b0-d02b219052dd">
      <asset xsi:type="esdl:HeatingDemand" power="5000000.0" maxTemperature="120.0" name="Pijnacker" id="cc61c52a-29a6-45d3-81e8-ce18ba12f319" minTemperature="40.0">
        <geometry xsi:type="esdl:Point" lon="4.431524276733399" lat="52.01906782352804"/>
        <port xsi:type="esdl:InPort" connectedTo="9e1c58ab-ec19-4964-928f-d2a582af6ce8" id="c3eb59bc-037d-4684-918e-df0f54af5b3d" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" name="In">
          <profile xsi:type="esdl:InfluxDBProfile" field="demand2_MW" multiplier="5.0" measurement="WarmingUp default profiles" port="443" host="profiles.warmingup.info" startDate="2018-12-31T23:00:00.000000+0000" id="131d801f-9f8e-4dc4-9a8a-82725607eedf" database="energy_profiles" endDate="2019-12-31T22:00:00.000000+0000" filters="">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="e9405fc8-5e57-4df5-8584-4babee7cdf1b"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="mass_flow" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="70976b3e-44c7-4339-8486-f22971d961fc" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="GRAM" multiplier="KILO" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="pressure" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="abf30641-7f7b-4f33-9a96-1ef6376b5333" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PASCAL" physicalQuantity="PRESSURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="temperature" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="268a42d4-547d-4392-b641-43f612daf390" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="KELVIN" physicalQuantity="TEMPERATURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="volume_flow" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="b2fa35c8-00c6-4826-a394-a18ef109c7a2" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="CUBIC_METRE" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" id="fcf96c55-8264-41a5-90ee-0977a394a46a" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" connectedTo="99628a79-e31c-4a99-bf4a-2f788a5d5343" name="Out">
          <profile xsi:type="esdl:InfluxDBProfile" field="mass_flow" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="296b01d7-0aaa-410d-bff6-55b52234bd53" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="GRAM" multiplier="KILO" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="pressure" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="e348b561-fb7b-4fe6-a42f-e7e5861afda1" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PASCAL" physicalQuantity="PRESSURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="temperature" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="e6ae7a4d-0558-4cf2-bdf1-37535ed3e3d2" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="KELVIN" physicalQuantity="TEMPERATURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="volume_flow" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="ed0d318f-533b-4e1e-9218-09ce742a1e9a" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="CUBIC_METRE" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="heat_demand_set_point" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="a620b872-9ce4-45b1-a122-5459016225af" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="WATT" physicalQuantity="POWER"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="heat_demand" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="ee2f9316-1415-4ed4-af58-5622bca37f21" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="WATT" physicalQuantity="POWER"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:HeatingDemand" power="5000000.0" maxTemperature="120.0" name="Delfgauw" id="8805731a-8780-47b4-8204-76ba074564bc" minTemperature="40.0">
        <geometry xsi:type="esdl:Point" lon="4.396162033081056" lat="52.0094006941874"/>
        <port xsi:type="esdl:InPort" connectedTo="88b6c35c-7eeb-42e9-ba4e-491fa6c7a6fc" id="69464799-3ec3-4928-a5da-6158a6237c76" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" name="In">
          <profile xsi:type="esdl:InfluxDBProfile" field="demand1_MW" multiplier="5.0" measurement="WarmingUp default profiles" port="443" host="profiles.warmingup.info" startDate="2018-12-31T23:00:00.000000+0000" id="0380fe5a-611c-4523-9eda-1d0ecd69271e" database="energy_profiles" endDate="2019-12-31T22:00:00.000000+0000" filters="">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="e9405fc8-5e57-4df5-8584-4babee7cdf1b"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="mass_flow" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="0fad017b-30aa-4c25-bd05-d8a33c227eed" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="GRAM" multiplier="KILO" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="pressure" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="5018bcd1-4031-4d2e-bed4-df9b070ca90f" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PASCAL" physicalQuantity="PRESSURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="temperature" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="1a72bec6-a6e8-4ee0-ba69-6c159d6a4a1c" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="KELVIN" physicalQuantity="TEMPERATURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="volume_flow" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="292fb251-4112-4293-8a7b-34ec3952801c" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="CUBIC_METRE" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" id="c8625b7f-e9ad-4327-899e-0c6e91e873cb" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" connectedTo="1467bee7-ed90-49d5-8395-3595408ad1ee" name="Out">
          <profile xsi:type="esdl:InfluxDBProfile" field="mass_flow" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="74bd687e-5262-4fbb-abee-fb01710a6da4" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="GRAM" multiplier="KILO" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="pressure" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="42cbf802-b446-45a4-b1cd-548519d79d79" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PASCAL" physicalQuantity="PRESSURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="temperature" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="b7016e1f-a48e-4842-851d-93c11ac6c475" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="KELVIN" physicalQuantity="TEMPERATURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="volume_flow" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="91bd1ade-5d89-4404-b68e-a28b3bb73b9e" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="CUBIC_METRE" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="heat_demand_set_point" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="dcbfcf96-6adf-4c80-a9bf-e3085ec35fc5" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="WATT" physicalQuantity="POWER"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="heat_demand" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="f0d07f88-a136-44f8-89cc-d30f26b2cd12" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="WATT" physicalQuantity="POWER"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:HeatingDemand" power="5000000.0" maxTemperature="120.0" name="Nootdorp" id="156c4afb-4106-4286-8f41-fbf8edc6e5ce" minTemperature="40.0">
        <geometry xsi:type="esdl:Point" lon="4.3912696838378915" lat="52.04277777849674"/>
        <port xsi:type="esdl:InPort" connectedTo="22be2ae1-10c0-42eb-abd9-6b115b800283" id="ad377fa7-710f-45e7-9144-1521bef5c1ab" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" name="In">
          <profile xsi:type="esdl:InfluxDBProfile" field="demand3_MW" multiplier="5.0" measurement="WarmingUp default profiles" port="443" host="profiles.warmingup.info" startDate="2018-12-31T23:00:00.000000+0000" id="57131b4a-f177-47da-b7d7-788f23eefb5b" database="energy_profiles" endDate="2019-12-31T22:00:00.000000+0000" filters="">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="e9405fc8-5e57-4df5-8584-4babee7cdf1b"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="mass_flow" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="1e3b312e-30ad-4050-ba91-84bcb1d8cf2e" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="GRAM" multiplier="KILO" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="pressure" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="89d1071f-d702-4c8e-80cd-703c63ce3189" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PASCAL" physicalQuantity="PRESSURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="temperature" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="05eb2612-8388-4a9e-9e9e-442c72f6db92" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="KELVIN" physicalQuantity="TEMPERATURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="volume_flow" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="fd4b0b1a-6ae5-443e-82d1-9fddb9c1f895" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="CUBIC_METRE" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" id="f46090b9-dcd6-433f-b021-061c839e634c" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" connectedTo="fdbab763-3e05-49d6-9271-207035c14bcb" name="Out">
          <profile xsi:type="esdl:InfluxDBProfile" field="mass_flow" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="959714b8-d6ea-40a0-8ea7-9e9b424da2a7" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="GRAM" multiplier="KILO" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="pressure" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="48c9e96f-f7b5-4439-8edf-7be332ab59a8" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PASCAL" physicalQuantity="PRESSURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="temperature" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="6024a595-97dd-4473-aa4c-5772dd40ef73" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="KELVIN" physicalQuantity="TEMPERATURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="volume_flow" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="f93a3e1a-6f7b-4927-9919-52e16b14b929" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="CUBIC_METRE" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="heat_demand_set_point" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="6d491fd5-45c6-4f19-90c8-f15378d23382" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="WATT" physicalQuantity="POWER"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="heat_demand" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="38b1e549-76d0-4b28-8508-2327bef321cf" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="WATT" physicalQuantity="POWER"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Joint" name="Joint_1126" id="11262f35-3d51-4ce3-9a69-6eb4a6c46c9d">
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="4.401419162750245" lat="52.01909093233181"/>
        <port xsi:type="esdl:InPort" connectedTo="7c178a7c-f6cb-4f33-8c4a-076d9131ed8a" id="a8779f8a-3d61-4a97-bfb4-35029175ec97" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" name="In"/>
        <port xsi:type="esdl:OutPort" id="fd562e07-a60c-4f5c-9084-d51e736ff545" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" connectedTo="a89b5045-f815-4126-a4c8-dc125a99c0f8 b9af6540-8cae-41ce-b0c3-4528e027d3b3" name="Out"/>
      </asset>
      <asset xsi:type="esdl:Pipe" outerDiameter="0.09" diameter="DN80" related="Pipe1_ret" length="1533.2" name="Pipe1" id="Pipe1" innerDiameter="0.08">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lon="4.401419162750245" lat="52.01909093233181"/>
          <point xsi:type="esdl:Point" lon="4.391613006591798" lat="52.01563438289948"/>
          <point xsi:type="esdl:Point" lon="4.396162033081056" lat="52.0094006941874"/>
        </geometry>
        <port xsi:type="esdl:InPort" connectedTo="fd562e07-a60c-4f5c-9084-d51e736ff545" id="a89b5045-f815-4126-a4c8-dc125a99c0f8" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" name="In">
          <profile xsi:type="esdl:InfluxDBProfile" field="mass_flow" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="251f1551-7015-4b46-9d4c-c1b4cc38c7e2" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="GRAM" multiplier="KILO" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="pressure" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="db0660fa-c6c4-4f4b-833e-02628198df70" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PASCAL" physicalQuantity="PRESSURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="temperature" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="b2609de9-4baa-47b3-a1dd-7c67c4a9289f" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="KELVIN" physicalQuantity="TEMPERATURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="volume_flow" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="d6886900-44a1-4e3f-b544-44e7f1a45c4e" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="CUBIC_METRE" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="velocity" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="f54be570-9b95-4985-8e17-b1c2aa34ec57" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="METRE" perTimeUnit="SECOND" physicalQuantity="SPEED"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" id="88b6c35c-7eeb-42e9-ba4e-491fa6c7a6fc" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" connectedTo="69464799-3ec3-4928-a5da-6158a6237c76" name="Out">
          <profile xsi:type="esdl:InfluxDBProfile" field="mass_flow" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="dabe4f91-a307-4431-8297-4ec894e8f698" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="GRAM" multiplier="KILO" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="pressure" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="a813cfe5-7733-483e-b8bd-06f8e44567e2" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PASCAL" physicalQuantity="PRESSURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="temperature" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="42d53fa9-d94d-4d25-8f77-f969d99816c8" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="KELVIN" physicalQuantity="TEMPERATURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="volume_flow" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="816d201a-6335-4c50-81b9-4d07db355f3f" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="CUBIC_METRE" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="velocity" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="3e11532e-fc65-49fc-8a70-f035e3ecb388" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="METRE" perTimeUnit="SECOND" physicalQuantity="SPEED"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="pressure_loss" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="6f15bff6-e28c-4873-988e-85614afd09bd" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PASCAL" physicalQuantity="PRESSURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="pressure_loss_per_length" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="b7086867-8251-485a-84ea-84aa4ffced38" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PASCAL" physicalQuantity="PRESSURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="heat_loss" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="85aa9e24-5c32-4660-884b-5466f7e1ea4a" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="WATT" physicalQuantity="POWER"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Pipe" outerDiameter="0.21" diameter="DN200" related="Pipe2_ret" length="44.4" name="Pipe2" id="Pipe2" innerDiameter="0.2">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lon="4.401097297668458" lat="52.019437562955694"/>
          <point xsi:type="esdl:Point" lon="4.401419162750245" lat="52.01909093233181"/>
        </geometry>
        <port xsi:type="esdl:InPort" connectedTo="7dde77c4-a956-4496-b8b9-e714317cc0f2" id="30f746ff-aca7-4e55-946e-3dcaf2ac7569" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" name="In">
          <profile xsi:type="esdl:InfluxDBProfile" field="mass_flow" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="5d363a19-090d-4ded-8936-3936891c5433" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="GRAM" multiplier="KILO" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="pressure" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="4aa0d1b0-96ca-46b0-b1a9-24a348f5cb61" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PASCAL" physicalQuantity="PRESSURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="temperature" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="248908eb-71ab-45e5-9f80-b74b656c5a0b" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="KELVIN" physicalQuantity="TEMPERATURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="volume_flow" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="45e3f1a2-1f06-4910-9ceb-f4e67ff31dfc" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="CUBIC_METRE" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="velocity" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="ed2d267d-b05d-4e8d-a949-a18e1e114dec" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="METRE" perTimeUnit="SECOND" physicalQuantity="SPEED"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" id="7c178a7c-f6cb-4f33-8c4a-076d9131ed8a" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" connectedTo="a8779f8a-3d61-4a97-bfb4-35029175ec97" name="Out">
          <profile xsi:type="esdl:InfluxDBProfile" field="mass_flow" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="7b7fd43a-2edc-472a-b2a2-3aa1da0fc7e2" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="GRAM" multiplier="KILO" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="pressure" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="c26298b5-50d6-4c13-ab61-72cba823e7fe" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PASCAL" physicalQuantity="PRESSURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="temperature" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="848338ea-3168-4f81-b4de-d491d688e04d" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="KELVIN" physicalQuantity="TEMPERATURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="volume_flow" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="2012d9c5-a0be-4c15-aaaa-1cc48bb18e75" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="CUBIC_METRE" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="velocity" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="70d8d9f6-2e88-444b-9d69-832adfca458d" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="METRE" perTimeUnit="SECOND" physicalQuantity="SPEED"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="pressure_loss" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="4db83f27-73f4-4d65-b1b4-97614e845812" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PASCAL" physicalQuantity="PRESSURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="pressure_loss_per_length" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="4388ab99-6ad8-4249-aae3-6480c9f02cf7" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PASCAL" physicalQuantity="PRESSURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="heat_loss" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="62d227a1-5417-48bf-98dd-f1e8c79b6354" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="WATT" physicalQuantity="POWER"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Joint" name="Joint_91b0" id="91b0e057-84cd-4db3-8d2d-cae02077cbaf">
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="4.422471821308137" lat="52.02578372981452"/>
        <port xsi:type="esdl:InPort" connectedTo="607e9ed3-3e2e-4c08-bffe-0d713420cce7" id="6829cf4d-0dd9-43ac-8581-87b9998ca5bc" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" name="In"/>
        <port xsi:type="esdl:OutPort" id="416291d2-c5f7-4a87-919a-655924b90eb2" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" connectedTo="e3b7d0a5-e7d7-4cb2-8a33-e56d2077616b 758212e1-ab7f-44b1-a203-6ed42eb3c6bc" name="Out"/>
      </asset>
      <asset xsi:type="esdl:Pipe" outerDiameter="0.11" diameter="DN100" related="Pipe3_ret" length="1157.3" name="Pipe3" id="Pipe3" innerDiameter="0.1">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lon="4.422471821308137" lat="52.02578372981452"/>
          <point xsi:type="esdl:Point" lon="4.425044059753419" lat="52.02318760445455"/>
          <point xsi:type="esdl:Point" lon="4.4269752502441415" lat="52.02034869350056"/>
          <point xsi:type="esdl:Point" lon="4.428133964538575" lat="52.018381156483095"/>
          <point xsi:type="esdl:Point" lon="4.431524276733399" lat="52.01906782352804"/>
        </geometry>
        <port xsi:type="esdl:InPort" connectedTo="416291d2-c5f7-4a87-919a-655924b90eb2" id="e3b7d0a5-e7d7-4cb2-8a33-e56d2077616b" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" name="In">
          <profile xsi:type="esdl:InfluxDBProfile" field="mass_flow" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="222e86f4-6309-470c-85c6-627c52321540" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="GRAM" multiplier="KILO" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="pressure" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="a60110d2-2511-4c44-adfa-8e00ee491797" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PASCAL" physicalQuantity="PRESSURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="temperature" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="76d6950f-759d-4cc6-8f88-978340daa41e" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="KELVIN" physicalQuantity="TEMPERATURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="volume_flow" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="1f858eb9-1929-460d-9f94-6783eaa46fb9" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="CUBIC_METRE" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="velocity" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="e3f328be-f915-4a4e-ad5c-5b1fc56980e9" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="METRE" perTimeUnit="SECOND" physicalQuantity="SPEED"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" id="9e1c58ab-ec19-4964-928f-d2a582af6ce8" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" connectedTo="c3eb59bc-037d-4684-918e-df0f54af5b3d" name="Out">
          <profile xsi:type="esdl:InfluxDBProfile" field="mass_flow" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="c0679109-5cf4-4317-bd6a-314c83a7d9c0" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="GRAM" multiplier="KILO" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="pressure" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="2d26d81d-1fcc-4fd9-a889-32ac6168773f" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PASCAL" physicalQuantity="PRESSURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="temperature" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="b55abc99-cfa4-436a-a204-2e36b1649c2c" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="KELVIN" physicalQuantity="TEMPERATURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="volume_flow" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="d874fd05-916a-4906-b261-5e69178acd00" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="CUBIC_METRE" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="velocity" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="16496d4c-9229-43b8-94c3-36f45c45ee2d" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="METRE" perTimeUnit="SECOND" physicalQuantity="SPEED"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="pressure_loss" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="b3d190d3-0084-421c-97a0-9e368ba6bdf6" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PASCAL" physicalQuantity="PRESSURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="pressure_loss_per_length" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="de2b5f6c-7cc9-492c-b72b-f2eb8fd1bf19" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PASCAL" physicalQuantity="PRESSURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="heat_loss" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="a67a8723-8d4a-4399-89e2-0467821e3c9c" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="WATT" physicalQuantity="POWER"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Pipe" outerDiameter="0.11" diameter="DN100" related="Pipe4_ret" length="2982.2" name="Pipe4" id="Pipe4" innerDiameter="0.1">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lon="4.422471821308137" lat="52.02578372981452"/>
          <point xsi:type="esdl:Point" lon="4.419465065002442" lat="52.030501921460775"/>
          <point xsi:type="esdl:Point" lon="4.416353702545167" lat="52.033379790423076"/>
          <point xsi:type="esdl:Point" lon="4.408607482910157" lat="52.035940674013524"/>
          <point xsi:type="esdl:Point" lon="4.405066967010499" lat="52.03683826859462"/>
          <point xsi:type="esdl:Point" lon="4.400925636291505" lat="52.03810543026395"/>
          <point xsi:type="esdl:Point" lon="4.393007755279542" lat="52.04211787192499"/>
          <point xsi:type="esdl:Point" lon="4.391098022460938" lat="52.04283057060157"/>
        </geometry>
        <port xsi:type="esdl:InPort" connectedTo="416291d2-c5f7-4a87-919a-655924b90eb2" id="758212e1-ab7f-44b1-a203-6ed42eb3c6bc" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" name="In">
          <profile xsi:type="esdl:InfluxDBProfile" field="mass_flow" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="33a370a8-6433-42ef-a8b1-b2fc186045a8" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="GRAM" multiplier="KILO" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="pressure" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="a4cf23db-6972-47b1-a760-700544cb7438" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PASCAL" physicalQuantity="PRESSURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="temperature" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="21a867c9-f226-41b5-a72b-9e1d75809f2e" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="KELVIN" physicalQuantity="TEMPERATURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="volume_flow" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="10a61392-7f59-433e-bda0-1073a8c1132e" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="CUBIC_METRE" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="velocity" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="8de5ee0c-0785-4c43-b782-545bc4b71182" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="METRE" perTimeUnit="SECOND" physicalQuantity="SPEED"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" id="22be2ae1-10c0-42eb-abd9-6b115b800283" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" connectedTo="ad377fa7-710f-45e7-9144-1521bef5c1ab" name="Out">
          <profile xsi:type="esdl:InfluxDBProfile" field="mass_flow" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="76589851-d775-46df-963b-6349c9908a4f" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="GRAM" multiplier="KILO" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="pressure" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="c4c9b018-5229-46df-bb9d-fb167b79a94c" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PASCAL" physicalQuantity="PRESSURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="temperature" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="4a6f5ac9-8ba4-45bb-ab8d-120924c115c8" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="KELVIN" physicalQuantity="TEMPERATURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="volume_flow" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="1eb70a05-4af0-4a49-a9b9-7931a20a0b63" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="CUBIC_METRE" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="velocity" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="4371ca48-3798-48e3-b476-4f0ba1d468c3" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="METRE" perTimeUnit="SECOND" physicalQuantity="SPEED"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="pressure_loss" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="3e588294-0b4c-4886-b372-53a5a899fd2c" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PASCAL" physicalQuantity="PRESSURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="pressure_loss_per_length" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="6b7ee382-4c70-4e3b-81d3-de9dbb0a3edd" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PASCAL" physicalQuantity="PRESSURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="heat_loss" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="635873dc-86cd-4d01-be79-d93dbe50894c" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="WATT" physicalQuantity="POWER"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Joint" name="Joint_1126_ret" id="c6fec31e-2c4a-423d-937c-7fc28ea81a21">
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="4.400719145015912" lat="52.019180932421804"/>
        <port xsi:type="esdl:InPort" connectedTo="b4a30d86-df7a-4136-9170-55087818800d 35ff6c51-ecdc-419c-9e67-8dbbf4ccaa42" id="c06f582d-1922-47e3-ae04-a740b28353e3" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" name="ret_port"/>
        <port xsi:type="esdl:OutPort" id="39c08ebb-b7d8-4a85-a226-800c225a8a61" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" connectedTo="fb153d7c-2dc3-4f53-bbee-f0060efef1c7" name="ret_port"/>
      </asset>
      <asset xsi:type="esdl:Joint" name="Joint_91b0_ret" id="b7a46b09-779f-4a57-b73e-ab707ec65842">
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="4.421796245126029" lat="52.02587372990452"/>
        <port xsi:type="esdl:InPort" connectedTo="002a5802-e55b-4025-abe9-8d508cfdd78c 0c142bfb-4b38-44aa-b88f-71da247525ef" id="9a5c2e7e-e970-4561-8538-9a4000dee416" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" name="ret_port"/>
        <port xsi:type="esdl:OutPort" id="3383078a-72da-4af1-badf-686f43c73018" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" connectedTo="bbb482fa-f98e-4219-ab7e-d8684b0b4e66" name="ret_port"/>
      </asset>
      <asset xsi:type="esdl:Pipe" outerDiameter="0.09" diameter="DN80" related="Pipe1" length="1533.2" name="Pipe1_ret" id="Pipe1_ret" innerDiameter="0.08">
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" CRS="WGS84" lon="4.3954232586139" lat="52.009490694277396"/>
          <point xsi:type="esdl:Point" CRS="WGS84" lon="4.3908996472617385" lat="52.015724382989475"/>
          <point xsi:type="esdl:Point" CRS="WGS84" lon="4.400719145015912" lat="52.019180932421804"/>
        </geometry>
        <port xsi:type="esdl:InPort" connectedTo="c8625b7f-e9ad-4327-899e-0c6e91e873cb" id="1467bee7-ed90-49d5-8395-3595408ad1ee" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" name="In_ret">
          <profile xsi:type="esdl:InfluxDBProfile" field="mass_flow" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="ff87a3d1-e73a-4453-9252-7ad043aba6b1" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="GRAM" multiplier="KILO" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="pressure" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="d3172fb9-2f3b-4efd-b191-758565e32c5e" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PASCAL" physicalQuantity="PRESSURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="temperature" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="0b646256-cb04-4374-a651-08759d54a578" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="KELVIN" physicalQuantity="TEMPERATURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="volume_flow" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="87ef5adb-b6d8-44b0-bafb-a029b09511d1" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="CUBIC_METRE" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="velocity" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="762cbfc9-25e0-4244-b273-59ae09a8bcca" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="METRE" perTimeUnit="SECOND" physicalQuantity="SPEED"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" id="b4a30d86-df7a-4136-9170-55087818800d" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" connectedTo="c06f582d-1922-47e3-ae04-a740b28353e3" name="Out_ret">
          <profile xsi:type="esdl:InfluxDBProfile" field="mass_flow" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="56d0dcc8-cdc6-4b73-a5de-8a49418167f7" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="GRAM" multiplier="KILO" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="pressure" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="3c4255a5-d37d-4230-b3eb-d6d55bf8404e" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PASCAL" physicalQuantity="PRESSURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="temperature" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="c71a3334-ffc8-483b-af31-7990081de550" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="KELVIN" physicalQuantity="TEMPERATURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="volume_flow" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="80560f17-63c5-4f5a-8303-3a38019257d2" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="CUBIC_METRE" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="velocity" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="2a432d54-6a79-4b5a-960f-bedb0a11bd34" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="METRE" perTimeUnit="SECOND" physicalQuantity="SPEED"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="pressure_loss" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="7dbe4d74-20d9-4df0-8e9c-34c57b03c447" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PASCAL" physicalQuantity="PRESSURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="pressure_loss_per_length" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="3736e38a-0387-45d1-a655-393139c70b1c" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PASCAL" physicalQuantity="PRESSURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="heat_loss" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="2ae55b00-7947-4ed4-a4dc-75522856a699" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="WATT" physicalQuantity="POWER"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Pipe" outerDiameter="0.21" diameter="DN200" related="Pipe2" length="44.4" name="Pipe2_ret" id="Pipe2_ret" innerDiameter="0.2">
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" CRS="WGS84" lon="4.400719145015912" lat="52.019180932421804"/>
          <point xsi:type="esdl:Point" CRS="WGS84" lon="4.400398589922203" lat="52.01952756304569"/>
        </geometry>
        <port xsi:type="esdl:InPort" connectedTo="39c08ebb-b7d8-4a85-a226-800c225a8a61" id="fb153d7c-2dc3-4f53-bbee-f0060efef1c7" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" name="In_ret">
          <profile xsi:type="esdl:InfluxDBProfile" field="mass_flow" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="871454fe-dc74-4fb7-9963-d9da349e8932" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="GRAM" multiplier="KILO" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="pressure" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="a82bbcd8-0ba1-4f7b-b580-f67eb723de5b" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PASCAL" physicalQuantity="PRESSURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="temperature" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="5c06c810-a574-4d08-8f72-167ae09b9647" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="KELVIN" physicalQuantity="TEMPERATURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="volume_flow" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="3a506cf0-75a3-4945-a7a1-7b1c9fc906f7" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="CUBIC_METRE" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="velocity" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="baae2cba-c6a6-4c30-85e0-943b39b346e5" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="METRE" perTimeUnit="SECOND" physicalQuantity="SPEED"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" id="095f2c36-395f-4183-a760-80d5362e1de3" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" connectedTo="f8113571-6167-4850-b558-f97f39a0a3f3" name="Out_ret">
          <profile xsi:type="esdl:InfluxDBProfile" field="mass_flow" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="68da869c-7a3a-422e-9a4e-af273f2557bc" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="GRAM" multiplier="KILO" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="pressure" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="463e8201-b4ad-47d2-bf29-c9013c53fd6d" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PASCAL" physicalQuantity="PRESSURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="temperature" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="45918986-4945-4bc6-8cdc-d85470d4d37e" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="KELVIN" physicalQuantity="TEMPERATURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="volume_flow" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="81ad2108-223b-4fda-83ef-972bbef1ace4" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="CUBIC_METRE" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="velocity" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="2bc31447-a5ce-4749-9a3d-d5ed0e4f52bd" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="METRE" perTimeUnit="SECOND" physicalQuantity="SPEED"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="pressure_loss" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="90bdbc84-2d3f-423d-8398-e9f020faaa59" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PASCAL" physicalQuantity="PRESSURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="pressure_loss_per_length" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="63805663-5abb-435a-ad0b-0921aaf58a68" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PASCAL" physicalQuantity="PRESSURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="heat_loss" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="ddd43271-6bb9-4aaf-831e-bed1ed7fa5ef" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="WATT" physicalQuantity="POWER"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Pipe" outerDiameter="0.11" diameter="DN100" related="Pipe3" length="1157.3" name="Pipe3_ret" id="Pipe3_ret" innerDiameter="0.1">
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" CRS="WGS84" lon="4.4308241714884975" lat="52.01915782361804"/>
          <point xsi:type="esdl:Point" CRS="WGS84" lon="4.427431248765651" lat="52.01847115657309"/>
          <point xsi:type="esdl:Point" CRS="WGS84" lon="4.426279962182911" lat="52.020438693590556"/>
          <point xsi:type="esdl:Point" CRS="WGS84" lon="4.42435921177036" lat="52.023277604544546"/>
          <point xsi:type="esdl:Point" CRS="WGS84" lon="4.421796245126029" lat="52.02587372990452"/>
        </geometry>
        <port xsi:type="esdl:InPort" connectedTo="fcf96c55-8264-41a5-90ee-0977a394a46a" id="99628a79-e31c-4a99-bf4a-2f788a5d5343" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" name="In_ret">
          <profile xsi:type="esdl:InfluxDBProfile" field="mass_flow" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="7b73cb6f-f5ce-4eff-9409-7fa4b1da23b3" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="GRAM" multiplier="KILO" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="pressure" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="ab22a047-9c2d-4de9-9b51-4b64485405b8" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PASCAL" physicalQuantity="PRESSURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="temperature" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="0eb94109-2aa8-4438-9271-419bee5598c8" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="KELVIN" physicalQuantity="TEMPERATURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="volume_flow" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="dbc2fa57-2e21-4f20-8f94-f843d99edf9c" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="CUBIC_METRE" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="velocity" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="a277b75e-6bf0-4d7b-90d8-297d968428f2" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="METRE" perTimeUnit="SECOND" physicalQuantity="SPEED"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" id="002a5802-e55b-4025-abe9-8d508cfdd78c" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" connectedTo="9a5c2e7e-e970-4561-8538-9a4000dee416" name="Out_ret">
          <profile xsi:type="esdl:InfluxDBProfile" field="mass_flow" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="329098dd-a4cb-48c6-a0e2-daff6841706e" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="GRAM" multiplier="KILO" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="pressure" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="ad98f85a-ec0f-40e3-8cf6-eb9f33c5d4d3" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PASCAL" physicalQuantity="PRESSURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="temperature" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="e031d3b5-78a7-4674-8813-8e3be9b7dab7" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="KELVIN" physicalQuantity="TEMPERATURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="volume_flow" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="b75ab678-4c57-4cef-9568-890f4000c77c" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="CUBIC_METRE" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="velocity" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="0ef870a2-a632-470d-aa85-7cbd7fc78af3" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="METRE" perTimeUnit="SECOND" physicalQuantity="SPEED"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="pressure_loss" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="6310d021-601f-4366-8a18-8bfcb0539c09" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PASCAL" physicalQuantity="PRESSURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="pressure_loss_per_length" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="26f8d41a-6d06-40b6-9849-39ba2ec20a8f" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PASCAL" physicalQuantity="PRESSURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="heat_loss" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="b89bf96c-ddb4-48ea-87aa-00412a56f618" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="WATT" physicalQuantity="POWER"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Pipe" outerDiameter="0.11" diameter="DN100" related="Pipe4" length="2982.2" name="Pipe4_ret" id="Pipe4_ret" innerDiameter="0.1">
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" CRS="WGS84" lon="4.390477502296783" lat="52.04292057069157"/>
          <point xsi:type="esdl:Point" CRS="WGS84" lon="4.392385117209615" lat="52.042207872014984"/>
          <point xsi:type="esdl:Point" CRS="WGS84" lon="4.400290793359585" lat="52.038195430353944"/>
          <point xsi:type="esdl:Point" CRS="WGS84" lon="4.404428167491401" lat="52.03692826868462"/>
          <point xsi:type="esdl:Point" CRS="WGS84" lon="4.407965850141681" lat="52.03603067410352"/>
          <point xsi:type="esdl:Point" CRS="WGS84" lon="4.41570384355307" lat="52.033469790513074"/>
          <point xsi:type="esdl:Point" CRS="WGS84" lon="4.418805700922162" lat="52.03059192155077"/>
          <point xsi:type="esdl:Point" CRS="WGS84" lon="4.421796245126029" lat="52.02587372990452"/>
        </geometry>
        <port xsi:type="esdl:InPort" connectedTo="f46090b9-dcd6-433f-b021-061c839e634c" id="fdbab763-3e05-49d6-9271-207035c14bcb" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" name="In_ret">
          <profile xsi:type="esdl:InfluxDBProfile" field="mass_flow" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="68a89b1f-278e-4601-8c34-0086776be366" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="GRAM" multiplier="KILO" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="pressure" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="1127b23d-6726-4fbe-9e45-a0a87bccd8d9" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PASCAL" physicalQuantity="PRESSURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="temperature" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="b3bed058-cadf-4a27-ae19-aa9f34185622" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="KELVIN" physicalQuantity="TEMPERATURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="volume_flow" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="af0c8362-314d-4c37-b43f-d2387b7deee2" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="CUBIC_METRE" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="velocity" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="76f5e123-56df-4c3e-ab6e-b7aaa507de9e" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="METRE" perTimeUnit="SECOND" physicalQuantity="SPEED"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" id="0c142bfb-4b38-44aa-b88f-71da247525ef" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" connectedTo="9a5c2e7e-e970-4561-8538-9a4000dee416" name="Out_ret">
          <profile xsi:type="esdl:InfluxDBProfile" field="mass_flow" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="73201437-9c7c-4c56-9099-17cb47a17cd8" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="GRAM" multiplier="KILO" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="pressure" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="ef8920ef-0123-481b-be29-3b46084ce97b" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PASCAL" physicalQuantity="PRESSURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="temperature" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="f1036a90-c6c3-4244-95b9-507b06f61886" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="KELVIN" physicalQuantity="TEMPERATURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="volume_flow" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="a6fc5ea4-9845-473c-86ac-87e8e23a8fa2" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="CUBIC_METRE" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="velocity" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="b61f4c36-e4ea-43b8-b16b-cb89730b039e" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="METRE" perTimeUnit="SECOND" physicalQuantity="SPEED"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="pressure_loss" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="14f98695-a2b9-406b-8243-8863586b94a4" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PASCAL" physicalQuantity="PRESSURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="pressure_loss_per_length" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="4556da1c-5104-49aa-82c9-702b8e38da51" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PASCAL" physicalQuantity="PRESSURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="heat_loss" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="7b4d97a0-7029-4f7a-be00-6fe513a8e1cb" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="WATT" physicalQuantity="POWER"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Pipe" outerDiameter="0.16" diameter="DN150" length="625.29" name="Pipe5_a" id="2b5ba02c-bbfe-4bb9-9e4e-48c4c45c53e9" innerDiameter="0.15">
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" lon="4.401419162750245" lat="52.01909093233181"/>
          <point xsi:type="esdl:Point" lon="4.408371448516847" lat="52.02149748382286"/>
          <point xsi:type="esdl:Point" lon="4.409401416778565" lat="52.021827590527295"/>
        </geometry>
        <port xsi:type="esdl:InPort" connectedTo="fd562e07-a60c-4f5c-9084-d51e736ff545" id="b9af6540-8cae-41ce-b0c3-4528e027d3b3" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" name="In">
          <profile xsi:type="esdl:InfluxDBProfile" field="mass_flow" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="e29495e3-6fe3-423b-8483-5857d96c1405" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="GRAM" multiplier="KILO" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="pressure" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="58cb722e-ae9b-49d5-bb2f-43bf174f54dd" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PASCAL" physicalQuantity="PRESSURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="temperature" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="92f3a492-910b-4be3-8b5e-c0fb7d32849e" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="KELVIN" physicalQuantity="TEMPERATURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="volume_flow" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="2388b2ea-b19e-46ee-83f6-1c545902474f" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="CUBIC_METRE" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="velocity" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="5bc5923e-1e0a-405d-be61-fae378b252d9" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="METRE" perTimeUnit="SECOND" physicalQuantity="SPEED"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" id="37a4d419-e788-4ca7-a033-3a06c6872fdf" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" connectedTo="9b3744f2-f9f0-4e32-a118-e116154e1384" name="Out">
          <profile xsi:type="esdl:InfluxDBProfile" field="mass_flow" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="3fdc051b-d419-4a23-9e64-7efa244c6935" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="GRAM" multiplier="KILO" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="pressure" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="bd7a7949-e8ba-4b90-b4a8-5948bc136aa6" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PASCAL" physicalQuantity="PRESSURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="temperature" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="5abd26f3-b81c-4870-8b9d-1a578022b405" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="KELVIN" physicalQuantity="TEMPERATURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="volume_flow" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="0c4b5ee1-c75b-4549-9a5b-3e3cf0e3923c" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="CUBIC_METRE" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="velocity" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="69c525b8-bc20-46f0-a861-09c9e7977279" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="METRE" perTimeUnit="SECOND" physicalQuantity="SPEED"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="pressure_loss" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="c5b2931f-7eb1-4647-a92f-f77f7aa95218" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PASCAL" physicalQuantity="PRESSURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="pressure_loss_per_length" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="74c6b90d-6cae-4ebd-b5b6-cc33401f38bf" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PASCAL" physicalQuantity="PRESSURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="heat_loss" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="9fdb173f-8efa-4ef5-b3b3-7df304e7c616" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="WATT" physicalQuantity="POWER"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Pipe" outerDiameter="0.16" diameter="DN150" length="999.47" name="Pipe5_b" id="0f7eed4a-ac9a-4f38-9825-876e41e8c100" innerDiameter="0.15">
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" lon="4.409401416778565" lat="52.021827590527295"/>
          <point xsi:type="esdl:Point" lon="4.414680004119874" lat="52.0233064386584"/>
          <point xsi:type="esdl:Point" lon="4.419805705547334" lat="52.025085613014795"/>
          <point xsi:type="esdl:Point" lon="4.421594738960267" lat="52.02567150373549"/>
          <point xsi:type="esdl:Point" lon="4.422471821308137" lat="52.02578372981452"/>
        </geometry>
        <port xsi:type="esdl:InPort" connectedTo="3a52317d-827b-4dc4-a6df-1b145bbb1736" id="9a462e32-2e53-40ca-97eb-8394b6a3d131" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" name="In">
          <profile xsi:type="esdl:InfluxDBProfile" field="mass_flow" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="13862137-f072-4fd9-9c0f-0a66bc0fb881" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="GRAM" multiplier="KILO" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="pressure" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="49d1c9ec-08c7-48c2-8cf8-17053831a4e7" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PASCAL" physicalQuantity="PRESSURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="temperature" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="2be4a938-c439-48d1-ba6e-23748175c4ce" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="KELVIN" physicalQuantity="TEMPERATURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="volume_flow" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="13c87c4f-9872-4904-92fb-b73274f4e301" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="CUBIC_METRE" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="velocity" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="019ba400-a633-41b9-9947-dbf068e258cd" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="METRE" perTimeUnit="SECOND" physicalQuantity="SPEED"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" id="607e9ed3-3e2e-4c08-bffe-0d713420cce7" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" connectedTo="6829cf4d-0dd9-43ac-8581-87b9998ca5bc" name="Out">
          <profile xsi:type="esdl:InfluxDBProfile" field="mass_flow" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="e158e65d-9636-4f23-a4cb-8291f2972974" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="GRAM" multiplier="KILO" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="pressure" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="eb77d736-51a0-4d37-95d4-98ffc628ac05" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PASCAL" physicalQuantity="PRESSURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="temperature" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="2515e21c-0ab7-433f-9f8f-4a4d2d899fa1" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="KELVIN" physicalQuantity="TEMPERATURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="volume_flow" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="b1f62516-093d-41c2-91ea-8fa1ce8edc3b" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="CUBIC_METRE" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="velocity" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="8196d56b-9cdf-425b-8fcc-4efd7638e9c3" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="METRE" perTimeUnit="SECOND" physicalQuantity="SPEED"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="pressure_loss" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="448fda0e-b099-4711-9a32-251e0d15c730" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PASCAL" physicalQuantity="PRESSURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="pressure_loss_per_length" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="35c6c395-1a51-4a6a-b1d7-831ef17b53dd" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PASCAL" physicalQuantity="PRESSURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="heat_loss" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="25a691da-4703-4c94-b9aa-771870f75bc7" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="WATT" physicalQuantity="POWER"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Joint" name="Joint_086f" id="086f467d-afd5-4a87-aad2-0b03f185edef">
        <geometry xsi:type="esdl:Point" lon="4.409401416778565" lat="52.021827590527295"/>
        <port xsi:type="esdl:InPort" connectedTo="37a4d419-e788-4ca7-a033-3a06c6872fdf" id="9b3744f2-f9f0-4e32-a118-e116154e1384" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" name="In"/>
        <port xsi:type="esdl:OutPort" id="3a52317d-827b-4dc4-a6df-1b145bbb1736" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" connectedTo="9a462e32-2e53-40ca-97eb-8394b6a3d131 3874047c-96e8-4555-902a-8646daf3f984" name="Out"/>
      </asset>
      <asset xsi:type="esdl:Pipe" outerDiameter="0.16" diameter="DN150" length="993.35" name="Pipe5_ret_a" id="3a1d7c9a-18cd-4360-ae7f-74062a514317" innerDiameter="0.1">
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" lon="4.421796245126029" lat="52.02587372990452"/>
          <point xsi:type="esdl:Point" CRS="WGS84" lon="4.420918767262569" lat="52.025761503825485"/>
          <point xsi:type="esdl:Point" CRS="WGS84" lon="4.419127661327588" lat="52.02517561310479"/>
          <point xsi:type="esdl:Point" CRS="WGS84" lon="4.413995586196941" lat="52.0233964387484"/>
          <point xsi:type="esdl:Point" lon="4.4088220596313485" lat="52.021920019967986"/>
        </geometry>
        <port xsi:type="esdl:InPort" connectedTo="3383078a-72da-4af1-badf-686f43c73018" id="bbb482fa-f98e-4219-ab7e-d8684b0b4e66" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" name="In_ret">
          <profile xsi:type="esdl:InfluxDBProfile" field="mass_flow" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="b59cefdc-6422-43e3-b159-b1c37d68142f" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="GRAM" multiplier="KILO" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="pressure" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="6568f485-4ab3-4018-8ba2-cce5cfc98844" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PASCAL" physicalQuantity="PRESSURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="temperature" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="3afb9bf6-4eda-4dfe-9497-c223faf6464f" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="KELVIN" physicalQuantity="TEMPERATURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="volume_flow" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="b6323e5b-4399-4290-87df-3ed484180bfd" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="CUBIC_METRE" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="velocity" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="5370afe8-304b-4c04-aa06-7a09616efc63" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="METRE" perTimeUnit="SECOND" physicalQuantity="SPEED"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" id="23be2b8d-5f5a-471f-875f-b7e20997f7c5" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" connectedTo="027db45e-289d-4611-94ba-95d04abec30f" name="Out">
          <profile xsi:type="esdl:InfluxDBProfile" field="mass_flow" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="65eec700-5a92-4ad9-a47a-3ad90b7a258c" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="GRAM" multiplier="KILO" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="pressure" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="96ddc6d1-5c5b-4c0a-a05d-dc0f54f717e0" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PASCAL" physicalQuantity="PRESSURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="temperature" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="bc8dc72d-ab5c-4ddd-8891-3b7cdfa5b60c" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="KELVIN" physicalQuantity="TEMPERATURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="volume_flow" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="7f1cae94-dbf0-474b-b09e-59f766b4075f" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="CUBIC_METRE" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="velocity" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="e692a156-876f-4c68-8ef4-edf39ac3cd52" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="METRE" perTimeUnit="SECOND" physicalQuantity="SPEED"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="pressure_loss" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="a8a6de51-1538-4832-926e-1cce15ba904f" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PASCAL" physicalQuantity="PRESSURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="pressure_loss_per_length" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="fb929a73-b808-4fdc-876e-2fa5cb81ef57" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PASCAL" physicalQuantity="PRESSURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="heat_loss" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="7f8c5c7e-7509-4711-9335-206460406cca" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="WATT" physicalQuantity="POWER"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Pipe" outerDiameter="0.16" diameter="DN150" length="632.79" name="Pipe5_ret_b" id="92af5656-dbd3-4ddf-abaa-9ef47ea96333" innerDiameter="0.1">
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" lon="4.4088220596313485" lat="52.021920019967986"/>
          <point xsi:type="esdl:Point" CRS="WGS84" lon="4.4076804239030505" lat="52.02158748391286"/>
          <point xsi:type="esdl:Point" CRS="WGS84" lon="4.400719145015912" lat="52.019180932421804"/>
        </geometry>
        <port xsi:type="esdl:InPort" connectedTo="ba8ac663-b53c-400a-a838-206da20b63d7" id="fb200deb-6383-4e50-b041-9536046ee404" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" name="In">
          <profile xsi:type="esdl:InfluxDBProfile" field="mass_flow" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="d171244d-dac3-4c96-a11c-95ca300ab9bf" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="GRAM" multiplier="KILO" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="pressure" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="b7189a9b-d602-430b-98ec-41fa6efef9c7" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PASCAL" physicalQuantity="PRESSURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="temperature" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="6af46b4b-d727-4404-9bd3-b3aab42dc22e" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="KELVIN" physicalQuantity="TEMPERATURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="volume_flow" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="326a3fd4-7b36-4095-b810-64fd46e0ad9f" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="CUBIC_METRE" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="velocity" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="d2c06c03-c55f-4ca1-ada0-2f2418d67a35" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="METRE" perTimeUnit="SECOND" physicalQuantity="SPEED"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" id="35ff6c51-ecdc-419c-9e67-8dbbf4ccaa42" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" connectedTo="c06f582d-1922-47e3-ae04-a740b28353e3" name="Out_ret">
          <profile xsi:type="esdl:InfluxDBProfile" field="mass_flow" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="89c396a2-6eb3-485f-a9a7-922465c9b054" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="GRAM" multiplier="KILO" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="pressure" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="86b71fcb-5c78-475a-a5a8-1885f8809216" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PASCAL" physicalQuantity="PRESSURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="temperature" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="1d3dcb7f-40b4-4015-b4e9-2e0b26b09a21" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="KELVIN" physicalQuantity="TEMPERATURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="volume_flow" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="ec3ce16f-23ff-4ab9-977a-2a111430050f" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="CUBIC_METRE" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="velocity" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="a4faf0d5-09ea-45fc-b7fb-08ac04e5b5c4" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="METRE" perTimeUnit="SECOND" physicalQuantity="SPEED"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="pressure_loss" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="226ebea0-a8a4-439e-a836-014fcf63cf2d" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PASCAL" physicalQuantity="PRESSURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="pressure_loss_per_length" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="65265f4c-05e6-401a-9ca0-24cd9792665c" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PASCAL" physicalQuantity="PRESSURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="heat_loss" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="58f75d9d-cec9-4a78-8af7-4deff444e9b0" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="WATT" physicalQuantity="POWER"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Joint" name="Joint_526a" id="526a38b8-cf6c-407e-9a76-837d409fdf12">
        <geometry xsi:type="esdl:Point" lon="4.4088220596313485" lat="52.021920019967986"/>
        <port xsi:type="esdl:InPort" connectedTo="23be2b8d-5f5a-471f-875f-b7e20997f7c5 7ca06d72-bb1d-41ac-9a19-6306fb33e10e" id="027db45e-289d-4611-94ba-95d04abec30f" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" name="In"/>
        <port xsi:type="esdl:OutPort" id="ba8ac663-b53c-400a-a838-206da20b63d7" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" connectedTo="fb200deb-6383-4e50-b041-9536046ee404" name="Out"/>
      </asset>
      <asset xsi:type="esdl:Pipe" diameter="DN150" length="599.3" name="Pipe_ates" id="fa07b73b-0ec7-4a6d-bbd5-60b5fdf09d92">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lon="4.409401416778565" lat="52.021827590527295"/>
          <point xsi:type="esdl:Point" lon="4.4050025939941415" lat="52.02648843713918"/>
        </geometry>
        <port xsi:type="esdl:InPort" connectedTo="3a52317d-827b-4dc4-a6df-1b145bbb1736" id="3874047c-96e8-4555-902a-8646daf3f984" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" name="In">
          <profile xsi:type="esdl:InfluxDBProfile" field="mass_flow" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="15808bee-4066-41ca-af3c-748ce1477373" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="GRAM" multiplier="KILO" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="pressure" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="85bdd45d-9e17-403b-8da0-00415cf4abef" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PASCAL" physicalQuantity="PRESSURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="temperature" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="900878e1-7801-40ee-834f-cb8c60c93fdb" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="KELVIN" physicalQuantity="TEMPERATURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="volume_flow" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="fcfa276a-b9de-47e9-b17d-430062cd5922" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="CUBIC_METRE" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="velocity" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="a75f662c-0eab-40a8-a9f0-86f95d3ba37d" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="METRE" perTimeUnit="SECOND" physicalQuantity="SPEED"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" id="b94d1e9b-5377-4016-9bb3-4452effb5a20" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" connectedTo="e14c67db-96c3-4fc9-aed2-4fe0f84a34d3" name="Out">
          <profile xsi:type="esdl:InfluxDBProfile" field="mass_flow" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="880081d2-fc0f-45c2-8bb0-2f6d3ee0fea0" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="GRAM" multiplier="KILO" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="pressure" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="3869c117-c075-4cae-bb4d-8e782ea174d7" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PASCAL" physicalQuantity="PRESSURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="temperature" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="df171a20-09a2-44c5-a62a-4c8f19b03251" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="KELVIN" physicalQuantity="TEMPERATURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="volume_flow" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="d1fda475-682d-42be-9f96-8fbeee39ecde" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="CUBIC_METRE" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="velocity" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="ff624dc1-bd4d-4b45-abc6-3d5f0c1b5dd8" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="METRE" perTimeUnit="SECOND" physicalQuantity="SPEED"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="pressure_loss" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="8675e021-9584-4fd6-83b4-f1098eb367b0" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PASCAL" physicalQuantity="PRESSURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="pressure_loss_per_length" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="23155ef6-042d-40ea-9902-127aac3f739c" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PASCAL" physicalQuantity="PRESSURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="heat_loss" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="b37ae0c8-1623-49e2-9882-e1795bd8379a" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="WATT" physicalQuantity="POWER"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Pipe" diameter="DN150" length="549.0" name="Pipe_ates_ret" id="1f1a7ed1-c6fe-4afe-a39c-77803b8aed2f">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lon="4.404745101928712" lat="52.02633000273639"/>
          <point xsi:type="esdl:Point" lon="4.408714771270753" lat="52.02203885753961"/>
        </geometry>
        <port xsi:type="esdl:InPort" connectedTo="07a302f6-4e5b-40ef-87e3-c908a993dfe4" id="9a58c5ba-1ac1-48cb-b583-5c568190ae3c" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" name="In">
          <profile xsi:type="esdl:InfluxDBProfile" field="mass_flow" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="8a506972-5680-4f72-9195-15e49cc6ed7a" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="GRAM" multiplier="KILO" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="pressure" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="a5a69e81-54fa-484f-9100-fab65fc23628" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PASCAL" physicalQuantity="PRESSURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="temperature" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="42905bb0-3e79-42d5-8bd8-7489bc7901ae" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="KELVIN" physicalQuantity="TEMPERATURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="volume_flow" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="de145c42-96ad-420f-bc8c-85af7a4c9692" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="CUBIC_METRE" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="velocity" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="ec8a5c48-ee72-423c-ad5b-f0691059eec9" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="METRE" perTimeUnit="SECOND" physicalQuantity="SPEED"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" id="7ca06d72-bb1d-41ac-9a19-6306fb33e10e" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" connectedTo="027db45e-289d-4611-94ba-95d04abec30f" name="Out">
          <profile xsi:type="esdl:InfluxDBProfile" field="mass_flow" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="8ff138ea-0111-421c-8e33-2027cf5a10b1" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="GRAM" multiplier="KILO" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="pressure" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="8a445fcd-2e20-4a45-bc31-b6c9f8fe5d3e" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PASCAL" physicalQuantity="PRESSURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="temperature" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="58c14a59-e7c4-4114-b8fe-6988bf3f9881" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="KELVIN" physicalQuantity="TEMPERATURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="volume_flow" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="c0e95964-1d46-4247-a12f-e3ef8dc1c218" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="CUBIC_METRE" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="velocity" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="7ce7b9b9-13ff-408d-ac18-d312591c6cc6" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="METRE" perTimeUnit="SECOND" physicalQuantity="SPEED"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="pressure_loss" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="626ad554-c129-456a-b088-2108455e622f" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PASCAL" physicalQuantity="PRESSURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="pressure_loss_per_length" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="ddb5f2f3-9732-4f98-bf22-0233552630a4" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PASCAL" physicalQuantity="PRESSURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="heat_loss" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="ebce78c6-62f5-4d17-9b4f-c49a05c6909c" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="WATT" physicalQuantity="POWER"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:ATES" aquiferPermeability="10000.0" aquiferNetToGross="1.0" maxChargeRate="11610000.0" salinity="10000.0" aquiferMidTemperature="17.0" name="ATES_4d6d" wellDistance="150.0" aquiferAnisotropy="4.0" aquiferTopDepth="300.0" aquiferThickness="45.0" maxDischargeRate="11610000.0" aquiferPorosity="0.3" wellCasingSize="13.0" id="4d6dfb40-ea51-4176-a27e-4ee60cad4034">
        <costInformation xsi:type="esdl:CostInformation">
          <variableOperationalCosts xsi:type="esdl:SingleValue" value="69666.67">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="3c9f580e-b71a-4bc8-8cea-cb6788c0bf49" unit="EURO" description="Cost in EUR/yr" perTimeUnit="YEAR"/>
          </variableOperationalCosts>
          <investmentCosts xsi:type="esdl:SingleValue" value="2333594.0">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="a3b5cdd9-364b-4262-bce5-4658c5f1bac9" unit="EURO" description="Cost in EUR"/>
          </investmentCosts>
          <fixedOperationalCosts xsi:type="esdl:SingleValue" value="30000.0">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="574ef21d-681a-43ae-a1cb-f7b25d88defb" unit="EURO" description="Cost in EUR/yr" perTimeUnit="YEAR"/>
          </fixedOperationalCosts>
          <fixedMaintenanceCosts xsi:type="esdl:SingleValue" value="115472.22">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="57537388-7fd7-40b3-a0c4-0ce65648eaab" unit="EURO" description="Cost in EUR/yr" perTimeUnit="YEAR"/>
          </fixedMaintenanceCosts>
        </costInformation>
        <dataSource xsi:type="esdl:DataSource" description="This data was generated using the 'kosten_per_asset.xslx' file in the 'Kentallen' directory of WarmingUp project 1D" name="WarmingUp factsheet: HT-ATES (high)" attribution=""/>
        <port xsi:type="esdl:InPort" connectedTo="b94d1e9b-5377-4016-9bb3-4452effb5a20" id="e14c67db-96c3-4fc9-aed2-4fe0f84a34d3" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" name="In">
          <profile xsi:type="esdl:InfluxDBProfile" field="demand4_MW" multiplier="5.0" measurement="WarmingUp default profiles" port="443" host="profiles.warmingup.info" startDate="2018-12-31T23:00:00.000000+0000" id="1e323c5f-f645-42bf-8631-b63b0a24c424" database="energy_profiles" endDate="2019-12-31T22:00:00.000000+0000" filters="">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="e9405fc8-5e57-4df5-8584-4babee7cdf1b"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="mass_flow" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="ce7b89c8-4fa4-452c-8a58-d594a9fe30fa" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="GRAM" multiplier="KILO" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="pressure" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="63e8e823-e0bb-45e8-ba2a-198f0c60321c" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PASCAL" physicalQuantity="PRESSURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="temperature" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="e6197cde-fbe5-48ec-9c8c-3056d7b1abfb" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="KELVIN" physicalQuantity="TEMPERATURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="volume_flow" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="cf83f2ed-b38a-4242-b4d4-ea7fa4fb486d" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="CUBIC_METRE" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" id="07a302f6-4e5b-40ef-87e3-c908a993dfe4" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" connectedTo="9a58c5ba-1ac1-48cb-b583-5c568190ae3c" name="Out">
          <profile xsi:type="esdl:InfluxDBProfile" field="mass_flow" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="0120a3b0-ec30-4f7c-aa22-5e84105e9f6c" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="GRAM" multiplier="KILO" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="pressure" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="42e90a96-c3f1-4f88-91a0-6d795e146d76" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PASCAL" physicalQuantity="PRESSURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="temperature" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="df14cd64-2bdc-4af5-beef-8921b9ad2471" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="KELVIN" physicalQuantity="TEMPERATURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="volume_flow" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="56ab895e-758f-4e03-920e-dab8be868815" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="CUBIC_METRE" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Point" lon="4.404745101928712" lat="52.026597360465495"/>
      </asset>
      <asset xsi:type="esdl:GenericProducer" name="GenericProducer_0375" power="100000000.0" id="0375b489-b57b-439d-9ce9-db2dc9d0bbb9">
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="4.40077438452907" lat="52.0197014548679"/>
        <port xsi:type="esdl:OutPort" id="7dde77c4-a956-4496-b8b9-e714317cc0f2" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" connectedTo="30f746ff-aca7-4e55-946e-3dcaf2ac7569" name="Out">
          <profile xsi:type="esdl:InfluxDBProfile" field="mass_flow" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="152a8adf-b44d-4b6f-a674-8bf541da9da2" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="GRAM" multiplier="KILO" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="pressure" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="7da1bc26-bcbd-417e-96b5-cf1eae16b69d" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PASCAL" physicalQuantity="PRESSURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="temperature" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="d22a47b5-1e12-41e7-8149-9359f91ebcdf" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="KELVIN" physicalQuantity="TEMPERATURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="volume_flow" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="4930fcb7-5a05-42cc-9353-ff67bac59321" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="CUBIC_METRE" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="heat_supply_set_point" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="2aa96cef-ec72-4713-aa18-6a2f1c9a55d4" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="WATT" physicalQuantity="POWER"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="heat_supplied" measurement="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="14290d32-10b8-476d-8779-0bf95a246c49" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="WATT" physicalQuantity="POWER"/>
          </profile>
        </port>
        <port xsi:type="esdl:InPort" connectedTo="095f2c36-395f-4183-a760-80d5362e1de3" id="f8113571-6167-4850-b558-f97f39a0a3f3" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" name="In">
          <profile xsi:type="esdl:InfluxDBProfile" field="mass_flow" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="3b3d45d1-574e-429b-9c75-c67e2e432600" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="GRAM" multiplier="KILO" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="pressure" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="af9613a8-d7da-487b-8353-2321cb13cbbd" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PASCAL" physicalQuantity="PRESSURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="temperature" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="88e586b9-924f-4942-a2e5-cdf1125407e9" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="KELVIN" physicalQuantity="TEMPERATURE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" field="volume_flow" measurement="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" port="8096" host="omotes_influxdb" startDate="2019-01-01T00:00:00.000000" id="ef5d12e0-0d6c-444a-9fcc-3a8153145c71" database="59d19226-68f5-43ee-847c-af701148f2cc" endDate="2019-01-01T02:00:00.000000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="CUBIC_METRE" perTimeUnit="SECOND" physicalQuantity="FLOW"/>
          </profile>
        </port>
      </asset>
    </area>
  </instance>
</esdl:EnergySystem>
