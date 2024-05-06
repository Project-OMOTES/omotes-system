<?xml version='1.0' encoding='UTF-8'?>
<esdl:EnergySystem xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:esdl="http://www.tno.nl/esdl" esdlVersion="v2207" name="Untitled EnergySystem with return network" id="10024c5d-73ea-44da-8f9a-2b1aa1bc82b1" description="" version="1">
  <energySystemInformation xsi:type="esdl:EnergySystemInformation" id="c615f17e-c077-48c4-8a78-6ae05f8a908f">
    <carriers xsi:type="esdl:Carriers" id="c27258b1-f4f6-4e09-a77a-ce466dbd82d2">
      <carrier xsi:type="esdl:HeatCommodity" supplyTemperature="80.0" id="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" name="HeatSupply"/>
      <carrier xsi:type="esdl:HeatCommodity" id="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" name="HeatReturn" returnTemperature="40.0"/>
    </carriers>
    <quantityAndUnits xsi:type="esdl:QuantityAndUnits" id="f61a1799-bf04-416a-b15e-93097722ada7">
      <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" description="Power in MW" multiplier="MEGA" id="e9405fc8-5e57-4df5-8584-4babee7cdf1b" unit="WATT" physicalQuantity="POWER"/>
    </quantityAndUnits>
  </energySystemInformation>
  <instance xsi:type="esdl:Instance" id="a357cbbe-f277-42b1-8456-cbbadc8ceb2e" name="Untitled Instance">
    <area xsi:type="esdl:Area" id="e4002c22-abd5-43f6-81a8-e6b5f960bfa5" name="Untitled Area">
      <asset xsi:type="esdl:HeatingDemand" name="HeatingDemand_48f3" id="48f3e425-2143-4dcd-9101-c7e22559e82b">
        <port xsi:type="esdl:InPort" connectedTo="3f2dc09a-0cee-44bd-a337-cea55461a334" name="In" id="af0904f7-ba1f-4e79-9040-71e08041601b" carrier="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a"/>
        <port xsi:type="esdl:OutPort" name="Out" carrier="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" id="e890f65f-80e7-46fa-8c52-5385324bf686" connectedTo="422cb921-23d2-4410-9072-aaa5796a0620">
          <profile xsi:type="esdl:InfluxDBProfile" field="Weezenhof (MW)" measurement="Nijmegen" filters="" id="62d7e2a4-9919-4fa2-90f4-29e8f188919f" host="profiles.warmingup.info" port="443" endDate="2019-12-31T23:00:00.000000+0000" startDate="2019-01-01T00:00:00.000000+0000" database="energy_profiles">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="e9405fc8-5e57-4df5-8584-4babee7cdf1b"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Point" lat="52.158769628869045" lon="4.63726043701172" CRS="WGS84"/>
      </asset>
      <asset xsi:type="esdl:GenericProducer" name="GenericProducer_cf3d" id="cf3d4b5e-437f-4c1b-a7f9-7fd7e8a269b4" power="5000000.0">
        <port xsi:type="esdl:OutPort" name="Out" carrier="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" id="2d818e3d-8a39-4cec-afa0-f6dbbfd50696" connectedTo="a9793a5e-df4f-4795-8079-015dfaf57f82"/>
        <port xsi:type="esdl:InPort" connectedTo="935fb733-9f76-4a8d-8899-1ad8689a4b12" name="In" id="9c258b9d-3149-4720-8931-f4bef1080ec1" carrier="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret"/>
        <geometry xsi:type="esdl:Point" lat="52.148869383489114" lon="4.558639526367188" CRS="WGS84"/>
      </asset>
      <asset xsi:type="esdl:Pipe" innerDiameter="0.5" name="Pipe1" id="Pipe1" related="Pipe1_ret" length="6267.0">
        <port xsi:type="esdl:InPort" connectedTo="2d818e3d-8a39-4cec-afa0-f6dbbfd50696" name="In" id="a9793a5e-df4f-4795-8079-015dfaf57f82" carrier="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a"/>
        <port xsi:type="esdl:OutPort" name="Out" carrier="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a" id="3f2dc09a-0cee-44bd-a337-cea55461a334" connectedTo="af0904f7-ba1f-4e79-9040-71e08041601b"/>
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.148869383489114" lon="4.558639526367188"/>
          <point xsi:type="esdl:Point" lat="52.16740421514521" lon="4.594688415527345"/>
          <point xsi:type="esdl:Point" lat="52.158769628869045" lon="4.63726043701172"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:Pipe" innerDiameter="0.5" name="Pipe1_ret" id="Pipe1_ret" related="Pipe1" length="6267.0">
        <port xsi:type="esdl:InPort" connectedTo="e890f65f-80e7-46fa-8c52-5385324bf686" name="In_ret" id="422cb921-23d2-4410-9072-aaa5796a0620" carrier="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret"/>
        <port xsi:type="esdl:OutPort" name="Out_ret" carrier="0bd9cb08-2f69-4e97-8ac8-bd87b07e466a_ret" id="935fb733-9f76-4a8d-8899-1ad8689a4b12" connectedTo="9c258b9d-3149-4720-8931-f4bef1080ec1"/>
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" lat="52.15885962895904" lon="4.636858896813017" CRS="WGS84"/>
          <point xsi:type="esdl:Point" lat="52.16749421523521" lon="4.5942969754153795" CRS="WGS84"/>
          <point xsi:type="esdl:Point" lat="52.14895938357911" lon="4.558225705568235" CRS="WGS84"/>
        </geometry>
      </asset>
    </area>
  </instance>
</esdl:EnergySystem>
