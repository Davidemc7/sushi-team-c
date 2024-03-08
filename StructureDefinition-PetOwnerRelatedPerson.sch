<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile RelatedPerson
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:RelatedPerson</sch:title>
    <sch:rule context="f:RelatedPerson">
      <sch:assert test="count(f:active) &gt;= 1">active: minimum cardinality of 'active' is 1</sch:assert>
      <sch:assert test="count(f:relationship) &gt;= 1">relationship: minimum cardinality of 'relationship' is 1</sch:assert>
      <sch:assert test="count(f:relationship) &lt;= 1">relationship: maximum cardinality of 'relationship' is 1</sch:assert>
      <sch:assert test="count(f:telecom) &gt;= 1">telecom: minimum cardinality of 'telecom' is 1</sch:assert>
      <sch:assert test="count(f:telecom) &lt;= 1">telecom: maximum cardinality of 'telecom' is 1</sch:assert>
      <sch:assert test="count(f:gender) &lt;= 0">gender: maximum cardinality of 'gender' is 0</sch:assert>
      <sch:assert test="count(f:birthDate) &lt;= 0">birthDate: maximum cardinality of 'birthDate' is 0</sch:assert>
      <sch:assert test="count(f:photo) &lt;= 0">photo: maximum cardinality of 'photo' is 0</sch:assert>
      <sch:assert test="count(f:period) &lt;= 0">period: maximum cardinality of 'period' is 0</sch:assert>
      <sch:assert test="count(f:communication) &lt;= 0">communication: maximum cardinality of 'communication' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:RelatedPerson/f:identifier</sch:title>
    <sch:rule context="f:RelatedPerson/f:identifier">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:use) &gt;= 1">use: minimum cardinality of 'use' is 1</sch:assert>
      <sch:assert test="count(f:use) &lt;= 1">use: maximum cardinality of 'use' is 1</sch:assert>
      <sch:assert test="count(f:type) &lt;= 1">type: maximum cardinality of 'type' is 1</sch:assert>
      <sch:assert test="count(f:system) &lt;= 1">system: maximum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:value) &gt;= 1">value: minimum cardinality of 'value' is 1</sch:assert>
      <sch:assert test="count(f:value) &lt;= 1">value: maximum cardinality of 'value' is 1</sch:assert>
      <sch:assert test="count(f:period) &lt;= 0">period: maximum cardinality of 'period' is 0</sch:assert>
      <sch:assert test="count(f:assigner) &lt;= 0">assigner: maximum cardinality of 'assigner' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:RelatedPerson/f:identifier/f:type</sch:title>
    <sch:rule context="f:RelatedPerson/f:identifier/f:type">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:RelatedPerson/f:identifier/f:type/f:coding</sch:title>
    <sch:rule context="f:RelatedPerson/f:identifier/f:type/f:coding">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:system) &gt;= 1">system: minimum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:system) &lt;= 1">system: maximum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:version) &lt;= 0">version: maximum cardinality of 'version' is 0</sch:assert>
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:display) &gt;= 1">display: minimum cardinality of 'display' is 1</sch:assert>
      <sch:assert test="count(f:display) &lt;= 1">display: maximum cardinality of 'display' is 1</sch:assert>
      <sch:assert test="count(f:userSelected) &lt;= 0">userSelected: maximum cardinality of 'userSelected' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:RelatedPerson/f:relationship</sch:title>
    <sch:rule context="f:RelatedPerson/f:relationship">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:RelatedPerson/f:relationship/f:coding</sch:title>
    <sch:rule context="f:RelatedPerson/f:relationship/f:coding">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:system) &gt;= 1">system: minimum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:system) &lt;= 1">system: maximum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:version) &lt;= 0">version: maximum cardinality of 'version' is 0</sch:assert>
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:display) &gt;= 1">display: minimum cardinality of 'display' is 1</sch:assert>
      <sch:assert test="count(f:display) &lt;= 1">display: maximum cardinality of 'display' is 1</sch:assert>
      <sch:assert test="count(f:userSelected) &lt;= 0">userSelected: maximum cardinality of 'userSelected' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:RelatedPerson/f:telecom</sch:title>
    <sch:rule context="f:RelatedPerson/f:telecom">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:system) &gt;= 1">system: minimum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:system) &lt;= 1">system: maximum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:value) &gt;= 1">value: minimum cardinality of 'value' is 1</sch:assert>
      <sch:assert test="count(f:value) &lt;= 1">value: maximum cardinality of 'value' is 1</sch:assert>
      <sch:assert test="count(f:use) &lt;= 1">use: maximum cardinality of 'use' is 1</sch:assert>
      <sch:assert test="count(f:rank) &lt;= 0">rank: maximum cardinality of 'rank' is 0</sch:assert>
      <sch:assert test="count(f:period) &lt;= 0">period: maximum cardinality of 'period' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:RelatedPerson/f:address</sch:title>
    <sch:rule context="f:RelatedPerson/f:address">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:use) &gt;= 1">use: minimum cardinality of 'use' is 1</sch:assert>
      <sch:assert test="count(f:use) &lt;= 1">use: maximum cardinality of 'use' is 1</sch:assert>
      <sch:assert test="count(f:type) &lt;= 0">type: maximum cardinality of 'type' is 0</sch:assert>
      <sch:assert test="count(f:text) &gt;= 1">text: minimum cardinality of 'text' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
      <sch:assert test="count(f:line) &lt;= 0">line: maximum cardinality of 'line' is 0</sch:assert>
      <sch:assert test="count(f:city) &gt;= 1">city: minimum cardinality of 'city' is 1</sch:assert>
      <sch:assert test="count(f:city) &lt;= 1">city: maximum cardinality of 'city' is 1</sch:assert>
      <sch:assert test="count(f:district) &lt;= 0">district: maximum cardinality of 'district' is 0</sch:assert>
      <sch:assert test="count(f:state) &gt;= 1">state: minimum cardinality of 'state' is 1</sch:assert>
      <sch:assert test="count(f:state) &lt;= 1">state: maximum cardinality of 'state' is 1</sch:assert>
      <sch:assert test="count(f:postalCode) &gt;= 1">postalCode: minimum cardinality of 'postalCode' is 1</sch:assert>
      <sch:assert test="count(f:postalCode) &lt;= 1">postalCode: maximum cardinality of 'postalCode' is 1</sch:assert>
      <sch:assert test="count(f:country) &gt;= 1">country: minimum cardinality of 'country' is 1</sch:assert>
      <sch:assert test="count(f:country) &lt;= 1">country: maximum cardinality of 'country' is 1</sch:assert>
      <sch:assert test="count(f:period) &lt;= 0">period: maximum cardinality of 'period' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
