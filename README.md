# alvin-cora-docker-fedora
Docker container with Fedora Repository Software 3.8.1 and Alvin data

Documentation of Fedora's REST API: https://wiki.duraspace.org/display/FEDORA38/REST+API

Searching in Fedora
===================

**URL:**

    http://alvin-cora-fedora:8088/fedora/objects?pid=true&maxResults=100&resultFormat=xml&query=pid%7Ealvin-place:*
    
**Result:**

```xml
<?xml version="1.0" encoding="UTF-8"?>
<result xmlns="http://www.fedora.info/definitions/1/0/types/" xmlns:types="http://www.fedora.info/definitions/1/0/types/" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.fedora.info/definitions/1/0/types/ http://localhost:8088/fedora/schema/findObjects.xsd">
  <resultList>
  <objectFields>
      <pid>alvin-place:22</pid>
  </objectFields>
  <objectFields>
      <pid>alvin-place:24</pid>
  </objectFields>
  <objectFields>
      <pid>alvin-place:679</pid>
  </objectFields>
  <objectFields>
      <pid>alvin-place:692</pid>
  </objectFields>
  <objectFields>
      <pid>alvin-place:15</pid>
  </objectFields>
  <objectFields>
      <pid>alvin-place:1684</pid>
  </objectFields>
  </resultList>
</result>
```


Reading Place Metadata
======================

**URL:**

    http://alvin-cora-fedora:8088/fedora/objects/alvin-place:22/datastreams/METADATA/content

**Result:**

```xml
<place id="1">
  <pid>alvin-place:22</pid>
  <dsId>METADATA</dsId>
  <recordInfo id="2">
    <externalDs>false</externalDs>
    <lastAction>UPDATED</lastAction>
    <created id="3">
      <date id="4">2014-12-18 20:20:38.346 UTC</date>
      <dateInStorage id="5">2014-12-18 20:20:39.815 UTC</dateInStorage>
      <user class="seamUser" id="6">
        <lastUpdated class="sql-timestamp" id="7">2014-04-17 08:12:52.806</lastUpdated>
        <id>1</id>
        <userId>test</userId>
        <domain>uu</domain>
        <firstName>Test</firstName>
        <lastName>Testsson</lastName>
        <email>test.testsson@ub.uu.se</email>
      </user>
      <note>Place created through web gui</note>
      <type>CREATED</type>
    </created>
    <updated id="8">
      <userAction reference="3"/>
      <userAction id="9">
        <date id="10">2014-12-18 20:21:20.880 UTC</date>
        <user class="seamUser" id="11">
          <lastUpdated class="sql-timestamp" id="12">2014-04-17 08:12:52.806</lastUpdated>
          <id>1</id>
          <userId>test</userId>
          <domain>uu</domain>
          <firstName>Test</firstName>
          <lastName>Testsson</lastName>
          <email>Stefan.Andersson@ub.uu.se</email>
        </user>
        <note>Place updated through web gui</note>
        <type>UPDATED</type>
      </userAction>
    </updated>
  </recordInfo>
  <country class="country">
    <lastUpdated class="sql-timestamp" id="14">2014-04-17 08:12:48.8</lastUpdated>
    <defaultName>Sverige</defaultName>
    <localisedNames id="15">
      <entry>
        <string>en</string>
        <string>Sweden</string>
      </entry>
    </localisedNames>
    <alpha2Code>SE</alpha2Code>
    <alpha3Code>SWE</alpha3Code>
    <numericalCode>752</numericalCode>
    <marcCode>sw</marcCode>
  </country>
  <regions id="16"/>
  <defaultPlaceName id="17">
    <deleted>false</deleted>
    <name>Linköping</name>
  </defaultPlaceName>
  <placeNameForms id="18"/>
  <identifiers/>
  <localIdentifiers id="19">
    <localIdentifier>
      <type class="localIdentifierType">
        <lastUpdated class="sql-timestamp">2014-04-17 08:49:50.65</lastUpdated>
        <defaultName>Waller-id</defaultName>
        <localisedNames/>
        <code>waller</code>
        <id>114</id>
        <internal>false</internal>
        <organisationUnitId>2</organisationUnitId>
      </type>
      <text>1367</text>
    </localIdentifier>
  </localIdentifiers>
  <longitude>15.62</longitude>
  <latitude>58.42</latitude>
</place>

```